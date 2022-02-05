<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RecipeTag extends Model
{
  protected $guarded = array('id');

  public static $rules = array(
    'recipe_id' => 'required',
    'tag_id' => 'required',
    'amount' => 'required',
  );

  public function tag() {
    return $this->belongsTo('App\Tag');
  }

  public function recipe() {
    return $this->belongsTo('App\Recipe');
  }

}

?>
