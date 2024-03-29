@extends('layouts.guest')

@section('content')
<div id="main-content-wp" class="home-page clearfix">
    <div class="wp-inner">
        <div class="main-content fl-right">
            <div class="section" id="slider-wp">
                <div class="section-detail">
                    @foreach ($sliders as $slider)
                    <div class="item">
                        <a href="{{ route('product.detail', $slider->url) }}">
                            <img src="{{ asset('storage/photos/1/'.$slider->images->url) }} " alt="">
                        </a>
                    </div>
                    @endforeach
                </div>
            </div>
            <div class="section" id="support-wp">
                <div class="section-detail">
                    <ul class="list-item clearfix">
                        <li>
                            <div class="thumb">
                                <img src="public/guest/images/icon-1.png">
                            </div>
                            <h3 class="title">Miễn phí vận chuyển</h3>
                            <p class="desc">Tới tận tay khách hàng</p>
                        </li>
                        <li>
                            <div class="thumb">
                                <img src="public/guest/images/icon-2.png">
                            </div>
                            <h3 class="title">Tư vấn 24/7</h3>
                            <p class="desc">1900.9999</p>
                        </li>
                        <li>
                            <div class="thumb">
                                <img src="public/guest/images/icon-3.png">
                            </div>
                            <h3 class="title">Tiết kiệm hơn</h3>
                            <p class="desc">Với nhiều ưu đãi cực lớn</p>
                        </li>
                        <li>
                            <div class="thumb">
                                <img src="public/guest/images/icon-4.png">
                            </div>
                            <h3 class="title">Thanh toán nhanh</h3>
                            <p class="desc">Hỗ trợ nhiều hình thức</p>
                        </li>
                        <li>
                            <div class="thumb">
                                <img src="public/guest/images/icon-5.png">
                            </div>
                            <h3 class="title">Đặt hàng online</h3>
                            <p class="desc">Thao tác đơn giản</p>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="section" id="feature-product-wp">
                <div class="section-head">
                    <h3 class="section-title">Sản phẩm nổi bật</h3>
                </div>
                <div class="section-detail">
                    <ul class="list-item">
                        @foreach ($product_is_features as $product_is_feature)
                        <li>
                            <a href="{{ route('product.detail', $product_is_feature->slug) }}" title="{{ $product_is_feature->name }}" class="thumb">
                                <img src="{{ asset('storage/photos/1/Product/'. getImageUrlForProduct($product_is_feature->id)) }}">
                            </a>
                            <a href="{{ route('product.detail', $product_is_feature->slug) }}" title="" class="product-name">{{ $product_is_feature->name }}</a>
                            <div class="price">
                                <span class="new">{{ number_format($product_is_feature->price, 0, '', '.') }}đ</span>
                                <span class="old">{{ number_format($product_is_feature->old_price, 0, '', '.') }}đ</span>
                            </div>
                            <div class="action clearfix">
                                <a href="{{ route('cart.add', $product_is_feature->slug) }}" title="" class="add-cart fl-left">Thêm giỏ hàng</a>
                                <a href="{{ route('cart.checkout', $product_is_feature->slug) }}" title="" class="buy-now fl-right">Mua ngay</a>
                            </div>
                        </li>
                        @endforeach
                    </ul>
                </div>
            </div>
            <div class="section" id="list-product-wp">
                <div class="section-head">
                    <h3 class="section-title">Điện thoại</h3>
                </div>
                <div class="section-detail">
                    <ul class="list-item clearfix">
                        @foreach ($phones as $phone)
                        <li>
                            <a href="{{ route('product.detail', $phone->slug) }}" title="" class="thumb">
                                <img src="{{ asset('storage/photos/1/Product/'. getImageUrlForProduct($phone->id)) }}">
                            </a>
                            <a href="{{ route('product.detail', $phone->slug) }}" title="" class="product-name">{{ $phone->name }}</a>
                            <div class="price">
                                <span class="new">{{ number_format($phone->price, 0, '', '.') }}đ</span>
                                <span class="old">{{ number_format($phone->old_price, 0, '', '.') }}đ</span>
                            </div>
                            <div class="action clearfix">
                                <a href="{{ route('cart.add', $phone->slug) }}" title="Thêm giỏ hàng" class="add-cart fl-left">Thêm giỏ hàng</a>
                                <a href="{{ route('cart.checkout', $phone->slug) }}" title="Mua ngay" class="buy-now fl-right">Mua ngay</a>
                            </div>
                        </li>
                        @endforeach
                    </ul>
                </div>
            </div>
            <div class="section" id="list-product-wp">
                <div class="section-head">
                    <h3 class="section-title">Laptop</h3>
                </div>
                <div class="section-detail">
                    <ul class="list-item clearfix">
                        @foreach ($laptops as $laptop)
                        <li>
                            <a href="{{ route('product.detail', $laptop->slug) }}" title="" class="thumb">
                                <img src="{{ asset('storage/photos/1/Product/'. getImageUrlForProduct($laptop->id)) }}">
                            </a>
                            <a href="{{ route('product.detail', $laptop->slug) }}" title="{{ $laptop->name }}" class="product-name">{{ $laptop->name }}</a>
                            <div class="price">
                                <span class="new">{{ number_format($laptop->price, 0, '', '.') }}đ</span>
                                <span class="old">{{ number_format($laptop->old_price, 0, '', '.') }}đ</span>
                            </div>
                            <div class="action clearfix">
                                <a href="{{ route('cart.add', $laptop->slug) }}" title="Thêm giỏ hàng" class="add-cart fl-left">Thêm giỏ hàng</a>
                                <a href="{{ route('cart.checkout', $laptop->slug) }}" title="Mua ngay" class="buy-now fl-right">Mua ngay</a>
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
                            <a href="{{ route('product.main', $category->slug) }}" title="{{ $category->name }}">{{ $category->name }}</a>
                            @if(count($category->children))
                            <ul class="sub-menu">
                                @foreach ($category->children as $child)
                                <li>
                                    <a href="{{ route('product.main', $child->slug) }}" title="{{ $child->name }}">{{ $child->name }}</a>
                                    @if(count($child->children))
                                    <ul class="sub-menu">
                                        @foreach ($child->children as $children)
                                        <li>
                                            <a href="{{ route('product.main', $children->slug) }}" title="{{ $children->name }}">{{ $children->name }}</a>
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
            <div class="section" id="selling-wp">
                <div class="section-head">
                    <h3 class="section-title">Sản phẩm bán chạy</h3>
                </div>
                <div class="section-detail">
                    <ul class="list-item">
                        @foreach ($topProducts as $topProduct)
                        <li class="clearfix">
                            <a href="{{ route('product.detail', $topProduct->slug) }}" title="{{ $topProduct->name }}" class="thumb fl-left">
                                <img src="{{ asset('storage/photos/1/Product/'. getImageUrlForProduct($topProduct->id)) }}" alt="{{ $topProduct->name }}">
                            </a>
                            <div class="info fl-right">
                                <a href="{{ route('product.detail', $topProduct->slug) }}" title="" class="product-name">{{ $topProduct->name }}</a>
                                <div class="price">
                                    <span class="new">{{ number_format($topProduct->price, 0, '', '.') }}đ</span>
                                    <span class="old">{{ number_format($topProduct->old_price, 0, '', '.') }}đ</span>
                                </div>
                                <a href="{{ route('cart.checkout', [($topProduct->slug)]) }}" title="Mua ngay" class="buy-now">Mua ngay</a>
                                {{--  <a href="{{ route('cart.checkout', $topProduct->slug) }}" title="Mua ngay" class="buy-now">Mua ngay</a>  --}}
                            </div>
                        </li>
                        @endforeach
                    </ul>
                </div>
            </div>
            <div class="section" id="banner-wp">
                <div class="section-detail">
                    <a href="" title="" class="thumb">
                        <iframe width="560" height="315" src="https://www.youtube.com/embed/F084mTHtBpI?si=0kQpanvYLpD7RV2e" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
