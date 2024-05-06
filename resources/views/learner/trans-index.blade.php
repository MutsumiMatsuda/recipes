@extends('learner.layouts.common')

{{-- title --}}
@section('title', '中国語翻訳問題集(さくら)')

@section('customjs')
<script src="{{ asset('js/sakura.js') }}" defer></script>
@endsection

@section('customcss')
<link href="{{ asset('css/sakura.css') }}" rel="stylesheet">
@endsection

@section('content')
<div id="particles-js"></div>
<div id="wrapper">
  <main class="py-5">
    <div class="row">
      <div class="col-md-3 mx-auto card">
        <div class="row py-4 mx-auto">
          <div class="col-md-12 card bg-light" style="color: black;">
            <div class="align-items-center text-center" style="font-size: 18px; color: black">問題一覧</div>
          </div>
        </div>
          @php $i = 1; @endphp
          @foreach($list as $item)
          <div class="form-group row" style="font-size: 20; color: white;">
            <div class="col-md-11 mx-auto">
              <a href={{"/learner/detail?id=" . $item->id}}>
                <div class="row card @if($i % 2) bg-primary @else bg-info @endif form-check">
                  <div class="col-md-12">
                    @php
                      $dsp = $item->id . "." . mb_substr($item->q, 0, 10);
                      $dsp .= 10 < mb_strlen($item->q) ? "…" : "";
                    @endphp
                    <label class="form-check-label form-control-lg" style="color: white">{{ $dsp }}</label>
                    <a href={{"/learner/edit?id=" . $item->id}}>
                      <button class="btn btn-success float-right">編集</button>
                    </a>
                  </div>
                </div>
              </a>
            </div>
          </div>
          @php $i++; @endphp
          @endforeach

        </div>

    </div>
  </main>
</div>
@endsection
