<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;
use GuzzleHttp\Promise\Create;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::factory(5)->create();
         

        Category::create([
            'name' => 'LARAVEL',
            'slug' => 'laravel'
        ]);

        Category::create([
            'name' => 'School',
            'slug' => 'school'
        ]);

        Category::create([
            'name' => 'University',
            'slug' => 'university'
        ]);

        Post::factory(10)->create();

    }
}
