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
use App\RecipeCategory;
use Auth;
use Storage;
use Illuminate\Support\Facades\Validator;

/**
* タイプコントローラー
*/
class CategoryController extends Controller {

  /**
  * タイプ一覧表示アクション
  */
  public function index(Request $request) {
    $q = $request->q;
    if ($q != null) {
      $items = RecipeCategory::where('name', 'like', '%' . $q . '%')->get();
    } else {
      $items = RecipeCategory::all();
    }
    return view('category.index', compact('q', 'items'));
  }

  /**
  * タイプ新規登録画面表示アクション
  */
  public function show(Request $request) {
    $category = RecipeCategory::find($request->id);
    if ($category == null) {
      abort(404);
    }
    return view('category.show', compact('category'));
  }
}
