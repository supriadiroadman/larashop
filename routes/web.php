<?php

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
    return view('auth.login');
});

Route::get('/coba', function () {
    return view('auth.login');
});

Auth::routes();

// Bila route register diakses maka akan diredirect ke login
Route::match(["GET", "POST"], "/register", function(){
    return redirect("/login");
})->name("register");

Route::get('/home', 'HomeController@index')->name('home');

// Route --resources (CRUD) User
Route::resource("users", "UserController");
