<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Season extends Model
{
  protected $guarded = array('id');
  //
  public static $rules = array(
    'name' => 'required',
  );

  public function recipes() {
    return $this->hasMany('App\Recipe');
  }

  public function materials() {
    return $this->hasMany('App\Recipe');
  }
}
?>
