
@extends('layouts.main')

@section('container')
<h1 class="text-center"> {{  $title }} </h1>

    <div class="row justify-content-center">
        <div class="col-md-6">
            <form action="/blog" >
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="Cari" name="cari">
                    <div class="input-group-append">
                      <button class="btn btn-outline-secondary" type="submit">Search</button>
                    </div>
                  </div>
            </form>
        </div>
    </div>

    @if ($posts->count())     
        <div class="card mb-2">
            <img class="card-img-top" src="https://source.unsplash.com/1200x400/?{{ $posts[0]->category->name }}" alt="{{ $posts[0]->category->name }}">
            <div class="card-body text-center">
            <h5 class="card-title"> {{ $posts[0]->title }}</h5>
                <p>
                    <small class="text-muted">
                        By. 
                        <a 
                            href="/authors/{{ $posts[0]->author->username }}" class="text-decoration-none">{{ $posts[0]->author->name }}
                        </a> 
                        in 
                        <a href="/categories/{{ $posts[0]->category->slug }}" class="text-decoration-none">
                            {{ $posts[0]->category->slug }}
                        </a>
                        {{ $posts[0]->created_at->diffForHumans() }}
                    </small>
                </p>
            <p class="card-text">{{ $posts[0]->excerpt }}</p>
                <a href="/post/{{ $posts[0]->slug }}"class="text-decoration-none btn btn-primary"> 
                    Baca lebih lengkap..
                </a>
            </div>
        </div>
    @else
        
        <p class="text-center fs-4">Postingan tidak ditemukan</p>

    @endif

    <div class="container center">
        <div class="row">

            @foreach ($posts->skip(1) as $post ) 
                <div class="col-md-4 mb-3">
                    <div class="card" style="width: 18rem;">
                        <div class="position-absolute bg-dark px-2 py-1 text-white" style="background-color: rgba(0, 0, 0, 0.5)">
                            <a 
                            href="/categories/{{ $post->category->slug }}" class="text-white text-decoration-none">{{  $post->category->name }}
                            </a>
                        </div>
                        <img class="card-img-top" src="https://source.unsplash.com/500x400/?{{ $post->category->name }}" alt="{{ $post->category->name }}" alt="Card image cap">
                        <div class="card-body">
                        <h5 class="card-title">{{ $post->title }}</h5>
                        <p>
                            <small class="text-muted">
                                By. 
                                <a 
                                    href="/authors/{{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}
                                </a> 
                                {{ $post->created_at->diffForHumans() }}
                            </small>
                        </p>
                        <p class="card-text">{{ $post->excerpt }}</p>
                        <a href="/post/{{ $post->slug }}" class="btn btn-primary">Selengkapnya..</a>
                        </div>
                    </div> 
                </div>
            @endforeach
        </div>
    </div>
@endsection


