<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Recipe extends Model
{
  protected $guarded = array('id');

  public static $rules = array(
    'name' => 'required',
    'user_id' => 'required',
    'menu_id' => 'required',
    'body' => 'required',
    'recipe_category_id' => 'required',
    'is_easy' => 'numeric',
    'is_favorite' => 'numeric',
    'is_refresh' => 'numeric',
  );
      // 以下を追記
  // MenunModelに関連付けを行う
  public function seasonings() {
    return $this->hasMany('App\Seasoning');
  }

  public function recipeMaterials() {
    return $this->hasMany('App\RecipeMaterial');
  }

  public function materials() {
    return $this->hasManyThrough('App\Material', 'App\RecipeMaterial', 'recipe_id', 'id', null, 'material_id');
  }

  public function menu() {
    return $this->belongsTo('App\Menu', 'menu_id');
  }

  public function category() {
    return $this->belongsTo('App\RecipeCategory', "recipe_category_id");
  }

  public function howto() {
    return $this->belongsTo('App\Howto', "howto_id");
  }

  public function nutrients() {
    $materials = $this->materials;
    //return $materials;
    $result = null;
    foreach($materials as $material) {
      $nutrients = $material->nutrients;
      if (count($nutrients)) {
        if ($result) {
          //echo count($nutrients) . "\n";
          foreach($nutrients->toArray() as $nutrient) {
            $add = true;
            foreach($result as $item) {
              if ($item['id'] == $nutrient['id']) {
                $add = false;
                break;
              }
            }
            if ($add) {
              $result[] = $nutrient;
            }
          }
        } else {
          $result = $nutrients->toArray();
        }
      }
    }
    if (count($result)) {
      $nameArray = array_column($result, 'name');
      array_multisort($nameArray, SORT_ASC, $result);
    }
    return $result;
  }
}

?>
