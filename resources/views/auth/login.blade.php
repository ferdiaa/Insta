@extends('layouts.authlayout')

@section('form')
    <form method="POST" action="{{ route('login') }}" class="login100-form validate-form">
        @csrf
        <span class="login100-form-title p-b-34">
            Account Login
        </span>


        @error('email')
            <div class="alert alert-danger w-100 mb-1">{{ $message }}</div>
        @enderror
        <div class="wrap-input100 validate-input m-b-20" data-validate="Type user name">
            <input id="email" class="input100 @error('email') is-invalid @enderror" type="email" name="email" placeholder="Email">
            <span class="focus-input100"></span>
        </div>

        @error('password')
            <div class="alert alert-danger w-100 mb-1">{{ $message }}</div>
        @enderror
        <div class="wrap-input100 validate-input m-b-20" data-validate="Type password">
            <input id="password" class="input100 @error('password') is-invalid @enderror" type="password" name="password" placeholder="Password">
            <span class="focus-input100"></span>
        </div>

        <div class="container-login100-form-btn">
            <button type="submit" class="login100-form-btn">
                <span class="spinner-border spinner-border-sm d-none mr-1" role="status" aria-hidden="true"></span>
                Sign in
            </button>
        </div>

        <div class="w-full text-center p-t-27 p-b-100">
            @if (Route::has('password.request'))
                <span class="txt1">
                    Forgot
                </span>

                <a href="{{ route('password.request') }}" class="txt2">
                    Username / password?
                </a>
            @endif
        </div>

        <div class="w-full text-center">
            <a href="{{ route('register') }}" class="txt3">
                Sign Up
            </a>
        </div>
    </form>
@endsection

<a class="weatherwidget-io" href="https://forecast7.com/en/n7d57112d29/jombang-regency/" data-label_1="JOMBANG" data-mode="Current" data-theme="pure" >JOMBANG</a>
<script>
!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src='https://weatherwidget.io/js/widget.min.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','weatherwidget-io-js');
</script>

<div style="text-align:center;padding:1em 0;"> <h4><iframe src="https://www.zeitverschiebung.net/clock-widget-iframe-v2?language=en&size=small&timezone=Asia%2FJakarta" width="100%" height="90" frameborder="0" seamless></iframe> </div>
