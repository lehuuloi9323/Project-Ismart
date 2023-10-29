<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product_categories extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'slug', 'description','user_id','parent_id'];
    public function users(){
        return $this->belongsTo('App\Models\User', 'user_id', 'id');
    }
}
