<?php
namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use App\Student;

    class Hellocontroller extends Controller{

        public function index(){

            $student = new student(['fname'=>'Musawer','rollno'=>'32']);
            // $student->fname = "Musawer";
            // $student->rollno = 43;
             $student->save();
            // $data="fdsafas";
            // return view('hello')->with(['data'=>$data]);
        }
    }
?>