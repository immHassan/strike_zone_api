<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class Student extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $guarded = [];
    protected $table = 'student';
    const CREATED_AT = 'student_created_at';
    const UPDATED_AT = 'student_updated_at';
    protected $primaryKey = 'student_id';
    
        public function classes()
    {
        return $this->hasMany(Class_student::class,'class_student_student_id','student_id');
    }
    
    
}
