@extends('layouts.base')

@section('content')
<div class="container create">
    <div class="row">
        <div class="col-md-6"><h1>Blogok módosítása:</h1></div>
        <div class="col-md-6"><a href="{{route('blogok.index')}}" class="btn btn-primary float-end mt-2">Vissza</a></div>
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
    <form method="POST" action="{{route('blogok.update',$blog->id)}}">
        @csrf
        @method("PUT")
        <div class="container data col-md-6">
            <div class="col-md-12">
                <div class="form-group">
                    <strong>Szerző:</strong>
                    <input type="text" name="author" class="form-control" value="{{$blog->author}}" placeholder="Szerző:">
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <strong>Cím:</strong>
                    <input type="text" name="title" value="{{$blog->title}}" class="form-control" placeholder="Cím:">
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <strong>Tartalom:</strong>
                    <textarea name="description" class="form-control" placeholder="Tartalom:">{{$blog->description}}</textarea>
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <strong>Címkék:</strong>
                    <select class="form-control select" name="blogtags[]" multiple="multiple">
                        @foreach ($tags as $tag)
                            @php
                                $selected = false;
                            @endphp
                            @foreach ($blog->tags as $blogtag)
                                @php
                                if($blogtag->id == $tag->id)
                                {
                                    $selected = true;
                                }
                                @endphp
                            @endforeach
                            <option value="{{$tag->id}}" @selected($selected)>
                                {{$tag->name}}
                            </option>
                        @endforeach
                      </select>
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <button type="submit" name="save" class="btn btn-primary">
                        Módosít
                    </button>
                </div>
            </div>
        </div>
    </form>
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

