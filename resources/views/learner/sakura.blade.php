@extends('learner.layouts.common')

{{-- title --}}
@section('title', '薬剤師質問集(さくら)')

@section('customjs')
<script src="{{ asset('js/sakura.js') }}" defer></script>
@endsection

@section('customcss')
<link href="{{ asset('css/sakura.css') }}" rel="stylesheet">
@endsection

@section('content')
<div id="particles-js"></div>
<div id="wrapper">
  <main class="py-4">
    <div class="row">
      <div class="col-md-4 mx-auto card" style="color : black;">
        <div class="row py-4">
          <div class="col-md-8 mx-auto card bg-dark" style="font-size: 20; color: white">
            テルミサルタンのジェネリックは？
          </div>
        </div>
        <div class="row py-1">
          <div class="col-md-8 mx-auto card bg-primary" style="font-size: 20; color : white;">
            <div class="row">
              <div class="col-md-1">
                <input type="radio" id="sel0101" name="ans01" value='1'>
              </div>
              <div class="col-md-11">
                <label for="sel0101">ミカムロ</label>
              </div>
            </div>
          </div>
        </div>
        <div class="row py-1">
          <div class="col-md-8 mx-auto card bg-info" style="font-size: 20; color: white;">
            <div class="row">
              <div class="col-md-1">
                <input type="radio" id="sel0102" name="ans01" value='2'>
              </div>
              <div class="col-md-11">
                <label for="sel0102">オキシテトラコーン</label>
              </div>
            </div>
          </div>
        </div>
        <div class="row py-1">
          <div class="col-md-8 mx-auto card bg-primary" style="font-size: 20; color: white;">
            <div class="row">
              <div class="col-md-1">
                <input type="radio" id="sel0103" name="ans01" value='3'>
              </div>
              <div class="col-md-11">
                <label for="sel0103">ジルムロ</label>
              </div>
            </div>
          </div>
        </div>
        <div class="row py-1">
          <div class="col-md-8 mx-auto card bg-info" style="font-size: 20; color: white;">
            <div class="row">
              <div class="col-md-1">
                <input type="radio" id="sel0104" name="ans01" value='4'>
              </div>
              <div class="col-md-11">
                <label for="sel0104">イルアミクス</label>
              </div>
            </div>
          </div>
        </div>
        <div class="row py-1">
          <div class="col-md-8 mx-auto card bg-primary" style="font-size: 20; color: white;">
            <div class="row">
              <div class="col-md-1">
                <input type="radio" id="sel0105" name="ans01" value='5'>
              </div>
              <div class="col-md-11">
                <label for="sel0105">アマルエット</label>
              </div>
            </div>
          </div>
        </div>
        <div class="row py-4">
          <div class="col-md-2 mx-auto">
            <button type="submit" class="btn-lg btn-outline-dark">回答</button>
          </div>
        </div>
      </div>
    </div>
  </main>
</div>
@endsection
