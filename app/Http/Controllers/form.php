<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class form extends Controller
{
    public function index(Request $request){

           echo $request->get('name','Not found');
    }

    function formData(Request $request){
        // dd($request->all());
        $this->validate($request,[
            'email' =>  'required|email',
        ]);

        echo $request['email'];
    }
}
