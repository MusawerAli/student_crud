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
Route::get('sayhello','Hellocontroller@index')->middleware('test');
Route::get('/', function () {
    // return view('welcome');
    echo url('admin',['43']);
});
Route::get('getData/{value}/{da?}','Getdatacontroller@index')->where([
    'value' => "[0-9]+"
]);
Route::get('middata',function(){
    return view('main');
});
Route::get('index','hellocontroller@index');
Route::get('form',function(){
    return view('form');
});
Route::post('/formData','form@formData')->name('formSubmit');

Route::resource('students','StudentController');
Route::get('datatable','dataTable@index')->name('datatable');
Route::get('getdata','dataTable@getdata')->name('da.getdata');

