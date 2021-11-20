<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\MaterialCategory;
use App\Material;
use App\Nutrient;
use App\NutrientMaterial;
use App\Howto;
use App\Recipe;
use App\RecipeMaterial;
use App\Seasoning;
use Auth;
use Storage;
use Illuminate\Support\Facades\Validator;

/**
* 栄養素コントローラー
*/
class NutrientController extends Controller {

  /**
  * 栄養素一覧表示アクション
  */
  public function index(Request $request) {
    $q = $request->q;
    if ($q != null) {
      $items = Nutrient::where('name', 'like', '%' . $q . '%')->get()->sortBy('name');
    } else {
      $items = Nutrient::all()->sortBy('name');
    }
    return view('nutrient.index', compact('q', 'items'));
  }

  /**
  * 栄養素新規登録画面表示アクション
  */
  public function show(Request $request) {
    $nutrient = Nutrient::find($request->id);
    if ($nutrient == null) {
      abort(404);
    }
    $materialCategories = MaterialCategory::all();
    $jsAry = self::mkJsMatAry($materialCategories);
    return view('nutrient.show', compact('nutrient', 'materialCategories', 'jsAry'));
  }
}
