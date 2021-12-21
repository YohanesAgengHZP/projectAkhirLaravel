<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;
    //protected $fillable = ['title','penulis','excerpt','isi'];
    protected $guarded = ['id'];
    protected $with = ['category', 'author']; //menyimpan data "with" ke dalam model

    protected function scopeFilter($query)
    {
        if(request('search'))
        {
            return $query->where('title', 'like', '%', request('search') . '%');
        }
    }

    public function category()
    {
        return $this->belongsTo(Category::class); //relasi model Post dengan Kategori
    }

    public function author()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function getRouteKeyName()
    {
        return 'slug';
    }
}
