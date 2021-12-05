<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\MaterialCategory;
use App\Material;
use App\Nutrient;
use App\NutrientMaterial;
use App\Mainsub;
use App\Recipe;
use App\RecipeMaterial;
use Auth;
use Storage;
use Illuminate\Support\Facades\Validator;

/**
* 調理法コントローラー
*/
class MainsubController extends Controller {

  /**
  * 調理法一覧表示アクション
  */
  public function index(Request $request) {
    $q = $request->q;
    if ($q != null) {
      $items = Mainsub::where('name', 'like', '%' . $q . '%')->get();
    } else {
      $items = Mainsub::all();
    }
    return view('mainsub.index', compact('q', 'items'));
  }

  /**
  * 調理法新規登録画面表示アクション
  */
  public function show(Request $request) {
    $mainsub = Mainsub::find($request->id);
    if ($mainsub == null) {
      abort(404);
    }
    return view('mainsub.show', compact('mainsub'));
  }
}
