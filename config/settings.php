<?php

return [
    'count_products_main_page' => 4,
    'pagination' => 6,
    'paginate_articles' =>6,
    'Low-to-High' => 'Low to High',
    'High-to-Low' => 'High to Low',
    'Furniture' => 'Furniture',
];
function setActiveCategory($category, $output = 'active')
{
    return request()->category == $category ? $output : '';
}

function thumbnail($image_path, $size = '')
{
    $path = pathinfo($image_path);
    if(!empty($size))
    {
        $size = '-' . $size;
    }


    return $dirname = $path['dirname']. '/'
        . $path['filename']
        . $size . '.'
        . $file_ext = isset($path['extension']) ? $path['extension'] : null;
}
function productImage()
{
    return  asset(env('THEME')).'/images/not-found.jpg';
}
function replaceParagraph($paragraph,$number)
{
    return  str_replace_first('<p>','',str_limit($paragraph,$number));
}

