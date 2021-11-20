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



Route::group(['prefix' => 'user', 'middleware' => 'auth'], function() {
    Route::get('recipe/create', 'User\RecipeController@add')->name('addrecipe');
    Route::post('recipe/create', 'User\RecipeController@create');
    Route::get('recipe/edit', 'User\RecipeController@edit');
    Route::post('recipe/edit', 'User\RecipeController@update');
    Route::get('recipe/delete', 'User\RecipeController@delete');
    Route::get('recipe', 'User\RecipeController@index')->name('recipe');

    Route::get('menu/create', 'User\MenuController@add');
    Route::post('menu/create', 'User\MenuController@create');
    Route::get('menu/edit', 'User\MenuController@edit'); // 追記
    Route::post('menu/edit', 'User\MenuController@update'); // 追記
    Route::get('menu/delete', 'User\MenuController@delete');
    Route::get('menu','User\MenuController@index')->name('menu');

    Route::get('nutrient', 'User\NutrientController@index')->name('nutrient');
    Route::get('nutrient/create', 'User\NutrientController@add');
    Route::post('nutrient/create', 'User\NutrientController@create');
    Route::get('nutrient/edit', 'User\NutrientController@edit');
    Route::post('nutrient/edit', 'User\NutrientController@update');

    Route::get('material', 'User\MaterialController@index')->name('material');
    Route::get('material/create', 'User\MaterialController@add');
    Route::post('material/create', 'User\MaterialController@create');
    Route::get('material/edit', 'User\MaterialController@edit');
    Route::post('material/edit', 'User\MaterialController@update');

    Route::get('category', 'User\CategoryController@index')->name('category');
    Route::get('category/create', 'User\CategoryController@add');
    Route::post('category/create', 'User\CategoryController@create');
    Route::get('category/edit', 'User\CategoryController@edit');
    Route::post('category/edit', 'User\CategoryController@update');

    Route::get('howto', 'User\HowtoController@index')->name('howto');
    Route::get('howto/create', 'User\HowtoController@add');
    Route::post('howto/create', 'User\HowtoController@create');
    Route::get('howto/edit', 'User\HowtoController@edit');
    Route::post('howto/edit', 'User\HowtoController@update');
    //Route::post('profile/create','Admin\ProfileController@create')->middleware('auth');
    //Route::post('profile','Admin\ProfileController@update')->middleware('auth');
    //Route::get('profile/edit','Admin\ProfileController@edit')->middleware('auth');
    //Route::get('profile','Admin\ProfileController@index')->middleware('auth');
    //Route::get('profile/delete','Admin\ProfileController@delete')->middleware('auth');
    //Route::get('profile', 'Admin\ProfileController@index')->middleware('auth'); // 追記
});

Auth::routes();

Route::get('recipe', 'RecipeController@index')->name('p_recipe');
Route::get('recipe/show', 'RecipeController@show');
Route::get('menu', 'MenuController@index')->name('p_menu');
Route::get('menu/show', 'MenuController@show');
Route::get('material', 'MaterialController@index')->name('p_material');
Route::get('material/show', 'MaterialController@show');
Route::get('nutrient', 'NutrientController@index')->name('p_nutrient');
Route::get('nutrient/show', 'NutrientController@show');
Route::get('howto', 'HowtoController@index')->name('p_howto');
Route::get('howto/show', 'HowtoController@show');
Route::get('category', 'CategoryController@index')->name('p_category');
Route::get('category/show', 'CategoryController@show');

Route::get('/', 'TopPageController@index')->name('toppage');
Route::post('/next', 'NextController@index');
