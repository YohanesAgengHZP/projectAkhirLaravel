@extends('layouts.main')

@section('container')

<div class="row justify-content-center">
    <div class="col-md-5">
        <main class="form-signin">
            <h1 class="h3 mb-3 fw-normal">Registration Form</h1>
            <form action="/register" method="post">
                @csrf
              <div class="form-floating">
                <input type="name" class="form-control @error('name') is-invalid @enderror" id="floatingInput" placeholder="isi nama anda" name="name" required value="{{ old('name') }}">
                <label for="floatingInput">Nama</label>
                
                    @error('name')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                    @enderror
                
              </div>
              <div class="form-floating">
                <input type="username" class="form-control @error('username') is-invalid @enderror" id="floatingInput" placeholder="isi username anda" name="username" required value="{{ old('username') }}">
                <label for="floatingInput">Username</label>
                
                    @error('username')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                    @enderror</label>
              </div>
              <div class="form-floating">
                <input type="email" class="form-control @error('email') is-invalid @enderror" id="floatingInput" placeholder="isi email anda" name="email" required value="{{ old('email') }}">
                <label for="floatingInput">Email</label>
                
                    @error('email')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                    @enderror
              </div>
              <div class="form-floating">
                <input type="password" class="form-control @error('password') is-invalid @enderror" id="floatingInput" placeholder="isi password anda" name="password" required>
                <label for="floatingInput">Password</label>
                
                    @error('password')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                    @enderror
              </div>
              <button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
              
            </form>
            <small>
                Sudah mempunyai akun?
                <a href="/login">
                    Login
                </a>
            </small>
        </main>
    </div>
</div>



@endsection