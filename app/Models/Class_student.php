<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class Class_student extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $guarded = [];
    protected $table = 'class_student';
    const CREATED_AT = 'class_student_created_at';
    const UPDATED_AT = 'class_student_updated_at';
    protected $primaryKey = 'class_student_id';
    
    
     public function classes()
    {
        return $this->hasMany(Classes::class,'classes_id','class_student_student_id');
    }
    
    
}
