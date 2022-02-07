<?php

namespace App\Http\Controllers\User;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\MaterialCategory;
use App\Material;
use App\Nutrient;
use App\NutrientMaterial;
use App\Season;
use App\Recipe;
use App\RecipeMaterial;
use Auth;
use Storage;
use Illuminate\Support\Facades\Validator;

/**
* 調理法コントローラー
*/
class SeasonController extends Controller {

  /**
  * 調理法一覧表示アクション
  */
  public function index(Request $request) {
    $q = $request->q;
    if ($q != null) {
      $items = Season::where('name', 'like', '%' . $q . '%')->get();
    } else {
      $items = Season::all();
    }
    return view('user.season.index', compact('q', 'items'));
  }

  /**
  * 調理法新規登録画面表示アクション
  */
  public function add(Request $request) {
    //dd($request->all());
    return view('user.season.create');
  }

  /**
  * 調理法新規登録アクション
  */
  public function create(Request $request) {
    // バリデーションを行う
    $validator = Validator::make($request->all(), Season::$rules);
    if ($validator->fails()) {
      return redirect('user/season/create')->withErrors($validator)->withInput();
    }

    $data = new Season;
    $form = $request->all();

    unset($form['submit']);
    unset($form['_token']);

    $data->fill($form);
    if (!$data->save()) {
      $validator->errors()->add('fatal', '調理法の追加に失敗しました');
      return redirect('user/season/create')->withErrors($validator)->withInput();
    }

    return redirect('user/season');
  }

  /**
  * 調理法編集画面表示アクション
  */
  public function edit(Request $request) {
    $season = Season::find($request->id);
    if ($season == null) {
      abort(404);
    }
    return view('user.season.edit', compact('season'));
  }

  /**
  * 調理法更新アクション
  */
  public function update(Request $request) {
    // バリデーション
    $validator = Validator::make($request->all(), Season::$rules);
    if ($validator->fails()) {
      return redirect('user/season/edit?id=' . $request->id)->withErrors($validator)->withInput();
    }

    $data = Season::find($request->id);
    $form = $request->all();

    unset($form['submit']);
    unset($form['_token']);

    $data->fill($form);
    if (!$data->save()) {
      $validator->errors()->add('fatal', '旬の更新に失敗しました');
      return redirect('user/season/edit?id=' . $request->id)->withErrors($validator)->withInput();
    }

    return redirect('user/season');
  }

    /**
    * 調理法削除アクション
    */
    public function delete(Request $request) {

      $data = Season::find($request->id);

      // 該当レシピの値をリセット
      foreach($data->recipes as $recipe) {
        $recipe->season_id = 0;
        $recipe->save();
      }

      // データを削除
      $data->delete();

      // 一覧へ戻る
      return redirect('user/season');
    }
}
