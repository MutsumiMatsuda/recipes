<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Material extends Model
{
  protected $guarded = array('id');
  //
  public static $rules = array(
    'name' => 'required',
    'material_category_id' => 'required'
  );

  public function category() {
    return $this->belongsTo('App\MaterialCategory', 'material_category_id');
  }

  public function season() {
    return $this->belongsTo('App\Season', 'season_id');
  }

  public function recipes() {
    return $this->hasManyThrough('App\Recipe', 'App\RecipeMaterial', 'material_id', 'id', null, 'recipe_id');
  }

  // MenunModelに関連付けを行う
  public function nutrients() {
    return $this->hasManyThrough('App\Nutrient', 'App\NutrientMaterial', 'material_id', 'id', null, 'nutrient_id');
  }

  // 案連レシピのidの配列を返す
  public function recipeIds() {
    return $this->recipes->pluck('id')->toArray();
  }
  
  // 指定カテゴリの材料を名前の焦準で取得
  public static function getByCategory($catId) {
    $rs = self::where('material_category_id', $catId)->get();
    $tmp = $ret = [];
    foreach($rs as $r) {
      $tmp[mb_substr($r->name, 0, 1)] = $r;
    }
    //dd($tmp);

    ksort($tmp);
    foreach($tmp as $r) {
      $ret[] = $r;
    }
    return $ret;
  }
}

?>
