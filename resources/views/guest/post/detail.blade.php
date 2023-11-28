@extends('layouts.guest')
@section('title', 'Chi tiết bài viết')
@section('content')
<div id="main-content-wp" class="clearfix detail-blog-page">
    <div class="wp-inner">
        <div class="secion" id="breadcrumb-wp">
            <div class="secion-detail">
                <ul class="list-item clearfix">
                    <li>
                        <a href="" title="">Trang chủ</a>
                    </li>
                    <li>
                        <a href="" title="">Blog</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main-content fl-right">
            <div class="section" id="detail-blog-wp">
                <div class="section-head clearfix">
                    <h3 class="section-title">{{ $post->title }}</h3>
                </div>
                <div class="section-detail">
                    <span class="create-date">{{ $post->created_at }}</span>
                    <div class="detail">
                        <p><strong>{!! $post->excerpt !!}</strong></p>
                        {!! $post->content !!}
                    </div>
                </div>
            </div>
            <div class="section" id="social-wp">
                <div class="section-detail">
                    <div class="fb-like" data-href="" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
                    <div class="g-plusone-wp">
                        <div class="g-plusone" data-size="medium"></div>
                    </div>
                    <div class="fb-comments" id="fb-comment" data-href="" data-numposts="5"></div>
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
                            <a href="{{ route('post', $category->id) }}" title="{{ $category->name }}">{{ $category->name }}</a>
                            @if(count($category->children))
                            <ul class="sub-menu">
                                @foreach ($category->children as $child)
                                <li>
                                    <a href="{{ route('post', $child->id) }}" title="{{ $child->name }}">{{ $child->name }}</a>
                                    @if(count($child->children))
                                    <ul class="sub-menu">
                                        @foreach ($child->children as $children)
                                        <li>
                                            <a href="{{ route('post', $children->id) }}" title="{{ $children->name }}">{{ $children->name }}</a>
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
                            <a href="{{ route('product.detail', $topProduct->id) }}" title="{{ $topProduct->name }}" class="thumb fl-left">
                                <img src="{{ asset('storage/photos/1/Product/'. getImageUrlForProduct($topProduct->id)) }}" alt="{{ $topProduct->name }}">
                            </a>
                            <div class="info fl-right">
                                <a href="{{ route('product.detail', $topProduct->id) }}" title="" class="product-name">{{ $topProduct->name }}</a>
                                <div class="price">
                                    <span class="new">{{ number_format($topProduct->price, 0, '', '.') }}đ</span>
                                    <span class="old">{{ number_format($topProduct->old_price, 0, '', '.') }}đ</span>
                                </div>
                                <a href="{{ route('cart.checkout', $topProduct->id) }}" title="Mua ngay" class="buy-now">Mua ngay</a>
                            </div>
                        </li>
                        @endforeach
                    </ul>
                </div>
            </div>
            <div class="section" id="banner-wp">
                <div class="section-detail">
                    <a href="" title="" class="thumb">
                        <img src="public/guest/images/banner.png" alt="">
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
