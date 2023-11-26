@extends('layouts.admin')

@section('title','Chỉnh sửa đơn hàng')

@section('content')
<div id="content" class="container-fluid">
    <div class="card">
        <div class="card-header font-weight-bold">
            Cập nhật đơn hàng
        </div>
        <div class="card-body">
            {!! Form::open(['route'=>['order.update',$id], 'method'=>'POST']) !!}
            @csrf
            <div class="form-group">
                {!! Form::label('name', 'Tên khách hàng') !!}
                {!! Form::text('name', $order->name, ['class'=> 'form-control', 'id'=>'name']) !!}
            </div>
            @error('name')
                <small class="text-danger d-block">{{ $message }}</small>
            @enderror

            <div class="form-group">
                {!! Form::label('email', 'Email') !!}
                {!! Form::email('email', $order->email, ['class'=> 'form-control', 'id'=>'email']) !!}
            </div>
            @error('email')
                <small class="text-danger d-block">{{ $message }}</small>
                @enderror

             <div class="form-group">
                {!! Form::label('phone', 'Số điện thoại') !!}
                {!! Form::number('phone', '0'.$order->phone_number, ['class'=> 'form-control', 'id'=>'phone']) !!}
            </div>
            @error('phone')
                <small class="text-danger d-block">{{ $message }}</small>
            @enderror
            <div class="form-group">
                {!! Form::label('address', 'Địa chỉ') !!}
                {!! Form::text('address', $order->address, ['class'=> 'form-control', 'id'=>'name']) !!}
            </div>
            @error('address')
                <small class="text-danger d-block">{{ $message }}</small>
            @enderror
            <div class="form-group">
                {!! Form::label('status', 'Địa chỉ') !!}
                {!! Form::select('status', ['pending'=> 'Chờ chuyển khoản', 'processing' => 'Đang xử lý', 'shipped'=> 'Đang vận chuyển',
                 'delivered' => 'Hoàn tất', 'canceled' => 'Đơn hàng hủy'], $order->status, ['class'=>'form-control']) !!}
            </div>
            @error('status')
                <small class="text-danger d-block">{{ $message }}</small>
            @enderror
            <div class="form-group">
                {!! Form::label('payment_method', 'Phương thức thanh toán') !!}
                {!! Form::select('payment_method', ['bank'=> 'Chuyển bằng thẻ ngân hàng', 'momo' => 'Chuyển bằng ví MoMo'], $order->payment_method, ['class'=>'form-control']) !!}
            </div>
            @error('status')
                <small class="text-danger d-block">{{ $message }}</small>
            @enderror

            <input type="submit" class="btn btn-primary" value="Cập nhật">
            {!! Form::close() !!}
        </div>
    </div>
</div>
@endsection
