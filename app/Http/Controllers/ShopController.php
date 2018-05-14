<?php

namespace App\Http\Controllers;

use App\Category;
use App\Product;
use App\Repositories\ProductsRepository;
use Illuminate\Http\Request;

class ShopController extends SiteController
{

    public function __construct(ProductsRepository $product_shop_repository)
    {
        parent::__construct();

        $this->product_shop_repository = $product_shop_repository;
        $this->template = env('THEME') . '.shop';
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

            $categories = $this->getCategory();
        if (request()->category) {
            $products = Product::with('categories')->whereHas('categories', function ($query) {
                $query->where('slug', request()->category);
            });
            $categoryName = optional($categories->where('slug', request()->category)->first())->name;
        } else {
            $products = Product::where('featured', true);
            $categoryName = 'Categories';
        }
        $this->contentLeftBar = view(env('THEME') . '.category_panel')->with(['products'=>$products,'categories'=>$categories,'categoryName'=>$categoryName])->render();
        if (request()->sort == 'low_high') {
            $products = $products->orderBy('price')->paginate(config('settings.pagination'));
        } elseif (request()->sort == 'high_low') {
            $products = $products->orderBy('price', 'desc')->paginate(config('settings.pagination'));
        } else {
            $products = $products->paginate(config('settings.pagination'));
        }

        $content = view(env('THEME') . '.shopContent')->with(array(
            'products' => $products,
            'categoryName' => $categoryName,
            'categories' => $categories,
        ))->render();
        $this->vars = array_add($this->vars, 'content', $content);

        return $this->renderOutput();
    }

    public function getCategory()
    {
        $category = Category::all();
        return $category;
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
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int $slug
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $categories = $this->getCategory();
        if (request()->category) {
            $products = Product::with('categories')->whereHas('categories', function ($query) {
                $query->where('slug', request()->category);
            });
            $categoryName = optional($categories->where('slug', request()->category)->first())->name;
        } else {
            $products = Product::where('featured', true);
            $categoryName = 'Categories';
        }

        $product = Product::where('slug', $slug)->firstOrFail();
        $mightAlsoLike = Product::where('slug', '!=', $slug)->MightAlsoLike()->get();
        $content = view(env('THEME') . '.productContent')->with(['product'=>$product,'mightAlsoLike'=>$mightAlsoLike])->render();
        $this->vars = array_add($this->vars, 'content', $content);
        $this->contentLeftBar = view(env('THEME') . '.category_panel')->with(['products'=>$products,'categories'=>$categories,'categoryName'=>$categoryName])->render();
        return $this->renderOutput();
    }


    public function search(Request $request)
    {
        $content = view(env('THEME') . '.search-results')->render();
        $this->vars = array_add($this->vars, 'content', $content);

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
        //
    }
}
