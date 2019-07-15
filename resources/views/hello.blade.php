@extends('./master')

@section('title')
Main Page
@endsection

@section('body')


 {{isset($data) ? $data : "Data not found"}}

 @if($data=="data")
    {{$data}}

 @elseif($data=="fdsafas")
    {{$data . " Thsi is from, Daa"}}

    @else
    {{"Data not Fopuind"}}
    @endif



@endsection