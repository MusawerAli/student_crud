<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class student extends Model
{
   
   protected $fillable = ['first_name','last_name'];
   protected $table = "student_tables";
    // public $timestamps = false;
}
