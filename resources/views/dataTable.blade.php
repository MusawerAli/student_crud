@extends('./master')

   
@section('datatable')



<div class="container">
    <br/>
    <h3 align="center">Datatables Server Side Processing in Laravel</h3>
<br />
<table id="student_table" class="table table-bordered">
<thead>
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
    </tr>
</thead>
</table>

</div>
<script type="text/javascript">
$(document).ready(function(){
    $('#student_table').DataTable({
        "processing":true,
        "serverSide":true,
        "ajax": "{{route('da.getdata')}}",
        "columns":[
            {"data":"first_name"},
            {"data":"last_name"}
        ]
    });
});
</script>
@endsection