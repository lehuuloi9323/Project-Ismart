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
        return $this->hasMany(product_image::class);
    }

    public function Product_categories() {
        return $this->belongsTo('App\Models\product_categories', 'category_id', 'id');
    }

    public function Order_items(){
        return $this->hasMany(order_item::class, 'product_id');
    }
}
