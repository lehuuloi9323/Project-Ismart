<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'email', 'phone_number','address'];
    public function Orders(){
        return $this->hasOne(order::class);
    }
}

