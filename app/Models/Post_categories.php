<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post_categories extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'slug', 'description', 'user_id', 'parent_id'];
    public function Posts(){
        return $this->hasMany('App\Models\post', 'category_id', 'id');
    }
    public function users(){
        return $this->belongsTo('App\Models\user', 'user_id', 'id');
    }
    public function children()
    {
        return $this->hasMany('App\Models\post_categories', 'parent_id');
    }

    public function parent()
    {
        return $this->belongsTo('App\Models\post_categories'::class, 'parent_id');
    }
}
