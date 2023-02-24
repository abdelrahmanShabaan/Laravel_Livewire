<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function user()
    {
        return $this->belongTo(User::class , 'user_id' , 'id');
    }

    
    public function category()
    {
        return $this->belongTo(Category::class , 'category_id' , 'id');
    }
}
