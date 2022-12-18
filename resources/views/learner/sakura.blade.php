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
      <div class="col-md-4 mx-auto card">
        <div class="row py-4">
          <div class="col-md-8 mx-auto card bg-light"  style="color : black;">
            <div class="align-items-center text-center" style="font-size: 20px; color: black">同成分の薬剤選択</div>
          </div>
        </div>
        <div class="row py-2">
          <div class="col-md-10 mx-auto card bg-dark">
            <div class="align-items-center text-center" style="font-size: 24px; color: white">{{ $q }}</div>
          </div>
        </div>
        <form action="{{ action('Learners\PagesController@checkAnswer') }}" method="post" enctype="multipart/form-data">
          @php $i = 1; @endphp
          @foreach($sel as $val)
          @php $tagId = 'sel01' . $i; @endphp
          <div class="form-group row" style="font-size: 20; color: white;">
            <div class="col-md-8 mx-auto">
              <div class="row card @if($i % 2) bg-primary @else bg-info @endif form-check">
                <div class="col-md-1">
                <input type="radio" class="form-check-input form-control form-control-md" id="{{ $tagId }}" name="ans01" value="{{ $val->id }}">
                </div>
                <div class="col-md-11">
                <label class="form-check-label form-control-lg" for="{{ $tagId }}">{{ $val->name }}</label>
                </div>
              </div>
            </div>
          </div>
          @php $i++; @endphp
          @endforeach
          @csrf
          <div class="form-group row py-4">
            <div class="col-md-2 mx-auto">
              <button type="submit" class="btn-lg btn-outline-dark">回答</button>
            </div>
          </div>
        </div>
      </form>
    </div>
  </main>
</div>
@endsection
