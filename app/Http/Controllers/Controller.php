<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use App\Material;
use Storage;
use Utl;

class Controller extends BaseController
{
  use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

  /**
  * 材料のJavaScript配列を作成する
  */
  protected static function mkJsMatAry($matCatCol) {
      $str = "[\n";
      foreach($matCatCol as $cat) {
        $str .= sprintf("{id:\"%d\", arr:\n", $cat->id);
        $str .= self::mkJsAry(Material::where('material_category_id', $cat->id)->get(), ',');
        $str .= "},\n";
      }
      $str .= "];\n";

      return $str;
  }

  /**
  * JavaScript配列を作成する
  */
  protected static function mkJsAry($col, $lastchr) {
    $str = "  [\n";
    foreach($col as $item) {
      $str .= sprintf("    {val:\"%d\", txt:\"%s\"},\n", $item->id, $item->name);
    }
    $str .= sprintf("  ]%s\n", $lastchr);
    return $str;
  }

  /**
  * 画像ファイルをAWS S3にアップロードする
  *
  * @param  リクエストから取り出した画像オブジェクト
  * @return 一意となる画像ファイル名
  */
  protected static function storeImage($path, $imageObj) {

    $imageName = '';
    if (!Utl::isNullOrEmpty($imageObj)) {
      //$imageName = Storage::disk(env('FILESYSTEM_DRIVER'))->putFile(env('IMAGE_URL_PREFIX'), $imageObj, 'public');
      $imageName = Storage::disk('local')->putFile($path, $imageObj, 'public');
    }
    return $imageName;
  }

  /**
  * ストレージの画像ファイルを削除する
  *
  * @param  削除する画像のファイル名
  * @return void
  */
  protected static function deleteImage($path, $filename) {

    if (!Utl::isNullOrEmpty($filename)) {
      $filePath = $path . '/' . $filename;
      //Storage::disk(env('FILESYSTEM_DRIVER'))->delete($filePath);
      Storage::disk('local')->delete($filePath);
    }
  }

  /**
  * ストレージの画像ファイルを入れ替える
  *
  * @param  リクエストから取り出した画像オブジェクト
  * @param  削除する画像のファイル名
  * @return 入れ替えた画像の一意となるファイル名
  */
  protected static function swapImage($path, $imageObj, $filename) {

    // 画像を保存
    $imageName = self::storeImage($path, $imageObj);

    // 保存に成功した場合、入れ替え対象の画像を削除する
    //if (!Utl::isNullOrEmpty($imageName) && !self::isNoImage($filename)) {
      self::deleteImage($path, $filename);
    //}
    return $imageName;
  }
}
