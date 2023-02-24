<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Seeder;

class CategoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Category::create([
            'name' => 'web development'
        ]);
        Category::create([
            'name' => 'web design'
        ]);
        Category::create([
            'name' => 'UI design'
        ]);
    }
}
