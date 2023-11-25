@extends('layouts.guest')
@section('title', 'Chi tiết sản phẩm')
@section('content')
<div id="main-content-wp" class="clearfix detail-product-page">
    <div class="wp-inner">
        <div class="secion" id="breadcrumb-wp">
            <div class="secion-detail">
                <ul class="list-item clearfix">
                    <li>
                        <a href="" title="">Trang chủ</a>
                    </li>
                    <li>
                        <a href="" title="">Điện thoại</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main-content fl-right">
            <div class="section" id="detail-product-wp">
                <div class="section-detail clearfix">
                    <div class="thumb-wp fl-left">
                        <a title="" id="main-thumb">
                            <img id="zoom" src="{{ asset('storage/photos/1/Product/'.getImageUrlForProduct($product->id)) }}" style="width: 350px; height: 350px;"
                             data-zoom-image="{{ asset('storage/photos/1/Product/'.getImageUrlForProduct($product->id)) }}"/>
                        </a>
                        <div id="list-thumb">
                            @foreach ($images as $image)
                            <a data-image="{{ asset('storage/photos/1/Product/'.$image->url) }}" data-zoom-image="{{ asset('storage/photos/1/Product/'.$image->url) }}">
                                <img id="zoom" src="{{ asset('storage/photos/1/Product/'.$image->url) }}" />
                            </a>
                            @endforeach
                            {{--  <a href="" data-image="https://media3.scdn.vn/img2/2017/10_30/BlccRg_simg_ab1f47_350x350_maxb.jpg" data-zoom-image="https://media3.scdn.vn/img2/2017/10_30/BlccRg_simg_70aaf2_700x700_maxb.jpg">
                                <img id="zoom" src="https://media3.scdn.vn/img2/2017/10_30/BlccRg_simg_02d57e_50x50_maxb.jpg" />
                            </a>
                            <a href="" data-image="https://media3.scdn.vn/img2/2017/10_30/sxlpFs_simg_ab1f47_350x350_maxb.jpg" data-zoom-image="https://media3.scdn.vn/img2/2017/10_30/sxlpFs_simg_70aaf2_700x700_maxb.jpg">
                                <img id="zoom" src="https://media3.scdn.vn/img2/2017/10_30/sxlpFs_simg_02d57e_50x50_maxb.jpg" />
                            </a>
                            <a href="" data-image="https://media3.scdn.vn/img2/2017/10_30/BlccRg_simg_ab1f47_350x350_maxb.jpg" data-zoom-image="https://media3.scdn.vn/img2/2017/10_30/BlccRg_simg_70aaf2_700x700_maxb.jpg">
                                <img id="zoom" src="https://media3.scdn.vn/img2/2017/10_30/BlccRg_simg_02d57e_50x50_maxb.jpg" />
                            </a>
                            <a href="" data-image="https://media3.scdn.vn/img2/2017/10_30/sxlpFs_simg_ab1f47_350x350_maxb.jpg" data-zoom-image="https://media3.scdn.vn/img2/2017/10_30/sxlpFs_simg_70aaf2_700x700_maxb.jpg">
                                <img id="zoom" src="https://media3.scdn.vn/img2/2017/10_30/sxlpFs_simg_02d57e_50x50_maxb.jpg" />
                            </a>
                            <a href="" data-image="https://media3.scdn.vn/img2/2017/10_30/BlccRg_simg_ab1f47_350x350_maxb.jpg" data-zoom-image="https://media3.scdn.vn/img2/2017/10_30/BlccRg_simg_70aaf2_700x700_maxb.jpg">
                                <img id="zoom" src="https://media3.scdn.vn/img2/2017/10_30/BlccRg_simg_02d57e_50x50_maxb.jpg" />
                            </a>  --}}
                        </div>
                    </div>
                    <div class="thumb-respon-wp fl-left">
                        <img src="public/images/img-pro-01.png" alt="">
                    </div>
                    <div class="info fl-right">
                        <h3 class="product-name">{{ $product->name }}</h3>
                        <div class="desc">
                            {!! $product->details !!}
                        </div>
                        <div class="num-product">
                            <span class="title">Sản phẩm: </span>
                            <span class="status">Còn hàng</span>
                        </div>
                        <p class="price">{{ number_format($product->price, 0, '', '.') }}đ</p>
                    <form action="{{ route('cart.add', $product->id) }}" method="GET">
                        <div id="num-order-wp">
                            {{--  <a title="" id="minus"><i class="fa fa-minus"></i></a>  --}}
                            <label for="num-order">Số lượng: </label>
                            <input type="number" name="num_order" value="1" min="1" max="{{ $product->stock_quantity }}" id="num-order" style="width: 50px;">
                            {{--  <a title="" id="plus"><i class="fa fa-plus"></i></a>  --}}
                        </div>
                        {{--  <a href="" title="Thêm giỏ hàng" class="add-cart">Thêm giỏ hàng</a>  --}}
                        <input type="submit" class="add-cart" value="Thêm giỏ hàng" title="Thêm giỏ hàng">
                    </form>
                    </div>
                </div>
            </div>
            <div class="section" id="post-product-wp">
                <div class="section-head">
                    <h3 class="section-title">Mô tả sản phẩm</h3>
                </div>
                <div class="section-detail">
                {!! $product->description !!}
                </div>
            </div>
            <div class="section" id="same-category-wp">
                <div class="section-head">
                    <h3 class="section-title">Cùng chuyên mục</h3>
                </div>
                <div class="section-detail">
                    <ul class="list-item">
                        @foreach ($product_same_category as $same_category)
                        <li>
                            <a href="{{ route('product.detail', $same_category->id) }}" title="" class="thumb">
                                <img src="{{ asset('storage/photos/1/Product/'.getImageUrlForProduct($same_category->id)) }}">
                            </a>
                            <a href="{{ route('product.detail', $same_category->id) }}" title="" class="product-name">{{ $same_category->name }}</a>
                            <div class="price">
                                <span class="new">{{ number_format($same_category->price, 0, '', '.') }}đ</span>
                                <span class="old">{{ number_format($same_category->old_price, 0, '', '.') }}đ</span>
                            </div>
                            <div class="action clearfix">
                                <a href="{{ route('cart.add', $same_category->id) }}" title="" class="add-cart fl-left">Thêm giỏ hàng</a>
                                <a href="{{ route('cart.checkout', $same_category->id) }}" title="" class="buy-now fl-right">Mua ngay</a>
                            </div>
                        </li>
                        @endforeach
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
            <div class="section" id="banner-wp">
                <div class="section-detail">
                    <a href="" title="" class="thumb">
                        <img src="public/images/banner.png" alt="">
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
