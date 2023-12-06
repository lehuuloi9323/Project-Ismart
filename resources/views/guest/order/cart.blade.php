@extends('layouts.guest')
@section('title', 'Giỏ hàng')
@section('content')
<div id="main-content-wp" class="cart-page">
    <div class="section" id="breadcrumb-wp">
        <div class="wp-inner">
            <div class="section-detail">
                <ul class="list-item clearfix">
                    <li>
                        <a href="?page=home" title="">Trang chủ</a>
                    </li>
                    <li>
                        <a href="" title="">Sản phẩm làm đẹp da</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div id="wrapper" class="wp-inner clearfix">
        <div class="section" id="info-cart-wp">
            <div class="section-detail table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <td>Mã sản phẩm</td>
                            <td>Ảnh sản phẩm</td>
                            <td>Tên sản phẩm</td>
                            <td>Giá sản phẩm</td>
                            <td>Số lượng</td>
                            <td colspan="2">Thành tiền</td>
                        </tr>
                    </thead>
                    <tbody>
                        @if(Cart::count() > 0)
                        @foreach (Cart::content() as $row)
                        <tr>

                            <td>#{{ $row->id }}</td>
                            <td>
                                <a href="{{ route('product.detail', $row->options->slug) }}" title="" class="thumb">
                                    <img src="{{ asset('storage/photos/1/Product/'.$row->options->thumbnail) }}" alt="">
                                </a>
                            </td>
                            {{--  {{ asset('storage/photos/1/Product/'.$row->options->thumbnail }}  --}}
                            <td>
                                <a href="{{ route('product.detail', $row->options->slug) }}" title="" class="name-product">{{ $row->options->slug }}</a>
                            </td>
                            <td>{{ number_format($row->price, 0, '', '.') }}đ</td>
                            <td>
                                <input type="number" name="num-order" value="{{ $row->qty }}" class="num-order" max="{{ $row->options->max_order }}" style="width: 50px;">
                            </td>
                            <td>{{ number_format($row->total, 0, '', '.') }}đ</td>
                            <td>
                                <a href="{{ route('cart.remove', $row->rowId) }}" title="" class="del-product"><i class="fa fa-trash-o"></i></a>
                            </td>
                        </tr>
                        @endforeach
                        @else
                        <tr>
                            <td colspan="6">Không có sản phẩm nào trong giỏ hàng</td>
                        </tr>
                        @endif
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="7">
                                <div class="clearfix">
                                    <p id="total-price" class="fl-right">Tổng giá: <span>{{ Cart::total() }}đ</span></p>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="7">
                                <div class="clearfix">
                                    <div class="fl-right">
                                        <a href="" title="" id="update-cart">Cập nhật giỏ hàng</a>
                                        <a href="{{ route('cart.checkout') }}" title="" id="checkout-cart">Thanh toán</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
        <div class="section" id="action-cart-wp">
            <div class="section-detail">
                <p class="title">Click vào <span>“Cập nhật giỏ hàng”</span> để cập nhật số lượng. Nhập vào số lượng <span>0</span> để xóa sản phẩm khỏi giỏ hàng. Nhấn vào thanh toán để hoàn tất mua hàng.</p>
                <a href="?page=home" title="" id="buy-more">Mua tiếp</a><br/>
                <a href="{{ route('cart.destroy') }}" title="" id="delete-cart">Xóa giỏ hàng</a>
            </div>
        </div>
    </div>
</div>
@endsection
