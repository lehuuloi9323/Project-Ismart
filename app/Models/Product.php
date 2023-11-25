<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'description','slug', 'details', 'price','old_price', 'stock_quantity',
    'is_feature', 'product_status', 'user_id','category_id'];
    public function Product_images(){
        return $this->hasMany(Product_image::class);
    }

    public function Product_categories() {
        return $this->belongsTo('App\Models\Product_categories', 'category_id', 'id');
    }
}
