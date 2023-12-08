<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    use HasFactory;
    protected $fillable = ['image_id', 'title', 'description', 'url', 'display_order', 'user_id'];
    public function images(){
        return $this->belongsTo(image::class, 'image_id');
    }

    public function users(){
        return $this->belongsTo(user::class, 'user_id');
    }
}
