@extends('layouts.front')

@section('title', '登録済みレシピの一覧')

@section('content')
  <div class="container users-index">
    <div class="row">
      <h2 style="margin-bottom:30px">レシピ一覧</h2>
    </div>
    <div class="row">
      <div class="col-md-12">
        <form name="search" action="{{ action('RecipeController@index') }}" method="get">
          {{ csrf_field() }}
          <div class="row">
            <label class="col-md-4">レシピ名、本文</label>
            <label class="col-md-3">材料名</label>
            <label class="col-md-3">栄養素名</label>
          </div>
          <div class="row">
            <div class="col-md-4">
              <input type="text" class="form-control" id='rq' name="rq" value="{{ $q['rq'] }}">
            </div>
            <div class="col-md-3">
              <input type="text" class="form-control" id='mq' name="mq" value="{{ $q['mq'] }}">
            </div>
            <div class="col-md-3">
              <input type="text" class="form-control" id='nq' name="nq" value="{{ $q['nq'] }}">
            </div>
            <div class="col-md-2 ml-auto">
              <input type="button" class="btn btn-primary" value="クリア" onclick="clearQuery();">
            </div>
          </div>
          <div class="row py-1">
            <div class="col-md-3">
              <div class="chkbox">
                <input type="checkbox" id="easy" name="easy" @if($q['easy'] == true) checked @endif>
                <label for="easy">かんたん</label>
              </div>
            </div>
            <div class="col-md-3">
              <div class="chkbox">
                <input type="checkbox" id="fresh" name="fresh" @if($q['fresh'] == true) checked @endif>
                <label for="fresh">さっぱり</label>
              </div>
            </div>
            <div class="col-md-3">
              <div class="chkbox">
                <input type="checkbox" id="favorite" name="favorite" @if($q['favorite'] == true) checked @endif>
                <label for="favorite">おいしい</label>
              </div>
            </div>
            <div class="col-md-2 ml-auto">
              <input type="submit" class="btn btn-primary" value="検索">
            </div>
          </div>
          <div class="row py-1">
            <h5 class="col-md-2">一発検索</h5>
            <div class="col-md-2">
              <input type="submit" class="btn btn-primary" value="かんたん" onclick="document.getElementById('easy').checked=true; document.search.submit();">
            </div>
            <div class="col-md-2">
              <input type="submit" class="btn btn-primary" value="さっぱり" onclick="document.getElementById('fresh').checked=true; document.search.submit();">
            </div>
            <div class="col-md-2">
              <input type="submit" class="btn btn-primary" value="おいしい" onclick="document.getElementById('favorite').checked=true; document.search.submit();">
            </div>

          </div>

        </form>
      </div>
    </div>
    <hr/>
    <div class="row">
      <div class="list-news col-md-12 mx-auto">
        <div class="row">
          <table class="table table-dark">
            <thead>
              <tr class="header">
                <th width="5%">ID</th>
                <th width="10%">画像</th>
                <th width="20%">レシピ</th>
                <th width="53%">作り方</th>
                <th width="7%">操作</th>
              </tr>
            </thead>
            <tbody>
              @foreach($recipes as $recipe)
                <tr>
                  <th>{{ $recipe->id }}</th>
                  <td>@if($recipe->image_path)<img width="80px" src="{{ asset('storage/image/recipe/' . $recipe->image_path) }}"/>@endif</td>
                  <td>{{ str_limit($recipe->name, 30) }}</td>
                  <td>{{ str_limit($recipe->body, 100) }}</td>
                  <td>
                    <div>
                      <a href="{{ action('RecipeController@show', ['id' => $recipe->id]) }}">詳細</a>
                    </div>
                  </td>
                </tr>
              @endforeach
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
@endsection

@section('js')
<script>
  function clearQuery() {
    document.getElementById('rq').value = '';
    document.getElementById('nq').value = '';
    document.getElementById('mq').value = '';
    document.getElementById('easy').checked  = false;
    document.getElementById('fresh').checked  = false;
    document.getElementById('favorite').checked  = false;
    //document.search.submit();
  }
</script>
@endsection
