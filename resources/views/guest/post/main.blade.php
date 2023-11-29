@extends('layouts.guest')
@section('title', 'Bài viết')
@section('content')
<div id="main-content-wp" class="clearfix blog-page">
    <div class="wp-inner">
        <div class="secion" id="breadcrumb-wp">
            <div class="secion-detail">
                <ul class="list-item clearfix">
                    <li>
                        <a href="" title="">Trang chủ</a>
                    </li>
                    <li>
                        <a href="" title="">{{ $ctg}}</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main-content fl-right">
            <div class="section" id="list-blog-wp">
                <div class="section-head clearfix">
                    <h3 class="section-title">{{ $ctg}}</h3>
                </div>
                <div class="section-detail">
                    <ul class="list-item">
                        @if($posts->total() > 0)


                        @foreach ($posts as $post)
                        <li class="clearfix">
                            <a href="{{ route('post.detail', $post->id) }}" title="" class="thumb fl-left">
                                <img src="{{ asset('storage/photos/1/Post/'. $post->image->url) }}" alt="">
                            </a>
                            <div class="info fl-right">
                                <a href="{{ route('post.detail', $post->id) }}" title="" class="title">{{ $post->title }}</a>
                                <span class="create-date">{{ $post->created_at }}</span>
                                <p class="desc">{!! $post->excerpt !!}</p>
                            </div>
                        </li>
                        @endforeach
                        @else
                        <div class="text-center">Không có bài viết nào !!</div>
                        @endif
                    </ul>
                </div>
            </div>
            <div class="section" id="paging-wp">
                <div class="section-detail">
                    <ul class="list-item clearfix">
                        {{ $posts->links() }}
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
