<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', 'WelcomeController@index');

Route::get('home', 'HomeController@index');

Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);

Route::get(
	'karyawan/datatables',
	['as'=>'karyawan.datatables',
	'uses'=>'KaryawanController@datatables']);

Route::resource('karyawan','KaryawanController');

Route::get(
	'lowonganjabatan/datatables',
	['as'=>'lowonganjabatan.datatables',
	'uses'=>'LowonganJabatanController@datatables']);

Route::resource('lowonganjabatan','LowonganJabatanController');