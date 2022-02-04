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
  // 以下を追記
  // MenunModelに関連付けを行う
  public function recipe() {
    return $this->belongsTo('App\Recipe');
  }
}
?>
