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
  Route::get('category/delete', 'User\CategoryController@delete');

  Route::get('howto', 'User\HowtoController@index')->name('howto');
  Route::get('howto/create', 'User\HowtoController@add');
  Route::post('howto/create', 'User\HowtoController@create');
  Route::get('howto/edit', 'User\HowtoController@edit');
  Route::post('howto/edit', 'User\HowtoController@update');
  Route::get('howto/delete', 'User\HowtoController@delete');

  Route::get('country', 'User\CountryController@index')->name('country');
  Route::get('country/create', 'User\CountryController@add');
  Route::post('country/create', 'User\CountryController@create');
  Route::get('country/edit', 'User\CountryController@edit');
  Route::post('country/edit', 'User\CountryController@update');
  Route::get('country/delete', 'User\CountryController@delete');

  Route::get('mainsub', 'User\MainsubController@index')->name('mainsub');
  Route::get('mainsub/create', 'User\MainsubController@add');
  Route::post('mainsub/create', 'User\MainsubController@create');
  Route::get('mainsub/edit', 'User\MainsubController@edit');
  Route::post('mainsub/edit', 'User\MainsubController@update');
  Route::get('mainsub/delete', 'User\MainsubController@delete');

  Route::get('season', 'User\SeasonController@index')->name('season');
  Route::get('season/create', 'User\SeasonController@add');
  Route::post('season/create', 'User\SeasonController@create');
  Route::get('season/edit', 'User\SeasonController@edit');
  Route::post('season/edit', 'User\SeasonController@update');
  Route::get('season/delete', 'User\SeasonController@delete');

  Route::get('tag', 'User\TagController@index')->name('tag');
  Route::get('tag/create', 'User\TagController@add');
  Route::post('tag/create', 'User\TagController@create');
  Route::get('tag/edit', 'User\TagController@edit');
  Route::post('tag/edit', 'User\TagController@update');
  Route::get('tag/delete', 'User\TagController@delete');
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
Route::get('country', 'CountryController@index')->name('p_country');
Route::get('country/show', 'CountryController@show');
Route::get('mainsub', 'MainsubController@index')->name('p_mainsub');
Route::get('mainsub/show', 'MainsubController@show');
Route::get('season', 'SeasonController@index')->name('p_season');
Route::get('season/show', 'SeasonController@show');
Route::get('tag', 'TagController@index')->name('p_tag');
Route::get('tag/show', 'TagController@show');

Route::get('/', 'RecipeController@index')->name('toppage');

Route::get('/phpinfo', function () {
    return view('phpinfo');
});

Route::get('test', 'TopPageController@test')->name('qtop');

Route::get('learner', 'Learners\PagesController@qTop');
Route::get('learner/detail', 'Learners\PagesController@qDetail');
Route::post('learner/check', 'Learners\PagesController@qCheck');
Route::get('learner/add', 'Learners\PagesController@add');
Route::post('learner/add', 'Learners\PagesController@create');
Route::get('learner/edit', 'Learners\PagesController@edit');
Route::post('learner/update', 'Learners\PagesController@update');

Route::get('learner/sakura', 'Learners\PagesController@sakura')->name('sakura');
Route::post('learner/sakura', 'Learners\PagesController@checkAnswer');
Route::get('learner/stars', 'Learners\PagesController@stars')->name('stars');
Route::get('learner/momiji', 'Learners\PagesController@momiji')->name('momiji');
Route::get('learner/confetti', 'Learners\PagesController@confetti')->name('confetti');
Route::get('learner/starwars', 'Learners\PagesController@starwars')->name('starwars');
