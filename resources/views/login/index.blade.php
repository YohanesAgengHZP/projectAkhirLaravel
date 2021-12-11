@extends('layouts.main')

@section('container')

<div class="row justify-content-center">
    <div class="col-md-5">

      @if(session()->has('succes'))

        <div class="alert alert-success alert-dismissible fade show" role="alert">
          {{ session('succes') }}
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>

      @endif

      @if(session()->has('loginError'))

        <div class="alert alert-danger alert-dismissible fade show" role="alert">
          {{ session('loginError') }}
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>

      @endif

        <main class="form-signin">
            <h1 class="h3 mb-3 fw-normal">Please Log in</h1>
            <form action="/login" method="post">
              @csrf

              <div class="form-floating">
                <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" placeholder="Masukkan email anda.." autofocus required value="{{ old('email') }}">
                <label for="email">Email address</label>
                @error('email')
                  <div class="invalid-feedback">
                    {{ $message }}
                  </div>
                @enderror
              </div>

              <div class="form-floating">
                <input type="password" name="password" class="form-control" id="password" placeholder="Password" required>
                <label for="password">Password</label>
              </div>

              <button class="w-100 btn btn-lg btn-primary" type="submit">Log in</button>
              
            </form>
            <small>
                Belum Daftar?
                <a href="/register">
                    Daftar Sekarang
                </a>
            </small>
        </main>
    </div>
</div>



@endsection