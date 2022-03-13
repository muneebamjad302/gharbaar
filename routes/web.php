<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\Blog\BlogController;

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

// Route::get('/admin/login', function () {
//     return view('admin.login');
// });
// Route::get('/blogger/login', function () {
//     return view('blogger.login');
// });

Route::get('/blogs/all',[BlogController::class, 'index']);
Route::get('/blog/{id}/detail',[BlogController::class, 'blogDetail']);
