@extends('learner.layouts.common')

{{-- title --}}
@section('title', '薬剤師質問集(星)')

@section('customjs')
  <script src="{{ asset('js/stars.js') }}" defer></script>
@endsection

@section('customcss')
  <link href="{{ asset('css/stars.css') }}" rel="stylesheet">
@endsection

@section('content')
<div id="particles-js"></div>
<div id="wrapper">
  <main class="py-4">

  </main>
</div>
@endsection
