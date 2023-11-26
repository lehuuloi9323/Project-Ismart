<?php

namespace App\Http\Controllers;
use App\Models\Order;
use App\Models\Order_item;
use App\Models\Customer;
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
        $keyword = '';
        $status = $request->input('status');
        if($request->input('keyword')){
            $keyword = $request->input('keyword');
        }
        $count_pending = Order::where('customers.name', 'LIKE', "%{$keyword}%")->where('orders.status', 'pending')
        ->join('customers', 'orders.customer_id', '=', 'customers.id')
        ->select('orders.*', 'customers.name')->count();
        $count_processing = Order::where('customers.name', 'LIKE', "%{$keyword}%")->where('orders.status', 'processing')
        ->join('customers', 'orders.customer_id', '=', 'customers.id')
        ->select('orders.*', 'customers.name')->count();
        $count_shipped = Order::where('customers.name', 'LIKE', "%{$keyword}%")->where('orders.status', 'shipped')
        ->join('customers', 'orders.customer_id', '=', 'customers.id')
        ->select('orders.*', 'customers.name')->count();
        $count_delivered = Order::where('customers.name', 'LIKE', "%{$keyword}%")->where('orders.status', 'delivered')
        ->join('customers', 'orders.customer_id', '=', 'customers.id')
        ->select('orders.*', 'customers.name')->count();
        $count_canceled = Order::where('customers.name', 'LIKE', "%{$keyword}%")->where('orders.status', 'canceled')
        ->join('customers', 'orders.customer_id', '=', 'customers.id')
        ->select('orders.*', 'customers.name')->count();
        if($status == 'pending' or $status == ''){
            $orders = Order::where('customers.name', 'LIKE', "%{$keyword}%")->where('orders.status', 'pending')
            ->join('customers', 'orders.customer_id', '=', 'customers.id')
            ->select('orders.*', 'customers.name')->orderBy('id', 'DESC')
            ->paginate(7);
        }
        elseif($status == 'processing'){
            $orders = Order::where('customers.name', 'LIKE', "%{$keyword}%")->where('orders.status', 'processing')
            ->join('customers', 'orders.customer_id', '=', 'customers.id')->orderBy('id', 'DESC')
            ->select('orders.*', 'customers.name')
            ->paginate(7);

        }
        elseif($status == 'shipped'){
            $orders = Order::where('customers.name', 'LIKE', "%{$keyword}%")->where('orders.status', 'shipped')
            ->join('customers', 'orders.customer_id', '=', 'customers.id')->orderBy('id', 'DESC')
            ->select('orders.*', 'customers.name')
            ->paginate(7);
        }
        elseif($status == 'delivered'){
            $orders = Order::where('customers.name', 'LIKE', "%{$keyword}%")->where('orders.status', 'delivered')
            ->join('customers', 'orders.customer_id', '=', 'customers.id')->orderBy('id', 'DESC')
            ->select('orders.*', 'customers.name')
            ->paginate(7);
        }
        elseif($status == 'canceled'){
            $orders = Order::where('customers.name', 'LIKE', "%{$keyword}%")->where('orders.status', 'canceled')
            ->join('customers', 'orders.customer_id', '=', 'customers.id')->orderBy('id', 'DESC')
            ->select('orders.*', 'customers.name')
            ->paginate(7);
        }

        $order_item = Order::find(3)->Order_items()->pluck('id')->toArray();
        // $product = get_name_product_from_order_item($order_item);
        // return show_array($product);
        return view('order.list', compact('orders', 'keyword', 'status', 'count_pending', 'count_canceled', 'count_processing', 'count_shipped', 'count_delivered'));
    }

    public function action(Request $request){
        $list_check = $request->input('list_check');
        if($list_check){
            $act = $request->input('actions');
            if($act == 'pending'){
                foreach($list_check as $k => $id){
                    $order = Order::find($id);
                    $order->status = 'pending';
                    $order->save();
                }
                return redirect()->route('order.list')->with('status', 'Chuyển đơn hàng sang trạng thái chờ thanh toán thành công !!');
            }
            if($act == 'processing'){
                foreach($list_check as $k => $id){
                    $order = Order::find($id);
                    $order->status = 'processing';
                    $order->save();
                }
                return redirect()->route('order.list')->with('status', 'Chuyển đơn hàng sang trạng thái đang xử lý thành công !!');
            }
            if($act == 'shipped'){
                foreach($list_check as $k => $id){
                    $order = Order::find($id);
                    $order->status = 'shipped';
                    $order->save();
                }
                return redirect()->route('order.list')->with('status', 'Chuyển đơn hàng sang trạng thái đang vận chuyển thành công !!');
            }
            if($act == 'delivered'){
                foreach($list_check as $k => $id){
                    $order = Order::find($id);
                    $order->status = 'delivered';
                    $order->save();
                }
                return redirect()->route('order.list')->with('status', 'Chuyển đơn hàng sang trạng thái đang hoàn tất thành công !!');
            }
            if($act == 'canceled'){
                foreach($list_check as $k => $id){
                    $order = Order::find($id);
                    $order->status = 'canceled';
                    $order->save();
                }
                return redirect()->route('order.list')->with('status', 'Chuyển đơn hàng sang trạng thái đơn hàng hủy thành công !!');
            }
        }
        return redirect()->route('order.list');

    }
    public function delete($id) {
        $order = Order::find($id);
        $order->delete();
        return redirect()->route('order.list')->with('status', 'Bạn đã xóa đơn hàng thành công !');
    }
    public function edit($id) {
        $order = Order::where('orders.id', $id)
            ->join('customers', 'orders.customer_id', '=', 'customers.id')
            ->select('orders.*', 'customers.*')
            ->first();
        // return $order;
        return view('order.edit', compact('order', 'id'));
    }
    public function update(Request $request, $id) {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|max:255',
            'address'=> 'required|string|max:255',
            'phone' => 'required|digits:10|regex:/^0/',
            'payment_method' => 'required',

        ],
        [
            'required' => ':attribute không được để trống!!',
            'max' => ':attribute có độ dài tối thiểu :max ký tự',
            'string' => 'Định dạng sai',
            'regex' => ':attribute không phải định dạng số điện thoại',
            'digits'=> 'Số điện thoại có 10 chữ số'
        ],
        [
            'name' => 'Họ và tên',
            'address' => 'Địa chỉ',
            'phone' => 'Số điện thoại',
            'payment_method' => 'Phương thức thanh toán'
        ]);
        // return $request->all();
        $order = Order::find($id);
        $customer = Customer::find($order->customer_id);
        $customer->update([
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'phone_number' => $request->input('phone'),
            'address' => $request->input('address'),
        ]);
        $order->update([
            'payment_method' => $request->input('payment_method'),
            'shipping_address' => $request->input('address'),
            'status' => $request->input('status')
        ]);
        return redirect()->route('order.list')->with('status', 'Cập nhật đơn hàng thành công !!');
    }
}
