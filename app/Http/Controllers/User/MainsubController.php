<?php

namespace App\Http\Controllers\User;

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
* 主菜/副菜コントローラー
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
    return view('user.mainsub.index', compact('q', 'items'));
  }

  /**
  * 調理法新規登録画面表示アクション
  */
  public function add(Request $request) {
    //dd($request->all());
    return view('user.mainsub.create');
  }

  /**
  * 調理法新規登録アクション
  */
  public function create(Request $request) {
    // バリデーションを行う
    $validator = Validator::make($request->all(), Mainsub::$rules);
    if ($validator->fails()) {
      return redirect('user/mainsub/create')->withErrors($validator)->withInput();
    }

    $data = new Mainsub;
    $form = $request->all();

    unset($form['submit']);
    unset($form['_token']);

    $data->fill($form);
    if (!$data->save()) {
      $validator->errors()->add('fatal', '調理法の追加に失敗しました');
      return redirect('user/mainsub/create')->withErrors($validator)->withInput();
    }

    return redirect('user/mainsub');
  }

  /**
  * 調理法新規登録画面表示アクション
  */
  public function edit(Request $request) {
    $mainsub = Mainsub::find($request->id);
    if ($mainsub == null) {
      abort(404);
    }
    return view('user.mainsub.edit', compact('mainsub'));
  }

  /**
  * 調理法新規更新アクション
  */
  public function update(Request $request) {
    // バリデーション
    $validator = Validator::make($request->all(), Mainsub::$rules);
    if ($validator->fails()) {
      return redirect('user/mainsub/edit?id=' . $request->id)->withErrors($validator)->withInput();
    }

    $data = Mainsub::find($request->id);
    $form = $request->all();

    unset($form['submit']);
    unset($form['_token']);

    $data->fill($form);
    if (!$data->save()) {
      $validator->errors()->add('fatal', '調理法の更新に失敗しました');
      return redirect('user/mainsub/edit?id=' . $request->id)->withErrors($validator)->withInput();
    }

    return redirect('user/mainsub');
  }
}
