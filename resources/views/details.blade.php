@extends('layouts.base')

@section('content')
<div class="container create">
    <h1 class="mb-5">Blog részletei:</h1>
        <div class="container details col-md-6">
            <div class="col-md-12">
                <div class="p-2">
                    <strong>Szerző:</strong>
                    {{$blog->author}}
                </div>
            </div>
            <div class="col-md-12">
                <div class="p-2">
                    <strong>Cím:</strong>
                    {{$blog->title}}
                </div>
            </div>
            <div class="col-md-12">
                <div class="p-2">
                    <strong>Tartalom:</strong>
                    {{$blog->description}}
                </div>
            </div>
            <div class="col-md-12">
                <div class="p-2">
                    <strong>Címkék:</strong>
                    @foreach ($blog->tags as $tag)
                        {{$tag->name.' '}}
                    @endforeach
                </div>
            </div>
            <div class="col-md-12">
                <div class="p-2">
                    <a href="{{route('blogok.index')}}" class="btn btn-primary">
                        Vissza
                    </a>
                </div>
            </div>
        </div>
    </form>
</div>
@endsection

