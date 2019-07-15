@extends('./master')

@section('editcreate')
<div class="container">
    <div class="col-sm-6">
        
        <form action="{{action('StudentController@update',$id)}}" method="POST">
                <input type="hidden" name="_method" value="PATCH">
            {{csrf_field()}}
            <div class="form-group">
              <label for="firstname">First Name</label>
              <input type="text" class="form-control"  id="firstname" value="{{$student->first_name}}" name="firstname">
            </div>
            <div class="form-group">
              <label for="lastname">Last Name:</label>
              <input type="text" name="lastname" class="form-control" value="{{$student->last_name}}" id="lastname">
            </div>
           
            <button type="submit" class="btn btn-primary">Update</button>
          </form>
    </div>
</div>
@endsection