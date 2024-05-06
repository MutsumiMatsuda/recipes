<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  {{-- CSRF Token  --}}
  <meta name="csrf-token" content="{{ csrf_token() }}">

  {{-- titleタグ --}}
  <title>@yield('title')</title>

  <!-- Scripts -->
  {{-- Javascript --}}
  <script src="{{ asset('js/app.js') }}" defer></script>
  <script src="{{ asset('js/particles.min.js') }}" defer></script>
  @yield('customjs')
  {{-- @php $bgjs = 'js/' . $__env->yieldContent('bgtype') . '.js'; @endphp
      <link href="{{ asset($bgcss) }}" rel="stylesheet"> --}}

  <!-- Fonts -->
  <link rel="dns-prefetch" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

  <!-- Styles -->
  {{-- CSS --}}
  <link href="{{ asset('css/app.css') }}" rel="stylesheet">
  <link href="{{ asset('css/common.css') }}" rel="stylesheet">
  @yield('customcss')

</head>
<body>
  <div id="app">
    {{-- 画面上部に表示するナビゲーションバーです。 --}}
    <div class='fixed-top'>
    <nav class="navbar navbar-expand-md navbar-dark navbar-laravel">
      <div class="container">
        <a class="navbar-brand" href="{{ url('/learner') }}">
          問題集
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <!-- Left Side Of Navbar -->
          <ul class="navbar-nav mr-auto">

          </ul>

          <!-- Right Side Of Navbar -->
          <ul class="navbar-nav ml-auto">
            <!-- Authentication Links -->
            {{-- ログインしていなかったらログイン画面へのリンクを表示 --}}
            @guest
            <li><a class="nav-link" href="/learner/add">問題登録</a></li>
            {{-- ログインしていたらユーザー名とログアウトボタンを表示 --}}
            @else
            <li><a class="nav-link" href="/recipe">一般画面へ</a></li>
            <li class="nav-item dropdown">
              <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                {{ Auth::user()->name }} <span class="caret"></span>
              </a>

              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="{{ route('addrecipe') }}">レシピ追加</a>
                <a class="dropdown-item" href="{{ route('recipe') }}">レシピ一覧</a>
                <a class="dropdown-item" href="{{ route('menu') }}">献立一覧</a>
                <a class="dropdown-item" href="{{ route('category') }}">タイプ一覧</a>
                <a class="dropdown-item" href="{{ route('material') }}">材料一覧</a>
                <a class="dropdown-item" href="{{ route('nutrient') }}">栄養素一覧</a>
                <a class="dropdown-item" href="{{ route('howto') }}">調理法一覧</a>
                <a class="dropdown-item" href="{{ route('country') }}">国別料理一覧</a>
                <a class="dropdown-item" href="{{ route('mainsub') }}">料理分類一覧</a>
                <a class="dropdown-item" href="{{ route('season') }}">旬一覧</a>
                <a class="dropdown-item" href="{{ route('tag') }}">検索タグ一覧</a>
                <a class="dropdown-item" href="{{ route('p_recipe') }}">一般メニュー</a>
                <a class="dropdown-item" href="{{ route('logout') }}"
                onclick="event.preventDefault();
                document.getElementById('logout-form').submit();">
                {{ __('Logout') }}
              </a>

              <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                @csrf
              </form>
            </div>
          </li>
          @endguest
        </ul>
      </div>
    </div>
  </nav>
  </div>
  {{-- ここまでナビゲーションバー --}}
  @yield('content')
</div>
</body>
@yield('js')
</html>
