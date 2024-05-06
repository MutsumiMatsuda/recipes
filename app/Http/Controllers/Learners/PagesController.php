<?php

namespace App\Http\Controllers\Learners;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Recipe;
use App\RecipeCategory;
use App\Difficulty;
use App\Feeling;
use App\Howto;
use App\Material;
use App\Menu;
use App\Nutrient;
use App\NutrientMaterial;
use App\Taste;

use App\Models\SelQOpt;
use App\LTransQs;

use Carbon\Carbon;

class PagesController extends Controller
{
  /**
   * 問題一覧ページ表示
   */
  public function qtop(Request $request) {
    $list = LTransQs::all()->sortBy('a');
    //dd($list);
    return view('learner.trans-index', compact(['list']));
  }
  
  /**
   * 問題詳細ページ表示
   */
   public function qDetail(Request $rq) {
    $q = LTransQs::find($rq->id);
    return view('learner.trans-detail', compact(['q']));
  }
  
  /**
   * 問題の解答チェック
   */
   public function qCheck(Request $rq) {
    $this->validate($rq, LTransQs::$ansRules);
    $q = LTransQs::find($rq->id);
    $result = false;
    if ($q->a == $rq->a) {
      $result = true;
    }
    return view('learner.trans-result', compact(['q', 'result']));
  }
  
  /**
   * 問題新規登録画面表示
   */
  public function add(Request $rq) {
    return view('learner.trans-add');
  }
  
  /**
   * 問題新規登録
   */
   public function create(Request $rq) {
    $this->validate($rq, LTransQs::$rules);
    $q = new LTransQs();
    $q->fill($rq->all());
    $q->save();
    return redirect('learner/');
  }
  
  /**
   * 問題編集ページ表示
   */
   public function edit(Request $rq) {
    $q = LTransQs::find($rq->id);
    return view('learner.trans-edit', compact(['q']));
  }

  /**
   * 問題編集ページ表示
   */
   public function update(Request $rq) {
    $this->validate($rq, LTransQs::$rules);
    $q = LTransQs::find($rq->id);
    $q->fill($rq->all());
    $q->updated_at = Carbon::now();
    //dd($q);
    $q->save();
    return redirect('learner/');
  }


  public function sakura(Request $req) {
    $q = "テルミサルタン";
    $opt = ["1" => "ミカムロ", "2" => "オキシテトラコーン", "3" => "ジルムロ", "4" => "イルアミクス", "5" => "アマルエット"];
    $sel = [];
    foreach($opt as $key => $val) {
      $sel[] = new SelQOpt($key, $val);
    }
    //dd($sel);
    return view('learner.sakura', compact(['q', 'sel']));
  }

  public function checkAnswer(Request $req) {
    $q = "テルミサルタン";
    $opt = ["1" => "ミカムロ", "2" => "オキシテトラコーン", "3" => "ジルムロ", "4" => "イルアミクス", "5" => "アマルエット"];
    $sel = [];
    foreach($opt as $key => $val) {
      $sel[] = new SelQOpt($key, $val);
    }

    return view('learner.sakura', compact(['q', 'sel']));
  }

  public function stars(Request $req) {
    return view('learner.stars');
  }

  public function momiji(Request $req) {
    return view('learner.momiji');
  }

  public function confetti(Request $req) {
    return view('learner.confetti');
  }

  public function starwars(Request $req) {
    //return view('learner.starwars');
    return view('learner.sw');
  }
}
