<?php

namespace App\Http\Controllers;

use App\Coupon;
use App\Product;
use App\Repositories\ProductsRepository;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;

class CouponsController extends SiteController
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
        $products = Product::all();
        $content = view(env('THEME') . '.checkoutContent')->with(array(
            'products' => $products
        ))->render();
        $this->vars = array_add($this->vars, 'content', $content);
        return $this->renderOutput();
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $coupon = Coupon::where('code',$request->coupon_code)->first();
        if(!$coupon){
            return redirect()->route('checkout.index')->withErrors('Invalid coupon code');
        }
        session()->put('coupon',[
           'name' => $coupon->code,
            'discount' => $coupon->discount(Cart::subtotal()),
        ]);
        return redirect()->route('checkout.index')->with('success_message','Coupon has been applied');
    }



    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy()
    {
        session()->forget('coupon');
        return redirect()->route('checkout.index')->with('success_message','Coupon has been removed');
    }
}
