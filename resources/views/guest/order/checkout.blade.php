@extends('layouts.guest')
@section('title', 'Thanh toán')
@section('content')
<div id="main-content-wp" class="checkout-page">
    <div class="section" id="breadcrumb-wp">
        <div class="wp-inner">
            <div class="section-detail">
                <ul class="list-item clearfix">
                    <li>
                        <a href="?page=home" title="">Trang chủ</a>
                    </li>
                    <li>
                        <a href="" title="">Thanh toán</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    @if (!empty(session('status')))
    <div class="alert alert-success text-center">Thông tin thanh toán đơn hàng</div>
    <div class="alert alert-success text-center">{{ Session('status') }}</div>
    @endif
    @if (!empty(session('warning')))
    <div class="alert alert-warning text-center">{{ Session('warning') }}</div>
    @endif
    <div id="wrapper" class="wp-inner clearfix">
        <div class="section" id="customer-info-wp">
            <div class="section-head">
                <h1 class="section-title">Thông tin khách hàng</h1>
            </div>
            <div class="section-detail">
                <form method="POST" action="{{ route('cart.payment') }}" name="form-checkout">

                    <div class="form-row clearfix">
                        <div class="form-col fl-left">
                            <label for="fullname">Họ tên</label>
                            <input type="text" name="fullname" id="fullname" value="{{ old('fullname') }}">
                            @error('fullname')
                                <small class="text-danger d-block" style="color: #d9534f; display: block">{{ $message }}</small>
                            @enderror
                        </div>
                        <div class="form-col fl-right">
                            <label for="email">Email</label>
                            <input type="email" name="email" id="email" value="{{ old('email') }}">
                            @error('email')
                                <small class="text-danger d-block" style="color: #d9534f; display: block">{{ $message }}</small>
                            @enderror
                        </div>
                    </div>
                    <div class="form-row clearfix">
                        <div class="form-col fl-left">
                            <label for="address">Địa chỉ</label>
                            <input type="text" name="address" id="address" value="{{ old('address') }}">
                            @error('address')
                                <small class="text-danger d-block" style="color: #d9534f; display: block">{{ $message }}</small>
                            @enderror
                        </div>
                        <div class="form-col fl-right">
                            <label for="phone">Số điện thoại</label>
                            <input type="text" name="phone" id="phone" value="{{ old('phone') }}">
                            @error('phone')
                                <small class="text-danger d-block" style="color: #d9534f; display: block">{{ $message }}</small>
                            @enderror
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-col">
                            <label for="notes">Ghi chú</label>
                            <textarea name="note">{{ old('note') }}</textarea>
                            @error('note')
                                <small class="text-danger d-block" style="color: #d9534f; display: block">{{ $message }}</small>
                            @enderror
                        </div>
                            <input type="text" name="payment_method" id="payment-method" style="display: none;">
                    </div>
                    <input type="submit" id="order" value="Đặt hàng" style="display: none">
                    @csrf
                </form>
            </div>
        </div>
        <div class="section" id="order-review-wp">
            <div class="section-head">
                <h1 class="section-title">Thông tin đơn hàng</h1>
            </div>
            <div class="section-detail">
                <table class="shop-table">
                    <thead>
                        <tr>
                            <td>Sản phẩm</td>
                            <td>Tổng</td>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach (Cart::content() as $row)
                        <tr class="cart-item">
                            <td class="product-name">{{ $row->name }}<strong class="product-quantity">x{{ $row->qty }}</strong></td>
                            <td class="product-total">{{ number_format($row->total, 0, '', '.') }}đ</td>
                        </tr>
                        @endforeach
                    </tbody>
                    <tfoot>
                        <tr class="order-total">
                            <td>Tổng đơn hàng:</td>
                            <td><strong class="total-price">{{ Cart::total() }}đ</strong></td>
                        </tr>
                    </tfoot>
                </table>
                <div id="payment-checkout-wp">
                    @error('payment_method')
                                <small class="text-danger d-block" style="color: #d9534f; display: block">{{ $message }}</small>
                            @enderror
                    <ul id="payment_methods">
                        <li>
                            <input type="radio" id="payment-momo" name="payment-method" value="momo">
                            <label for="payment-momo">Thanh toán qua Momo</label>
                        </li>
                        <li>
                            <input type="radio" id="payment-bank" name="payment-method" value="bank">
                            <label for="payment-bank">Thanh toán qua thẻ ngân hàng</label>
                        </li>
                    </ul>
                </div>
                <div class="place-order-wp clearfix">
                    <input type="submit" id="order-now" value="Đặt hàng">
                </div>
                <script>
                    $(document).ready(function() {
                        $('#order-now').click(function() {
                            $('#order').click();
                        });

                        $('input[name="payment-method"]').change(function() {
                            // Get the selected value

                            var selectedValue = $('input[name="payment-method"]:checked').val();
                            console.log(selectedValue);
                            // Show the selected value in the input text with id "payment-method"
                            $('#payment-method').val(selectedValue);
                        });

                    });
                </script>
            </div>
        </div>
    </div>
</div>

@endsection
