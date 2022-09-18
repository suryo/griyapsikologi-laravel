<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\PermissionController;
use App\Http\Controllers\ProductController;


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


Auth::routes();

Route::get('/', [App\Http\Controllers\HomeController::class, 'root']);

// Route::get('{any}', [App\Http\Controllers\HomeController::class, 'index']);
// //Language Translation

Route::get('index/{locale}', [App\Http\Controllers\HomeController::class, 'lang']);

Route::post('/formsubmit', [App\Http\Controllers\HomeController::class, 'FormSubmit'])->name('FormSubmit');

// Route::get('/product', [App\Http\Controllers\ProductController::class, 'index']);
// Route::get('/product/create', [App\Http\Controllers\ProductController::class, 'create']);

Route::resource('/product', App\Http\Controllers\ProductController::class);
// Route::post('/product', [App\Http\Controllers\ProductController::class, 'store']);

// Route::get('/product/create', [App\Http\Controllers\ProductController::class, 'create']);

Route::get('/home', [HomeController::class, 'index'])->name('home');

Route::group(['middleware' => ['auth']], function () {
    Route::resource('roles', RoleController::class);
    Route::resource('users', UserController::class);
    Route::resource('permissions', PermissionController::class);
    Route::resource('products', ProductController::class);
});