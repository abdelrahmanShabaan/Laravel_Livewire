<?php

namespace App\Http\Livewire;

use App\Models\Post;
use Livewire\Component;
use Livewire\WithPagination;

class Posts extends Component
{
    
    use WithPagination;

    public function render()
    {

     
 
        $posts = Post::with(['user' , 'category'])->orderBy('id' , 'desc')->paginate(5);

        return view('livewire.posts' , [
            'posts' => $posts
        ]);
    }
}
