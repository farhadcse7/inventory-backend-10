<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $categoryList = [
            'Electronics',
            'Gorcery',
            'Cosmatics',
            'Stationary',
            'Clearing Goods',
            'Cloths'
        ];

        foreach ($categoryList as $category) {
            Category::create([
               "name" => $category,
                "slug"  => Str::slug($category),
            ]);
        }
    }
}
