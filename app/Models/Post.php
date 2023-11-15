<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;
    protected $fillable = ['title', 'slug', 'excerpt', 'content', 'status', 'user_id', 'category_id', 'image_id'];


    public function image()
    {
        return $this->belongsTo(Image::class);
    }
    public function Product_categories() {
        return $this->belongsTo('App\Models\Post_categories', 'category_id', 'id');
    }
    public function Users() {
        return $this->belongsTo('App\Models\User', 'user_id', 'id');
    }

}
