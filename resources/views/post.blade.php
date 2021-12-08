
@extends('layouts.main')

@section('container')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <article>   
                <h2>{{ $post->title }}</h2>
                <p>By.
                    <a 
                        href="/authors/{{ $post->author->username }}">
                        {{ $post->author->name }}
                    </a>    in 
                    <a 
                        href="/categories/{{ $post->category->slug }}">
                        {{ $post->category->name }}
                    </a>
                </p>
                {!! $post->isi !!}
            </article>
        
            <a href="/blog"> Back to post </a>
        </div>
    </div>
</div>

    

@endsection


