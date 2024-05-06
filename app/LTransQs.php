<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LTransQs extends Model
{
  protected $guarded = array('id');

  public static $rules = array(
      'q' => 'required',
      'a' => 'required',
  );
  
  public static $ansRules = array(
      'a' => 'required',
  );
      // 以下を追記
  // MenunModelに関連付けを行う
//   public function recipes() {
//       return $this->hasMany('App\Recipe', 'howto_id');

//   }
}
