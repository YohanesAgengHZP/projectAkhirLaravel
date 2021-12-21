<?php

use App\Http\Controllers\DashboardPostController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;




/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//halaman home
Route::get('/', [PostController::class, 'home']);
//halaman about
Route::get('/about', [PostController::class, 'about']);
//halaman all post
Route::get('/blog', [PostController::class, 'index']);
//halaman single post
Route::get('post/{post:slug}', [PostController::class, 'showDetails']);

Route::get('/categories', [PostController::class, 'listkategori']);

//Mengarah ke Categories
Route::get('/categories/{category:slug}', [PostController::class, 'category']);

//mengarah ke user
Route::get('/authors/{author:username}', [PostController::class, 'author']);

Route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class, 'authenticate']);

Route::post('/logout', [LoginController::class, 'logout']);

Route::get('/register', [RegisterController::class, 'index'])->middleware('guest');
Route::post('/register', [RegisterController::class, 'store']);

Route::get('/dashboard', function(){
    return view('dashboard.index');
})->middleware('auth');



Route::resource('/dashboard/posts', DashboardPostController::class)->middleware('auth');