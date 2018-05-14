<?php

namespace App\Http\Controllers;

use App\Article;
use App\Product;
use App\Repositories\ArticlesRepository;
use App\Repositories\ProductsRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;
use App\Repositories\Repository;
use Illuminate\Support\Facades\DB;

class IndexController extends SiteController
{
    public function __construct(ProductsRepository $product_repository, ArticlesRepository $articles_repository)
    {
        parent::__construct();
        $this->product_repository = $product_repository;
        $this->articles_repository = $articles_repository;
        $this->template = env('THEME') . '.index';
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $products = $this->getProductsFirst();
        $productsFeatured = $this->getProductsFeatured();
        $articleSlider = $this->getSliders();

        $slider = view(env('THEME') . '.slider')->with(array(
            'articleSlider'=>$articleSlider,
        ))->render();
        $this->vars = array_add($this->vars, 'slider', $slider);

        $content = view(env('THEME') . '.releasedHome')->with(array(
            'products'=>$products,
            'productsFeatured'=>$productsFeatured
        ))->render();
        $this->vars = array_add($this->vars, 'content', $content);


        return $this->renderOutput();
    }

//first 3 products in main page
    public function getProductsFirst()
    {
        $products = Product::where('featured',true)->take(6)->get();
        return $products;
    }
    public function getProductsFeatured()
    {
        $featured = Product::where('featured',true)->skip(6)->take(4)->get();
        return $featured;
    }
    public function getSliders()
    {
        $article = DB::table('articles')->take(3)->get();
        return $article;
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
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
    public function destroy($id)
    {
        //
    }
}
