<?php

namespace App\Repositories;

use App\Article;

class ArticlesRepository extends Repository
{
    public function __construct(Article $articles)

    {
        $this->model = $articles;
    }

}
