<?php

use Illuminate\Database\Seeder;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('products')->insert([
            'name' => 'Kitchen Oskar Kentucky Alba',
            'slug' => 'Kitchen-1',
            'details' => 'Integer sit amet interdum lorem. In tincidunt, risus in molestie tempus',
            'price' => 30000,
            'description' => 'Aliquam nec tellus odio. Ut quis condimentum lorem. Nullam porttitor magna vitae tincidunt efficitur. Integer pulvinar eros varius egestas molestie. Donec venenatis consequat mauris in dignissim. Morbi faucibus dignissim nibh, iaculis vulputate tortor porta at. Maecenas posuere sit amet est vel vehicula. Suspendisse ac lectus lorem. Cras vel semper risus. Nulla id risus dapibus, euismod neque quis, laoreet ante. Ut a maximus turpis. Nulla mollis dolor erat, vitae consequat lectus consequat sollicitudin. Vivamus in libero sit amet erat pulvinar consectetur id a justo. Donec bibendum dapibus ipsum porta molestie. Phasellus vehicula et orci a viverra.',
            'featured' => false,
            'image' => '',
            'images' => '',

        ]);
    }
}
