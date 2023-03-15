<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\CourceController;
use App\Http\Controllers\GroupController;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/login', function () {
    return view('login');
})->name('login');

Route::post('login',[AuthController::class,'login'])->name('loginn');
Route::get('logout',[AuthController::class,'logout'])->name('logout');
Route::group(
    [
        'middleware' => 'auth'
    ], function(){
    Route::get('dashboard',[HomeController::class,'index'])->name('dashboard');

    Route::name('admin.')->prefix('admin')->group( function (){

        Route::controller(CourceController::class)->prefix('cources')->name('cources.')->group(function (){
            Route::get('/', 'index')->name('index');
            Route::post('store', 'store')->name('store');
        });

        Route::controller(GroupController::class)->prefix('groups')->name('groups.')->group(function (){
            Route::get('/', 'index')->name('index');
            Route::post('store', 'store')->name('store');
        });
});
});

