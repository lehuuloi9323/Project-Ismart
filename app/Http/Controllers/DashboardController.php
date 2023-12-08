<?php

namespace App\Http\Controllers;
use App\Models\order;
use App\Models\order_item;
use App\Models\customer;
use Illuminate\Http\Request;

class DashboardController extends Controller
{

    public function __construct()
    {
        $this->middleware(function ($request, $next){
            session(['module_active' => 'dashboard']);
            return $next($request);
        });
    }

    public function index(){
        $revenue = order::where('status', 'delivered')->sum('total_amount');
        $count_pending = order::where('orders.status', 'pending')
        ->join('customers', 'orders.customer_id', '=', 'customers.id')
        ->select('orders.*', 'customers.name')->count();
        $count_processing = order::where('orders.status', 'processing')
        ->join('customers', 'orders.customer_id', '=', 'customers.id')
        ->select('orders.*', 'customers.name')->count();
        $count_shipped = order::where('orders.status', 'shipped')
        ->join('customers', 'orders.customer_id', '=', 'customers.id')
        ->select('orders.*', 'customers.name')->count();
        $count_delivered = order::where('orders.status', 'delivered')
        ->join('customers', 'orders.customer_id', '=', 'customers.id')
        ->select('orders.*', 'customers.name')->count();
        $count_canceled = order::where('orders.status', 'canceled')
        ->join('customers', 'orders.customer_id', '=', 'customers.id')
        ->select('orders.*', 'customers.name')->count();
        $orders = order::join('customers', 'orders.customer_id', '=', 'customers.id')
            ->select('orders.*', 'customers.name')
            ->orderBy('id', 'DESC')->paginate(7);
        return view('dashboard', compact('orders','revenue', 'count_pending', 'count_canceled', 'count_processing', 'count_shipped', 'count_delivered'));
    }
}
