@extends('./master')


@section('ajaxdata')
<table id="student_table" class="table table" style="width:100%">
    <thead>
        <tr>
            <th>FirstName</th>
            <th>LastName</th>
        </tr>
    </thead>
    </table>
    <script>
        $('#student_table').DataTable({
            "processing":true,
            "serverSide":true,
            "ajax":"{{route('ajaxdata.getdatatables')}}",
            "columns":[
                {"data":"first_name"},
                {"data":"last_name"}
            ]
        
         });
     </script>
@endsection

