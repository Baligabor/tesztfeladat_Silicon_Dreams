<?php

use App\Http\Controllers\BlogController;
use App\Http\Controllers\PagesController;
use Illuminate\Support\Facades\Route;

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

Route::get('/', [PagesController::class, 'index' ])->name('home');
Route::get('/addtags', [BlogController::class, 'addTags' ])->name('addTags');
Route::get('/blogok/datum/{dir}', [BlogController::class, 'filterOrder' ])->name('filterOrder');
Route::get('/blogok/cimkek', [BlogController::class, 'filterByTags' ])->name('filterByTags');

Route::resource('blogok', BlogController::class);
