<?php

namespace App\Models;

class Post_
{
    static $blog_post =
    [
        [
          "title" => " Judul Post Pertama",
          "slug" => "judul-post-pertama",
          "penulis" => " Yohanes Ageng",
          "isi" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum quae earum rem porro ea doloribus atque soluta vitae assumenda! Commodi minima qui quas, debitis consequatur asperiores corporis labore placeat. Necessitatibus!"
        ],
    
        [
            "title" => " Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "penulis" => " Kartika Ariesta",
            "isi" => "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Mollitia aspernatur voluptates architecto in saepe? Consequatur repellat laudantium debitis omnis soluta, repudiandae obcaecati adipisci. Magnam asperiores eligendi sint placeat, laudantium, harum doloremque accusamus, hic dolor quod consequatur. Fuga deserunt et veritatis iusto similique corporis optio, incidunt dolorum omnis libero aperiam unde culpa! Eaque ex neque ea vel nesciunt fugit iste aspernatur repudiandae quidem dolore officia magni omnis a cumque, nemo obcaecati nobis quaerat. Eaque ullam itaque optio nobis natus nisi consectetur. Enim rerum consequuntur, corporis qui sit itaque quidem nostrum, possimus beatae, in obcaecati sint quia natus sapiente fugiat quis perspiciatis!"
        ]
    ];

    
    public static function all()
    {
        return collect(self::$blog_post);
    }
    
    public static function find($slug)
    {
        $post_baru = static::all();

        return $post_baru->firstWhere('slug', $slug);
    }
}


