<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class Payment extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $guarded = [];
    protected $table = 'payment';
    const CREATED_AT = 'payment_created_at';
    const UPDATED_AT = 'payment_updated_at';
    protected $primaryKey = 'payment_id';
    
        public function payment_detail()
    {
        return $this->hasMany(Payment_detail::class,'payment_id','payment_id');
    }
    
       public function student()
    {
        return $this->hasOne(Student::class,'student_id','Payment_customer_id');
    }  
    
    
    
    
}
