<?php

namespace App\Http\Controllers;

use App\Product;
use App\Repositories\ProductsRepository;
use Illuminate\Http\Request;

class SearchController extends SiteController
{

    public function __construct(ProductsRepository $product_shop_repository)
    {
        parent::__construct();

        $this->product_shop_repository = $product_shop_repository;
        $this->template = env('THEME') . '.search';
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $request->validate([
            'query'=>'required|min:3'
        ]);
        $query = $request->input('query');
       /*$products= Product::where('name','like',"%$query%")
           ->orWhere('details','like',"%$query%")
           ->orWhere('description','like',"%$query%")->paginate(6);*/
       $products = Product::search($query)->paginate(6);

        $content = view(env('THEME') . '.search-results')->with(array(
            'products' => $products,
        ))->render();
        $this->vars = array_add($this->vars, 'content', $content);

        return $this->renderOutput();
    }

}
