<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order_item extends Model
{
    use HasFactory;
    protected $fillable = ['product_id','order_id', 'quantity', 'price'];
    public function Orders(){
        return $this->belongsTo(order::class, 'order_id');
    }
    public function Products(){
        return $this->belongsTo(product::class, 'product_id');
    }
}
