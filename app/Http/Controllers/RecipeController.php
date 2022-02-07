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
use App\Nutrient;
use App\RecipeCountry;
use App\Mainsub;
use App\Season;
use App\Tag;
use Auth;
use Storage;
use DB;
use Utl;
use Illuminate\Support\Facades\Validator;

class RecipeController extends Controller
{
  public function index(Request $request) {
    // 検索
    $query = Recipe::query();
    if ($request->easy) {
      $query = $query->where('is_easy', '1');
    }
    if ($request->favorite) {
      $query = $query->where('is_favorite', '1');
    }
    if ($request->fresh) {
      $query = $query->where('is_refresh', '1');
    }
    if ($request->healthy) {
      $query = $query->where('is_healthy', '1');
    }
    if ($request->caloryoff) {
      $query = $query->where('is_caloryoff', '1');
    }

    // セレクトボックス
    if ($request->menu) {
      //dd($request->menu);
      $query = $query->where('menu_id', $request->menu);
    }
    if ($request->category) {
      $query = $query->where('recipe_category_id', $request->category);
    }
    if ($request->howto) {
      $query = $query->where('howto_id', $request->howto);
    }
    if ($request->country) {
      $query = $query->where('recipe_country_id', $request->country);
    }
    if ($request->mainsub) {
      $query = $query->where('mainsub_id', $request->mainsub);
    }
    if ($request->season) {
      $ids = Season::find($request->season)->recipeIds();
      $query = $query->whereIn('id', $ids);
    }
    if ($request->tag) {
      $ids = Tag::find($request->tag)->recipeIds();
      $query = $query->whereIn('id', $ids);
    }

    // 材料名
    if ($request->mq) {
      $words = array_map('trim', explode(' ', trim($request->mq)));
      //dd($words);
      foreach($words as $word) {
        $qarr = [];
        if (!Utl::isNullOrEmpty($word)) {
          $materials = Material::where('name', 'like', '%' . $word . '%')->
            orWhere('name2', 'like', '%' . $word . '%')->
            orWhere('name3', 'like', '%' . $word . '%')->get();
          foreach($materials as $material) {
            $arr = $material->recipeIds();
            if (count($arr)) {
              $qarr = array_merge($qarr, $arr);
            }
          }
          $query = $query->whereIn('id', $qarr);
        }
      }
    }

    // 栄養素名
    if ($request->nq) {
      $words = array_map('trim', explode(' ', trim($request->nq)));
      //dd($words);
      foreach($words as $word) {
        if (!Utl::isNullOrEmpty($word)) {
          $col = Nutrient::where('name', 'like', '%' . $word . '%')->get();
          foreach($col as $nutrient) {
            $arr = $nutrient->recipeIds();
            //var_dump($material->name);
            //var_dump($arr);
            if (count($arr)) {
              $query = $query->whereIn('id', $arr);
            }
          }
        }
      }
    }

    // レシピ名
    if ($request->rq) {
      $words = array_map('trim', explode(' ', trim($request->rq)));
      //dd($words);
      foreach($words as $word) {
        if (!Utl::isNullOrEmpty($word)) {
          // orWhereを入れるとAnd検索ができなくなる
          $arr = Recipe::where('name', 'like', '%' . $word . '%')->pluck('id')->toArray();
          $arr = array_merge($arr, Recipe::where('body', 'like', '%' . $word . '%')->pluck('id')->toArray());
          $query = $query->whereIn('id', $arr);
        }
      }
    }
    //var_dump($query);
    $recipes = $query->groupBy('id')->get();

    // 画面表示用検索条件の再設定
    $q = $request->all();

    $q['rq'] = !isset($q['rq']) ? '' : $q['rq'];
    $q['mq'] = !isset($q['mq']) ? '' : $q['mq'];
    $q['nq'] = !isset($q['nq']) ? '' : $q['nq'];
    $q['easy'] = isset($q['easy']) && $q['easy'] == true;
    $q['fresh'] = isset($q['fresh'])  && $q['fresh'] == true;
    $q['favorite'] = isset($q['favorite'])  && $q['favorite'] == true;
    $q['healthy'] = isset($q['healthy'])  && $q['healthy'] == true;
    $q['caloryoff'] = isset($q['caloryoff'])  && $q['caloryoff'] == true;
    $q['category'] = !isset($q['category']) ? 0 : $q['category'];
    $q['menu'] = !$request->menu ? 0 : $request->menu;
    $q['howto'] = !$request->howto ? 0 : $request->howto;
    $q['country'] = !$request->country ? 0 : $request->country;
    $q['mainsub'] = !$request->mainsub ? 0 : $request->mainsub;
    $q['season'] = !$request->season ? 0 : $request->season;
    $q['tag'] = !$request->tag ? 0 : $request->tag;

    //dd($q);
    $categories = RecipeCategory::all();
    $menus = Menu::all();
    $howtos = Howto::all();
    $countries = RecipeCountry::all();
    $mainsubs = Mainsub::all();
    $seasons = Season::all();
    $tags = Tag::all();

    return view('recipe.index',
      compact(
        'recipes'
       ,'q'
       ,'categories'
       ,'menus'
       ,'howtos'
       ,'countries'
       ,'mainsubs'
       ,'seasons'
       ,'tags'
     ));
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
