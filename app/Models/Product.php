<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'description','slug', 'details', 'price', 'stock_quantity',
    'is_feature', 'product_status', 'user_id','category_id'];
}
