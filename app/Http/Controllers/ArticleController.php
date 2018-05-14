<?php

namespace App\Http\Controllers;

use App\Article;
use App\Repositories\ArticlesRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ArticleController extends SiteController
{

    public function __construct(ArticlesRepository $articles_repository)
    {
        parent::__construct();

        $this->articles_repository = $articles_repository;
        $this->template = env('THEME') . '.article';
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $articles = $this->getArticles();
        $content = view(env('THEME') . '.articleContent')->with(array(
            'articles' => $articles,
        ))->render();
        $this->vars = array_add($this->vars, 'content', $content);

        return $this->renderOutput();
    }

    public function getArticles()
    {

       $articles = DB::table('articles')->paginate(config('settings.paginate_articles'));
       return $articles;

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
        $single = Article::where('slug', $slug)->firstOrFail();

        $content = view(env('THEME') . '.articleSingle')->with([
            'single' => $single,
        ])->render();
        $this->vars = array_add($this->vars, 'content', $content);
        return $this->renderOutput();
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
