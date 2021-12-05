<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\MaterialCategory;
use App\Material;
use App\Nutrient;
use App\NutrientMaterial;
use App\RecipeCountry;
use App\Recipe;
use App\RecipeMaterial;
use Auth;
use Storage;
use Illuminate\Support\Facades\Validator;

/**
* 調理法コントローラー
*/
class CountryController extends Controller {

  /**
  * 調理法一覧表示アクション
  */
  public function index(Request $request) {
    $q = $request->q;
    if ($q != null) {
      $items = RecipeCountry::where('name', 'like', '%' . $q . '%')->get();
    } else {
      $items = RecipeCountry::all();
    }
    return view('country.index', compact('q', 'items'));
  }

  /**
  * 調理法新規登録画面表示アクション
  */
  public function show(Request $request) {
    $country = RecipeCountry::find($request->id);
    if ($country == null) {
      abort(404);
    }
    return view('country.show', compact('country'));
  }
}
