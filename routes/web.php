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
    return view('welcome');
});

Auth::routes();

Route::post('store',array('as'=>'store','uses'=>'ArboresenceController@store'));
Route::get('arboresence',array('as'=>'arboresence','uses'=>'ArboresenceController@index'));