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


class PagesController extends Controller
{
  public function index(Request $request){
    $keyword = $request->keyword;
    $keywords = array();
    $recipes = array();
    $recipe_categories = array();
    $difficulties = array();
    $feelings = array();
    $how_tos = array();
    $materials = array();
    $menus = array();
    $nutrients = array();
    $nutrient_materials = array();
    $tastes = array();
    return view('toppage', compact('keywords','keyword','recipes','recipe_categories', 'difficulties', 'feelings', 'how_tos', 'materials', 'menus', 'nutrients', 'nutrient_materials','tastes'));
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
