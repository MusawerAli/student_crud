@extends('./master')
@section('create')
<div class="container">
    <div class="col-sm-6">
        @if(count($errors) >0)
        @foreach($errors->all() as $error)
        {{$error}}
        @endforeach
        @endif
        @if(Session::has('success'))
        {{Session::get('success')}}
        @endif
        <a href="{{route('students.create')}}" class="btn btn-info">Show Data</a>
            <form action="{{url('students')}}" method="POST">
                    {{csrf_field()}}
                    <div class="form-group">
                      <label for="firstname">First Name</label>
                      <input type="text" class="form-control"  id="firstname" name="firstname">
                    </div>
                    <div class="form-group">
                      <label for="lastname">Last Name:</label>
                      <input type="text" name="lastname" class="form-control" id="lastname">
                    </div>
                   
                    <button type="submit" class="btn btn-primary">Submit</button>
                  </form>
    </div>
</div>
@endsection