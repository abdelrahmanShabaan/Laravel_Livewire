<?php

namespace App\Http\Controllers\Post;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PostController extends Controller
{
   
    public function index()
    {
        return view('frontend.index');
    }

   
    public function create()
    {
        return view('frontend.create');
    }

    
    public function store(Request $request)
    {
        //
    }

   
    public function show($id)
    {
        return view('frontend.show');
    }

  
    public function edit($id)
    {
        return view('frontend.edit');
    }

  
    public function update(Request $request, $id)
    {
        //
    }


    public function destroy($id)
    {
        //
    }
}
