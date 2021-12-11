
@extends('layouts.main')

@section('container')
<h1> Kategori Post : </h1>

    <div class="container p-4 ">
        <div class="row">
            @foreach ($categories as $category)   
                <div class="col-md-4 ">
                    <a href="/categories/{{ $category->slug }}">
                    <div class="card bg-dark text-white">
                        <img src="https://source.unsplash.com/330x330/?{{ $category->name }}" alt="{{ $category->name }}" alt="{{ $category->name }}" alt="{{ $category->name }}">
                        <div class="card-img-overlay d-flex align-items-center p-0">
                        <h5 class="card-title text-center flex-fill p-3" style="background-color: rgba(0, 0, 0, 0.7)" >{{ $category->name }}</h5>
                        </div>
                    </a>
                    </div>
                </div>
            @endforeach
        </div>
    </div>

@endsection


