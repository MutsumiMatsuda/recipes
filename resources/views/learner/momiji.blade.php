@extends('learner.layouts.common')

{{-- title --}}
@section('title', '薬剤師質問集(もみじ)')

@section('customjs')
  <script src="{{ asset('js/momiji.js') }}" defer></script>
@endsection

@section('customcss')
  <link href="{{ asset('css/momiji.css') }}" rel="stylesheet">
@endsection

@section('content')
<div id="particles-js"></div>
<div id="wrapper">
  <main class="py-4">

  </main>
</div>
@endsection
