<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Category;
use App\Models\User;

class PostController extends Controller
{
    public function index()
    {
        return view('posts',[
            "title" => "Semua Posts",
            "active" => 'posts',
            "posts" => Post::latest()->filter()->get() //eager loading laravel
        ]);
    }

    public function home()
    {
        return view('home',[
            "title" => "Home",
            "active" => "Home"
        ]);
    }

    public function about()
    {
        return view('about', [ 
            "title" => "About",        //asosiatif array
            "active" => "About",
            "name" => "Yohanes Ageng",
            "email" => "ageng3000@gmail.com",
            "image" => "profile.jpeg"
        ]);
    }

    public function showDetails(Post $post) //model binding
    {
        return view('post', [
            "title" => "Single Post",
            "active" => 'posts',
            "post" => $post
        ]);
    }

    public function listkategori()
    {
        return view('categories', [
            'title' => 'Post Categories',
            'active' => 'categories',
            'categories' => Category::all()
        ]);
    }

    public function category(Category $category)
    {
        return view('posts', [
            'title' => "Post by Category  : $category->name",
            'active' => 'categories',
            'posts' => $category->posts->load('category', 'author')
            //'category' => $category->name
        ]);
    }

    public function author(User $author)
    {
        return view('posts', [
            'title' => "Post oleh Penulis  : $author->name",
            'active' => 'Posts',
            'posts' => $author->post->load('category', 'author'),
        ]);
    }

    

}
