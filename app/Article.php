<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    protected $table = 'articles';

    protected $fillable = ['title', 'text', 'excerpt', 'slug', 'image', 'keywords', 'meta_desc'];
}
