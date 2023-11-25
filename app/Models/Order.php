<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;
    protected $fillable = ['product_quantity','total_amount','payment_method','shipping_address', 'status','note', 'user_id', 'customer_id'];
}
