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

Route::get('mailable', function () {
    // $invoice = App\Invoice::find(1);

    return new App\Mail\ReporteGeneral();
});

Route::get('sendEmail', 'ServiciosController@sendEmail');
Route::get('testEmail', 'ServiciosController@sendEmail2');

Route::get('guardarReporte', 'ServiciosController@guardarReporte');

Route::get('relationship', 'ServiciosController@test');
