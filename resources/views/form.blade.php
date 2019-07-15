@extends('./master')
@if($errors->any())
@foreach($errors->all() as $error)
<li>
  <ul>
    {{$error}}
  </ul>
</li>
@endforeach
@endif
@section('form')

<div class="container">
    <div class="col-sm-6">
        <form action="{{ route('formSubmit') }}" method="post">
            {{csrf_field()}}
            <div class="form-group">
              <label for="email">Email address:</label>
              <input type="text" class="form-control" name="email" id="email">
            </div>
            <div class="form-group">
              <label for="pwd">Password:</label>
              <input type="password" name="password" class="form-control" id="pwd">
            </div>
            <div class="form-group form-check">
              <label class="form-check-label">
                <input class="form-check-input" name="chkBox" type="checkbox"> Remember me
              </label>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
    </div>
</div>

@endsection