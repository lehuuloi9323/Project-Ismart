<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    use HasFactory;
    protected $fillable = ['url' , 'name' , 'size_img', 'user_id'];
    public function post()
    {
        return $this->hasOne(post::class);
    }
}
