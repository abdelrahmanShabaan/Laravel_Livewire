<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\Post\PostController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Livewire\Posts;

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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');

Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');
Route::get('/home', [HomeController::class, 'index'])->name('home');


Route::resource('/posts', PostController::class ); 

Route::get('/poster', [PostController::class , 'index'] )->name('postsView'); 

Route::get('/livewire/posts' , [PostController::class , 'index_livewaire']);


Route::get('/livewire/posts/create'  , [Posts::class ,'create_post']);
