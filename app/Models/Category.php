<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class Category extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $guarded = [];
    protected $table = 'category';
    const CREATED_AT = 'category_created_at';
    const UPDATED_AT = 'category_updated_at';
    protected $primaryKey = 'category_id';
    
    
     public function products()
    {
        return $this->hasMany(Product::class,'category_id','category_id');
    }
    
    
}
