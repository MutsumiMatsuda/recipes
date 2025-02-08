<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LearnQuestion extends Model
{
  /*------------------------------
    インスタンスメンバー
  -------------------------------*/
  protected $guarded = array('id');

  /*------------------------------
    スタティックメンバー
  -------------------------------*/
  
  // 種類
  const TRANSLATE = 0;
  const FILLBLANK = 1;
  
  // ヴァリデーションルール
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
