<?php

namespace App\Http\Controllers;

use App\Coupon;
use App\Http\Requests\CheckoutRequest;
use App\Mail\OrderPlaced;
use App\Order;
use App\OrderProduct;
use App\Product;
use App\Repositories\ProductsRepository;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use Gloudemans\Shoppingcart\Facades\Cart;
use Cartalyst\Stripe\Laravel\Facades\Stripe;
use Cartalyst\Stripe\Exception\CardErrorException;
use Illuminate\Http\Request;


class CheckoutController extends SiteController
{

    public function __construct(ProductsRepository $product_shop_repository)
    {
        parent::__construct();

        $this->product_shop_repository = $product_shop_repository;
        $this->template = env('THEME') . '.checkout';
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $content = view(env('THEME') . '.checkoutContent')->with(array(
            'discount' => $this->getNumbers()->get('discount'),
            'newSubtotal' => $this->getNumbers()->get('newSubtotal'),
            'newTotal' => $this->getNumbers()->get('newTotal'),
        ))->render();
        $this->vars = array_add($this->vars, 'content', $content);
        return $this->renderOutput();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(CheckoutRequest $request)
    {
        $contents = Cart::content()->map(function ($item) {
            return $item->model->slug.', Count: '.$item->qty.', Color: '.$item->model->color;
        })->values()->toJson();
        try {
            $charge = Stripe::charges()->create([
                'amount' => $this->getNumbers()->get('newTotal'),
                'currency' => 'USD',
                'source' => $request->stripeToken,
                'description' => 'Order',
                'receipt_email' => $request->email,
                'metadata' => [
                    'contents' => $contents,
                    'quantity' =>Cart::instance('default')->count(),
                    'discount' => collect(session()->get('coupon'))->toJson()

                ],

            ]);

           $order = $this->addToOrdersTables($request,null);
            Mail::send(new OrderPlaced($order));
            Cart::instance('default')->destroy();
            $coupon = Coupon::where('code',session()->get('coupon'))->first();
            if (isset($coupon)){
                DB::delete('delete from coupons  where code = ?', [$coupon->code]);
            }
            session()->forget('coupon');
        return back()->with('success_message', 'Thank you! Your payment has been successfully accepted!');
        } catch (CardErrorException $e) {
            $this->addToOrdersTables($request, $e->getMessage());
            return back()->withErrors('Error! ' . $e->getMessage());
        }
    }

    protected function addToOrdersTables($request, $error)
    {
        // Insert into orders table
        $order = Order::create([
            'user_id' => auth()->user() ? auth()->user()->id : null,
            'billing_email' => $request->email,
            'billing_name' => $request->name,
            'billing_address' => $request->address,
            'billing_city' => $request->city,
            'billing_province' => $request->province,
            'billing_postalcode' => $request->postalcode,
            'billing_phone' => $request->phone,
            'billing_name_on_card' => $request->name_on_card,
            'billing_discount' => $this->getNumbers()->get('discount'),
            'billing_discount_code' => $this->getNumbers()->get('code'),
            'billing_subtotal' => $this->getNumbers()->get('newSubtotal'),
            'billing_tax' => $this->getNumbers()->get('newTax'),
            'billing_total' => $this->getNumbers()->get('newTotal'),
            'error' => $error,
        ]);

        // Insert into order_product table
        foreach (Cart::content() as $item) {
            OrderProduct::create([
                'order_id' => $order->id,
                'product_id' => $item->model->id,
                'quantity' => $item->qty,
            ]);
        }

        return $order;
    }
    private function getNumbers()
    {
        $discount = session()->get('coupon')['discount'] ?? 0;
        $code = session()->get('coupon')['name'] ?? 0;
        $tax = config('cart.tax');
        $newTax = config('cart.tax');
        $newSubtotal =(Cart::subtotal() - $discount);
        $newTotal = $newSubtotal * (1 + $tax);

        return collect([
            'discount' => $discount,
            'newTax' => $newTax,
            'code'=> $code,
            'newSubtotal' => $newSubtotal,
            'newTotal' => $newTotal
        ]);

    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
    }
}
