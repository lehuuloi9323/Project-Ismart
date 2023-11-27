@extends('layouts.admin')

@section('title','Chi tiết đơn hàng')

@section('content')
<div id="content" class="container-fluid">
    <div class="card">
        <div class="card-header font-weight-bold">
            Chi tiết đơn hàng
        </div>
        <div class="card-body">
            <div class="col-md-12">
                <div class="col-md-12 font-weight-bold text-center" style="font-size: 30px">ISMART</div>
                <div class="col-md-4 offset-md-4 font-weight-bold pt-3" style="background-color: #EDEAAD; min-height: 180px">
                    <div style="font-size: 25px;" class="text-center">HÓA ĐƠN</div>
                    <div>
                        <div>Mã đơn hàng: <span style="color: #BA0057">#IS-II{{ $order->id }}</span></div>
                        <div>Họ và tên: {{ $customer->name }}</div>
                        <div>Số điện thoại: 0{{ substr(number_format($customer->phone_number, 0, '', '.'), 0, 4) . substr(number_format($customer->phone_number, 0, '', '.'), 4, 3) . substr(number_format($customer->phone_number, 0, '', '.'), 7) }}</div>
                        <div>Địa chỉ: {{ $customer->address }}</div>
                        <div>Email: {{ $customer->email }}</div>
                    </div>

                </div>
                <div class="col-md-4 offset-md-4 font-weight-bold" style="background-color: #EDEAAD;">

                        <table class="table text-center" style="font-size: 10px">
                            <thead>
                              <tr>
                                <th scope="col">STT</th>
                                <th scope="col">Tên sản phẩm</th>
                                <th scope="col">Số lượng</th>
                                <th scope="col">Thành tiền</th>
                              </tr>
                            </thead>
                            <tbody>
                                @foreach ($order_items as  $order_item)
                              <tr>
                                <th scope="row">{{ $loop->iteration }}</th>
                                <td>{{ $order_item->name }}</td>
                                <td>{{ $order_item->quantity }}</td>
                                <td>{{ number_format(optional($order_item->price, function ($value) { return $value; }) * optional($order_item->quantity, function ($value) { return $value; }), 0, '', '.') }}đ
                                </td>
                              </tr>
                              @endforeach
                            </tbody>
                          </table>
                    <div class="col-md-12">Tổng tiền: <span style="color: #BA0057">{{ number_format($order->total_amount, 0, '', '.') }}đ</span>
                        @if($order->status == 'pending')
                        <span class="border border-danger border-4 rounded-circle" style="padding: 15px; color: #BA0057; font-size: 10px; font-weight: bold">Chưa thanh toán</span>

                        @elseif($order->status == 'canceled')
                        <span class="border border-black border-4 rounded-circle" style="padding: 15px; font-size: 10px; font-weight: bold">Đơn hủy</span>
                        @else
                        <span class="border border-danger border-4 rounded-circle" style="padding: 15px; color: #BA0057; font-size: 10px; font-weight: bold">Đã thanh toán</span>
                        @endif
                    </div>

                    <br>

                </div>
            </div>
        </div>

    </div>
</div>
@endsection
