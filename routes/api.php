<?php

use App\Servicio;
use App\User;
use App\UserCustom;
use Illuminate\Http\Request;

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

Route::get('/servicios/exportar', 'ServiciosController@exportar');
Route::get('/servicios/exportar/general', 'ServiciosController@exportarGeneral');
Route::get('/servicios/exportar/tienda', 'ServiciosController@exportarTienda');

Route::get('/servicios/exportarChoferes', 'ServiciosController@exportarChoferes');

Route::get('/servicios/reporte/tienda', 'ServiciosController@reporteTienda');


Route::get('/servicios/reporte/todos', 'ServiciosController@enviarReportes');
