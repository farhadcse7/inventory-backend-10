<?php

namespace Database\Seeders;

use App\Models\Brand;
use Illuminate\Support\Str;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class BrandSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $bradList = collect([
            ['name' => 'Samsung', 'code' => 101],
            ['name' => 'Apple', 'code' => 102],
            ['name' => 'Xiaomi', 'code' => 103],
            ['name' => 'Asus', 'code' => 104],
            ['name' => 'DELL', 'code' => 105],
            ['name' => 'Hp', 'code' => 106],
            ['name' => 'Lenovo', 'code' => 107],
            ['name' => 'Acer', 'code' => 108],
            ['name' => 'Walton', 'code' => 109],
        ]);

        foreach ($bradList as $brand) {
            Brand::create([
                'name' => $brand['name'],
                'slug' => Str::slug($brand['name']),
                'code' => $brand['code'],
            ]);
        }
    }
}
