<?php

namespace App\Repositories;

use App\Product;

class ProductsRepository extends Repository
{
    public function __construct(Product $product, Product $productsSecond)

    {
        $this->model = $product;
    }

}

