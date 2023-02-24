<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{

    use HasFactory;
    protected $guarded = [];

    
    public function posts()
    {
        // category hasMany from post table with froeginkey in post and primarykey in this category table
        return $this->hasMany(Post::class, 'category_id' , 'id');
    }


}
