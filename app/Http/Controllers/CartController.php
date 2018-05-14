<?php

namespace App\Http\Controllers;

use App\Product;
use Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class CartController extends SiteController
{
    public function __construct()
    {
        parent::__construct();
        $this->template = env('THEME') . '.cart';
    }

    public function index()
    {
        $products = Product::all();
        $content = view(env('THEME') . '.cartPage')->with(array(
            'products' => $products
        ))->render();
        $this->vars = array_add($this->vars, 'content', $content);
        return $this->renderOutput();
    }

    public function store(Request $request)
    {

        $duplicates = Cart::search(function ($cartItem, $rowId) use ($request) {
            return $cartItem->id === $request->id;
        });
        if ($duplicates->isNotEmpty()) {
            return redirect()->route('cart.index')->with('success_message', 'Item is already in your cart');
        }
        Cart::add($request->id, $request->name, 1, $request->price)->associate('App\Product');
        return redirect()->route('cart.index')->with('success_message', 'Item was added to your cart');
    }

    public function destroy($id)
    {
        Cart::remove($id);
        return back()->with('success_message', 'item has been removed');

    }

    public function switchToSaveForLater($id)
    {
        $item = Cart::get($id);

        Cart::remove($id);

        $duplicates = Cart::instance('saveForLater')->search(function ($cartItem, $rowId) use ($id) {
            return $rowId === $id;
        });

        if ($duplicates->isNotEmpty()) {
            return redirect()->route('cart.index')->with('success_message', 'Item is already Saved For Later!');
        }

        Cart::instance('saveForLater')->add($item->id, $item->name, 1, $item->price)
            ->associate('App\Product');

        return redirect()->route('cart.index')->with('success_message', 'Item has been Saved For Later!');
    }

    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(),[
            'quantity'=> 'required|numeric|between:1,5'
        ]);
        if($validator->fails()){
            session()->flash('errors',collect(['Quantity must been between 1 and 5.']));
            return response()->json(['success'=>false],400);
        }
        Cart::update($id,$request->quantity);
        session()->flash('success_message','Quantity was update successfully');
        return response()->json(['success'=>true]);
    }
}

