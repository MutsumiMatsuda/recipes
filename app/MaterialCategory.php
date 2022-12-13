<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MaterialCategory extends Model
{
  protected $guarded = array('id');
  //
  public static $rules = array(
      'name' => 'required',
  );

  public function materials() {
    return $this->hasMany('App\Material');
  }
  
  public function getSortedMaterials() {
    return Material::getByCategory($this->id);
  }
}
