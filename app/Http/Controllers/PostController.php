<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PostController extends Controller
{
    public function __construct()
    {
        $this->middleware(function ($request, $next){
            session(['module_active' => 'post']);
            return $next($request);
        });
    }
    public function add(Request $request){
        return view('post.add');
    }


    public function cat(Request $request){
        return view('post.cat');
    }


    public function list(Request $request){
        return view('post.list');
    }

}
