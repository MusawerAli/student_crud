<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Student;
use Datatables;
class AjaxdataController extends Controller
{
    function index(){
        return view('ajaxdata');
    }

    function getdatatables(){
        $students = Student::select('first_name','last_name');
        return Datatables::of($students)->make(true);
        
    }
}
