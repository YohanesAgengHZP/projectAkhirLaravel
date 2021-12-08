<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title' => $this->faker->sentence(mt_rand(2,8)),
            'slug' => $this->faker->slug(),
            'penulis' => $this->faker->sentence(mt_rand(2, 20)),
            'excerpt' => $this->faker->paragraph(),
            'isi' => collect($this->faker->paragraph(mt_rand(5, 10)))
                    ->map(fn($p) => "<p>$p</p>")
                    ->implode(''),
            'user_id' => mt_rand(1,5),
            'category_id' => mt_rand(1,2),
        ];
    }
}
