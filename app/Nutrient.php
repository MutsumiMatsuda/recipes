<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Nutrient extends Model
{
  public function nutrientMaterials() {
    return $this->hasMany('App\NutrientMaterial');
  }

  public function materials() {
    return $this->hasManyThrough('App\Material', 'App\NutrientMaterial', 'nutrient_id', 'id', null, 'material_id');
  }

  public function recipes() {
    $materials = $this->materials;
    //return $materials;
    $result = [];
    foreach($materials as $material) {
      $recipes = $material->recipes;
      if (count($recipes)) {
        if (count($result)) {
          //echo count($nutrients) . "\n";
          foreach($recipes->toArray() as $recipe) {
            $add = true;
            foreach($result as $item) {
              if ($item['id'] == $recipe['id']) {
                $add = false;
                break;
              }
            }
            if ($add) {
              $result[] = $recipe;
            }
          }
        } else {
          $result = $recipes->toArray();
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
