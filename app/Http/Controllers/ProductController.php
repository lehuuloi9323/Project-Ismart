<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Gate;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
class ProductController extends Controller
{
    public function __construct()
    {
        $this->middleware(function ($request, $next){
            session(['module_active' => 'product']);
            return $next($request);
        });
    }
    public function add(Request $request){

        // if(! Gate::allows('product.add')){
        //     abort(403);
        // }

        return view('product.add');
    }


    public function cat(Request $request){
        return view('product.cat');
    }


    public function list(Request $request){
        return view('product.list');
    }}
