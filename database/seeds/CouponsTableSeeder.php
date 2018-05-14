<?php

use Illuminate\Database\Seeder;
use App\Coupon;

class CouponsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Coupon::create([
        'code' => 'min',
        'type' => 'fixed',
        'value' => 30,
    ]);
        Coupon::create([
            'code' => 'max',
            'type' => 'parcent',
            'parcent_off' => 50,
        ]);
    }
}
