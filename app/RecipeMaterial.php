<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RecipeMaterial extends Model
{
  protected $guarded = array('id');

  public static $rules = array(
    'recipe_id' => 'required',
    'material_id' => 'required',
    'amount' => 'required',
  );

  public function material() {
    return $this->belongsTo('App\Material');
  }

  public function recipe() {
    return $this->belongsTo('App\Recipe');
  }

}

?>
