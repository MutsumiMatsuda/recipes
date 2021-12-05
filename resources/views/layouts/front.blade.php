<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- CSRF Token -->
         {{-- 後の章で説明します --}}
        <meta name="csrf-token" content="{{ csrf_token() }}">

        {{-- 各ページごとにtitleタグを入れるために@yieldで空けておきます。 --}}
        <title>@yield('title')</title>

        <!-- Scripts -->
         {{-- Laravel標準で用意されているJavascriptを読み込みます --}}
        <script src="{{ asset('js/app.js') }}" defer></script>

        <!-- Fonts -->
        <link rel="dns-prefetch" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

        <!-- Styles -->
        {{-- Laravel標準で用意されているCSSを読み込みます --}}
        <link href="{{ asset('css/app.css') }}" rel="stylesheet">
        {{-- この章の後半で作成するCSSを読み込みます --}}
        <link href="{{ asset('css/front.css') }}" rel="stylesheet">

        <style>
          /* チェックボックスサイズの変更 */
          .chkbox {
            margin:			0 0 10px 0px;
          }
          /* ラベルのスタイル　*/
          .chkbox label {
            padding-left:		38px;			/* ラベルの位置 */
            font-size:		24px;
            line-height:		24px;
            display:		inline-block;
            cursor:			pointer;
            position:		relative;
          }

          /* ボックスのスタイル */
          .chkbox label:before {
            content:		'';
            width:			24px;			/* ボックスの横幅 */
            height:			24px;			/* ボックスの縦幅 */
            display:		inline-block;
            position:		absolute;
            left:			0;
            background-color:	#fff;
            box-shadow:		inset 1px 2px 3px 0px #000;
            border-radius:		6px 6px 6px 6px;
          }
          /* 元のチェックボックスを表示しない */
          .chkbox input[type=checkbox] {
            display:		none;
          }
          /* チェックした時のスタイル */
          .chkbox input[type=checkbox]:checked + label:before {
            content:		'\2713';		/* チェックの文字 */
            font-size:		24px;			/* チェックのサイズ */
            color:			#fff;			/* チェックの色 */
            background-color:	#06f;			/* チェックした時の色 */
          }
          @yield('style')
        </style>
    </head>
    <body>
        <div id="app">
            {{-- 画面上部に表示するナビゲーションバーです。 --}}
            <nav class="navbar navbar-expand-md navbar-dark navbar-laravel">
                <div class="container">
                    <a class="navbar-brand" href="{{ url('/') }}">
                        {{-- config('app.name', 'Laravel') --}}
                        Recipes
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
                            <li><a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a></li>
                        {{-- ログインしていたらユーザー名とログアウトボタンを表示 --}}
                        @else
                            <li><a class="nav-link" href="{{ route('recipe') }}">管理画面へ</a></li>
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                  <a class="dropdown-item" href="{{ route('p_recipe') }}">レシピ一覧</a>
                                  <a class="dropdown-item" href="{{ route('p_menu') }}">献立一覧</a>
                                  <a class="dropdown-item" href="{{ route('p_category') }}">タイプ一覧</a>
                                  <a class="dropdown-item" href="{{ route('p_material') }}">材料一覧</a>
                                  <a class="dropdown-item" href="{{ route('p_nutrient') }}">栄養素一覧</a>
                                  <a class="dropdown-item" href="{{ route('p_howto') }}">調理法一覧</a>
                                  <a class="dropdown-item" href="{{ route('p_country') }}">国別料理一覧</a>
                                  <a class="dropdown-item" href="{{ route('p_mainsub') }}">料理分類一覧</a>
                                  @guest
                                    <a class="dropdown-item" href="{{ route('login') }}"ログイン</a>
                                  @else
                                    <a class="dropdown-item" href="{{ route('recipe') }}">管理者メニュー</a>
                                  @endguest
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
            {{-- ここまでナビゲーションバー --}}

            <main class="py-4">
                {{-- コンテンツをここに入れるため、@yieldで空けておきます。 --}}
                @yield('content')
            </main>
        </div>
    </body>
    @yield('js')
</html>
