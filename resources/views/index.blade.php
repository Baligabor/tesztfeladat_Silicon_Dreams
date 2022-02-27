@extends('layouts.base')

@section('content')
    <div class="container mainpage">
        <div class="row mb-4">
            <div class="col-md-6"><h1>Blogok megtekintése:</h1></div>
            <div class="col-md-6"><a href="{{route('blogok.create')}}" class="btn btn-primary float-end mt-2">Új hozzáadása</a></div>
        </div>
        @if($errors->any())
            <div class="alert alert-danger">
                <strong>Hiba!</strong>
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{$error}}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <div class="d-flex justify-content-evenly mb-4 filters">
            <div>
                <strong>Szűrők:</strong>
            </div>
            <div>
                Dátum szerint:
                <a href="{{route('filterOrder','DESC')}}" title="Csökkenő"><i class="fa-solid fa-arrow-down-wide-short"></i></a>
                <a href="{{route('filterOrder','ASC')}}" title="Növekvő"><i class="fa-solid fa-arrow-down-short-wide"></i></a>
            </div>
            <div>
                <form action="{{route('filterByTags')}}" method="GET">
                    Címkék szerint:
                    <select class="form-control select" id="select" name="blogtags[]" multiple="multiple">
                        @foreach ($tags as $tag)
                            <option value="{{$tag->id}}">
                                {{$tag->name}}
                            </option>
                        @endforeach
                    </select>
                    <button type="submit" class="btn filterbutton"><i class="fa-solid fa-magnifying-glass"></i></button>
                </form>
            </div>
        </div>
        @if ($message = Session::get('success'))
            <div class="alert alert-success">
                <p>{{$message}}</p>
            </div>
        @endif
        @if(isset($filterMessage))
            <h5>{{$filterMessage}}</h5>
        @endif
        <div class="contents mt-4">
            @foreach ($blogs as $blog)
            <div class="content col-md-5">
                <strong>Szerző:</strong>
                <p>{{$blog->author}}</p>
                <strong>Cím:</strong>
                <p>{{$blog->title}}</p>
                <strong>Tartalom:</strong>
                <p>{{$blog->description}}</p>
                <strong>Utolsó módosítás:</strong>
                <p>{{date('Y:m:d H:m:s', strtotime($blog->updated_at))}}</p>
                <strong>Címkék:</strong>
                <br>
                @foreach ($blog->tags as $tag)
                    {{$tag->name.' '}}
                @endforeach
                <br>
                <strong>Művelet:</strong>
                <div class="row">
                    <form action="{{route('blogok.destroy', $blog->id)}}"
                        method="POST"
                        onsubmit="return confirm('Are you sure you want to delete this game?');">
                        @csrf
                        @method('DELETE')
                        <a href="{{route('blogok.show', $blog->id)}}" class="btn btn-primary">Megtekint</a>
                        <a href="{{route('blogok.edit', $blog->id)}}" class="btn btn-primary">Módosít</a>
                        <button type="submit" class="btn btn-danger">
                            Töröl
                        </button>
                    </form>
                </div>
            </div>
            @endforeach
        </div>
        {{$blogs->links()}}
    </div>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

    <script>
      $(document).ready(function() {
          // Select2 Multiple
          $('.select').select2({
              tags: true
          });

      });
    </script>
@endsection

