<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product_categories extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'slug', 'description','user_id','parent_id'];
    public function users(){
        return $this->belongsTo('App\Models\user', 'user_id', 'id');
    }

    public function Products(){
        return $this->hasMany('App\Models\product', 'category_id', 'id');
    }

    public function children()
    {
        return $this->hasMany('App\Models\product_categories', 'parent_id');
    }

    public function parent()
    {
        return $this->belongsTo('App\Models\product_categories'::class, 'parent_id');
    }
}
