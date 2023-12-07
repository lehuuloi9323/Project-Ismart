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
                                <input type="number" id="num_order_{{ $row->id }}" name="num_order" data-{{ $row->id }} = {{ $row->rowId }}  value="{{ $row->qty }}" class="num-order" max="{{ $row->options->max_order }}" min="1" style="width: 50px;">
                            </td>
                            <td id="sub_total_{{ $row->id }}">{{ number_format($row->total, 0, '', '.') }}đ</td>
                            <td>
                                <a href="{{ route('cart.remove', $row->rowId) }}" title="" class="del-product"><i class="fa fa-trash-o"></i></a>
                            </td>
                        </tr>
                        <script>
                            $(document).ready(function(){
                                $('#num_order_{{ $row->id }}').change(function(){
                                    var product_id = $(this).data('{{ $row->id }}');
                                    var num_order = $(this).val();
                                    //var data = {num_order: num_order}
                                    //console.log(data);
                                    //console.log(product_id);
                                     $.ajax({
                                         url: '{{ route('cart.update') }}',
                                         method: 'POST',
                                         data:
                                         {
                                            _token: '{{ csrf_token() }}',
                                            'product_id': product_id,
                                            'num_order': num_order,
                                         },
                                         success: function (response) {
                                             if (response.success) {
                                                console.log(response.num_order);
                                                console.log(response.product_id);
                                                console.log(response.sub_total);
                                                console.log(response.total);
                                                $('#sub_total_{{ $row->id }}').text(response.sub_total);
                                                $('#total').text(response.total);
                                                }
                                            else{
                                                return alert('No Ok!');
                                            }
                                         },
                                         error: function (error) {
                                             console.log(error);
                                         },
                                     });
                                });
                            });
                        </script>
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
                                    <p id="total-price" class="fl-right">Tổng giá: <span id="total">{{ Cart::total() }}</span></p>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="7">
                                <div class="clearfix">
                                    <div class="fl-right">
                                        {{--  <a href="" title="" id="update-cart">Cập nhật giỏ hàng</a>  --}}
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
