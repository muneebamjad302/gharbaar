<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\User\UserController;
use App\Http\Controllers\Blog\BlogController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('dashboard',[LoginController::class, 'dashboard']);


//admin Routes
Route::post('login',[LoginController::class, 'login']);
Route::group( ['middleware' => ['auth:admin-api','scopes:admin'] ],function(){

    Route::resource('user', UserController::class);
    Route::resource('admin/blogger', AdminController::class);
    Route::post('admin/logout',[LoginController::class, 'adminLogout']);

});

//user Routes
Route::group( ['middleware' => ['auth:user-api','scopes:user'] ],function(){

    Route::resource('blogger', BlogController::class);
    Route::post('user/logout',[LoginController::class, 'userLogout']);

  
});  

//blogger Routes
Route::group( ['middleware' => ['auth:blogger-api','scopes:blogger'] ],function(){

    Route::post('blog/store',[BlogController::class, 'blogStore']);
    Route::post('blogger/logout',[LoginController::class, 'bloggerLogout']);

});  