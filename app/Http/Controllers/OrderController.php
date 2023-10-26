<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class OrderController extends Controller
{

    public function __construct()
    {
        $this->middleware(function ($request, $next){
            session(['module_active' => 'order']);
            return $next($request);
        });
    }

    public function list(Request $request){
        return view('order.list');
    }
}
