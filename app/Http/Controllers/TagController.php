<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\MaterialCategory;
use App\Material;
use App\Nutrient;
use App\NutrientMaterial;
use App\Tag;
use App\Recipe;
use App\RecipeMaterial;
use Auth;
use Storage;
use Illuminate\Support\Facades\Validator;

/**
* 調理法コントローラー
*/
class TagController extends Controller {

  /**
  * 調理法一覧表示アクション
  */
  public function index(Request $request) {
    $q = $request->q;
    if ($q != null) {
      $items = Tag::where('name', 'like', '%' . $q . '%')->get();
    } else {
      $items = Tag::all();
    }
    return view('tag.index', compact('q', 'items'));
  }

  /**
  * 調理法新規登録画面表示アクション
  */
  public function show(Request $request) {
    $tag = Tag::find($request->id);
    if ($tag == null) {
      abort(404);
    }
    return view('tag.show', compact('tag'));
  }
}
