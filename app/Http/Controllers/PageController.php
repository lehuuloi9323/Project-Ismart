<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PageController extends Controller
{
    public function __construct()
    {
        $this->middleware(function ($request, $next){
            session(['module_active' => 'page']);
            return $next($request);
        });
    }

    public function add(Request $request){
        return view('page.add');
    }

    public function list(Request $request){
        return view('page.list');
    }
}
