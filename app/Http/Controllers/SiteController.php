<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SiteController extends Controller
{
    public function __construct()
    {

    }

    protected $vars = array(); //array in template
    protected $template; //name template
    protected $product_repository;
    protected $bar;
    protected $product_shop_repository;
    protected $contentLeftBar;
    protected $articles_repository;



    public function renderOutput()
    {

        $header = view(env('THEME') . '.header')->render();
        $this->vars = array_add($this->vars, 'header', $header);

        if($this->contentLeftBar){
            $leftBar = view(env('THEME').'.leftBar')->with('content_leftBar',$this->contentLeftBar)->render();
            $this->vars = array_add($this->vars, 'leftBar', $leftBar);
        };

        $this->vars = array_add($this->vars, 'bar', $this->bar);
        $footer = view(env('THEME') . '.footer')->render();
        $this->vars = array_add($this->vars, 'footer', $footer);

        return view($this->template)->with($this->vars);
    }


}
