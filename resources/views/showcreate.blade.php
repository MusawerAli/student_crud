@extends('./master')

@section('showcreate')
<div class="container">
    @if(Session::has('success'))
    <div class="alert alert-success alert-dismissible">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            {{session::get('success')}} 
          </div>
  
    @endif
   <a href="{{route('students.index')}}" class="btn btn-primary">+</a>
    <h2>Basic Table</h2>
    <p>The .table class adds basic styling (light padding and horizontal dividers) to a table:</p>            
    <table class="table">
      <thead>
        <tr>
          <th>Firstname</th>
          <th>Lastname</th>
          <th>edit</th>
          <th>delete</th>
        </tr>
      </thead>
      <tbody>
            @foreach($student as $row)
            
     
        <tr>
          <td>{{$row['first_name']}}</td>
          <td>{{$row['last_name']}}</td>
          <td><a href="{{action('StudentController@edit',$row['id'])}}" class="btn btn-warning">Edit</a></td>
          {{-- <td><a href="{{route('students.edit',$row['id'])}}" class="btn btn-warning">Edit</a></td> --}}
          <td>
            <form  action="{{action('StudentController@destroy',$row['id'])}}" method="POST" class="delete_form">
              {{csrf_field()}}
              <input type="hidden" name="_method" value="DELETE">
              <button class="btn btn-danger" type="submit">
                Delete
              </button>
            </form>
          </td>
        </tr>
        @endforeach
      </tbody>
    </table>
  </div>
  
  <script>
    $(document).ready(function(){
      $('.delete_form').on('submit',function(){
        if(confirm("Fucking🤦‍ Are You want to delete it???")){
          return true;
        }else{
          return false;
        }
      })
    });
  </script>
@endsection