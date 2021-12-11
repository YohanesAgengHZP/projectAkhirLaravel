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

        <main class="form-signin">
            <h1 class="h3 mb-3 fw-normal">Please Log in</h1>
            <form>
              <div class="form-floating">
                <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                <label for="floatingInput">Email address</label>
              </div>
              <div class="form-floating">
                <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                <label for="floatingPassword">Password</label>
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