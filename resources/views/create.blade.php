@extends('layouts.base')

@section('content')
<div class="create">
    <div class="row">
        <div class="col-md-6"><h1>Új blog felvitele:</h1></div>
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
    <form method="post" action="{{route('blogok.store')}}">
        @csrf
        <div class="container data col-md-5">
            <div class="col-md-12">
                <div class="form-group">
                    <strong>Szerző:</strong>
                    <input type="text" name="author" class="form-control" placeholder="Szerző:">
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <strong>Cím:</strong>
                    <input type="text" name="title" class="form-control" placeholder="Cím:">
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <strong>Tartalom:</strong>
                    <textarea name="description" class="form-control" placeholder="Tartalom:"></textarea>
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <strong>Címkék:</strong>
                    <select class="form-control select" name="blogtags[]" multiple="multiple">
                        @foreach ($tags as $tag)
                            <option value="{{$tag->id}}">
                                {{$tag->name}}
                            </option>
                        @endforeach
                      </select>
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-group">
                    <button type="submit" name="save" class="btn btn-primary">
                        Mentés
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

