<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Student;
use Datatables;
class dataTable extends Controller
{
    function index(){
        return view('dataTable');
    }

    function getdata(){
        $student = Student::select('first_name','last_name');
        return Datatables::of($student)->make(true);
    }
}
