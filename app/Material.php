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

    // MenunModelに関連付けを行う
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
}

?>
