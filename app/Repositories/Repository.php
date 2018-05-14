<?php

namespace App\Repositories;

use Illuminate\Support\Facades\Config;

abstract class Repository
{
    protected $model = FALSE;

    public function get($select = '*',$take,$pagination = false)
    {
        $builder = $this->model->select($select);
        if($take){
            $builder->take($take);
        }
        if($pagination){
            $builder->paginate(Config::get('settings.paginate_articles'));
        }
        $builder = $this->model->select($select);

        return $builder->get();
    }

}