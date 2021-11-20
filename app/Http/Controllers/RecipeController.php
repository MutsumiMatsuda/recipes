<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\MaterialCategory;
use App\Material;
use App\RecipeCategory;
use App\Menu;
use App\Howto;
use App\Recipe;
use App\RecipeMaterial;
use App\Seasoning;
use Auth;
use Storage;
use Illuminate\Support\Facades\Validator;

class RecipeController extends Controller
{
  public function index(Request $request) {
    $q = $request->q ? $request->q : '';
    $recipes = Recipe::all();

    return view('recipe.index', compact('recipes', 'q'));
  }

  public function show(Request $request)
  {
      // News Modelからデータを取得する
      $recipe = Recipe::find($request->id);
      if (empty($recipe)) {
        abort(404);
      }
      //dd($recipe->materials->toArray());

      $materialCategories = MaterialCategory::all();
      $materials = Material::where('material_category_id', $materialCategories->first()->id)->get();
      $recipeCategories = RecipeCategory::all();
      $menus = Menu::all();
      $howtos = Howto::all();

      $jsAry = self::mkJsMatAry($materialCategories);
      //dd($ary01);

      return view('recipe.show', compact('recipe', 'materialCategories', 'materials', 'recipeCategories', 'menus', 'howtos', 'jsAry'));
  }
}
