<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
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
Route::post('admin/login',[LoginController::class, 'adminLogin']);
Route::group( ['middleware' => ['auth:admin-api','scopes:admin'] ],function(){
   // authenticated staff routes here 
    Route::resource('user', UserController::class);
    Route::post('admin/logout',[LoginController::class, 'adminLogout']);

});

//user Routes
Route::post('user/login',[LoginController::class, 'userLogin']);
Route::group( ['middleware' => ['auth:user-api','scopes:admin,user'] ],function(){

   // authenticated staff routes here 
    Route::resource('blogger', BlogController::class);
    Route::post('user/logout',[LoginController::class, 'userLogout']);

  
});  

//blogger Routes
Route::post('blogger/login',[LoginController::class, 'bloggerLogin']);
Route::group( ['middleware' => ['auth:blogger-api','scopes:blogger'] ],function(){
   // authenticated staff routes here 
    Route::post('blog/store',[BlogController::class, 'blogStore']);
    Route::post('blogger/logout',[LoginController::class, 'userLogout']);

});  