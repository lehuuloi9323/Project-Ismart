@extends('layouts.guest')
@section('title', 'Sản phẩm')
@section('content')
<div id="main-content-wp" class="clearfix category-product-page">
    <div class="wp-inner">
        <div class="secion" id="breadcrumb-wp">
            <div class="secion-detail">
                <ul class="list-item clearfix">
                    <li>
                        <a href="{{ route('index') }}" title="">Trang chủ</a>
                    </li>
                    <li>
                        <a href="{{ route('product.main', $ctg['id']) }}" title="">{{ $ctg['name'] }}</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main-content fl-right">
            <div class="section" id="list-product-wp">
                <div class="section-head clearfix">
                    <h3 class="section-title fl-left">{{ $ctg['name'] }}</h3>
                    <div class="filter-wp fl-right">
                        <p class="desc">Hiển thị {{ $products->count() }} trên {{ $products->total() }} sản phẩm</p>
                        <div class="form-filter">
                            <form method="GET">
                                <select name="arrange">
                                    <option value="desc">Sắp xếp</option>
                                    <option value="asc">Từ A-Z</option>
                                    <option value="desc">Từ Z-A</option>
                                    <option value="price_desc">Giá cao xuống thấp</option>
                                    <option value="price_asc">Giá thấp lên cao</option>
                                </select>
                                <button type="submit" id="sb">Lọc</button>

                        </div>
                    </div>
                </div>
                {{--  {{ $arrange }}
                {{ $r_price }}  --}}
                <div class="section-detail">
                    @if($products->total() > 0)
                    <ul class="list-item clearfix">


                        @foreach ($products as $product)
                        <li>
                            <a href="?page=detail_product" title="" class="thumb">
                                <img src="{{ asset('storage/photos/1/Product/'. getImageUrlForProduct($product->id)) }}">
                            </a>
                            <a href="?page=detail_product" title="" class="product-name">{{ $product->name }}</a>
                            <div class="price">
                                <span class="new">{{ number_format($product->price, 0, '', '.') }}đ</span>
                                <span class="old">{{ number_format($product->old_price, 0, '', '.') }}đ</span>
                            </div>
                            <div class="action clearfix">
                                <a href="{{ route('cart.add', $product->id) }}" title="Thêm giỏ hàng" class="add-cart fl-left">Thêm giỏ hàng</a>
                                <a href="{{ route('cart.checkout', $product->id) }}" title="Mua ngay" class="buy-now fl-right">Mua ngay</a>
                            </div>
                        </li>
                        @endforeach

                    </ul>
                    @else
                    <div class="text-center fw-bold text-secondary" style="font-size: 25px">Không có sản phẩm như bạn mong muốn !!</div>
                    @endif

                </div>
            </div>
            <div class="section" id="paging-wp">
                <div class="section-detail">
                    <ul class="list-item clearfix">
                        {{--  <li>
                            <a href="" title="">1</a>
                        </li>
                        <li>
                            <a href="" title="">2</a>
                        </li>
                        <li>
                            <a href="" title="">3</a>
                        </li>  --}}
                        {{ $products->links() }}
                    </ul>
                </div>
            </div>
        </div>
        <div class="sidebar fl-left">
            <div class="section" id="category-product-wp">
                <div class="section-head">
                    <h3 class="section-title">Danh mục sản phẩm</h3>
                </div>
                <div class="secion-detail">
                    <ul class="list-item">
                        @foreach ($categories as $category)
                        <li>
                            <a href="{{ route('product.main', $category->id) }}" title="{{ $category->name }}">{{ $category->name }}</a>
                            @if(count($category->children))
                            <ul class="sub-menu">
                                @foreach ($category->children as $child)
                                <li>
                                    <a href="{{ route('product.main', $child->id) }}" title="{{ $child->name }}">{{ $child->name }}</a>
                                    @if(count($child->children))
                                    <ul class="sub-menu">
                                        @foreach ($child->children as $children)
                                        <li>
                                            <a href="{{ route('product.main', $children->id) }}" title="{{ $children->name }}">{{ $children->name }}</a>
                                        </li>
                                        @endforeach
                                    </ul>
                                    @endif
                                </li>
                                @endforeach
                            </ul>
                            @endif
                        </li>
                        @endforeach
                    </ul>
                </div>
            </div>
            <div class="section" id="filter-product-wp">
                <div class="section-head">
                    <h3 class="section-title">Bộ lọc</h3>
                </div>
                <div class="section-detail">

                        <table>
                            <thead>
                                <tr>
                                    <td colspan="2">Giá</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><input type="radio" name="r_price" value="small_500" id="small_500"  @if($r_price == 'small_500')
                                        checked
                                    @endif></td>
                                    <td><label for="small_500">Dưới 500.000đ</label></td>
                                </tr>
                                <tr>
                                    <td><input type="radio" name="r_price" value="500_1000" id="500_1000" @if($r_price == '500_1000')
                                        checked
                                    @endif></td>
                                    <td><label for="500_1000">500.000đ - 1.000.000đ</label></td>
                                </tr>
                                <tr>
                                    <td><input type="radio" name="r_price" value="1000_5000" id="1000_5000" @if($r_price == '1000_5000')
                                        checked
                                    @endif></td>
                                    <td><label for="1000_5000">1.000.000đ - 5.000.000đ</label></td>
                                </tr>
                                <tr>
                                    <td><input type="radio" name="r_price" value="5000_10000" id="5000_10000" @if($r_price == '5000_10000')
                                        checked
                                    @endif></td>
                                    <td><label for="5000_10000">5.000.000đ - 10.000.000đ</label></td>
                                </tr>
                                <tr>
                                    <td><input type="radio" name="r_price" value="big_10000" id="big_10000" @if($r_price == 'big_10000')
                                        checked
                                    @endif></td>
                                    <td><label for="big_10000">Trên 10.000.000đ</label></td>
                                </tr>
                            </tbody>
                        </table>

                        {{--  <table>
                            <thead>
                                <tr>
                                    <td colspan="2">Hãng</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><input type="radio" name="type" value="phone" id="phone"></td>
                                    <td><label for="phone">Điện thoại</label></td>
                                </tr>
                            </tbody>
                        </table>  --}}

                    </form>
                    <input type="submit" value="Tìm" name="btn" id="btn" class="btn btn-primary" style="width:100px;">
                </div>
            </div>
            <script>
                $(document).ready(function() {
                    $("#btn").click(function() {
                        $("#sb").click();
                    });
                });
            </script>
            <div class="section" id="banner-wp">
                <div class="section-detail">
                    <a href="?page=detail_product" title="" class="thumb">
                        <img src="public/images/banner.png" alt="">
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
