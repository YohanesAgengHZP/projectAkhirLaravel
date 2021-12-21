@extends('dashboard.layouts.main')

@section('container')

<div class="container">
    <div class="row my-2">
        <div class="col-lg-8">
            <article>   
                <h2>{{ $post->title }}</h2>

                <a href="/dashboard/posts" class="btn btn-success"><span data-feather="arrow-left"></span> Back to my post</a>
                <a href="" class="btn btn-warning"><span data-feather="edit"></span> Edit Post</a>
                <a href="" class="btn btn-danger"><span data-feather="x-circle"></span> Delete Post</a>

                <img src="https://source.unsplash.com/1200x400/?{{ $post->category->name }}" alt="{{ $post->category->name }}" class="img-fluid mt-2">
                {!! $post->isi !!}
            </article>
        
            <a href="/blog"> Back to post </a>
        </div>
    </div>
</div>

@endsection