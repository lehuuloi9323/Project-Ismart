<!DOCTYPE html>
<html>
    <head>
        {{--  <title>ISMART STORE</title>  --}}
        <title>@yield('title')</title>
        <meta charset="UTF-8">
        <base href="http://localhost/adminIsmart/">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        {{--  <link href="public/css/bootstrap/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>  --}}
        <link href="{{ asset('guest/css/bootstrap/bootstrap-theme.min.css') }}" rel="stylesheet" type="text/css"/>
        {{--  <link href="public/css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>  --}}
        <link href="{{ asset('guest/css/bootstrap/bootstrap.min.css') }}" rel="stylesheet" type="text/css"/>
        {{--  <link href="public/reset.css" rel="stylesheet" type="text/css"/>  --}}
        <link href="{{ asset('guest/reset.css') }}" rel="stylesheet" type="text/css"/>
        {{--  <link href="public/css/carousel/owl.carousel.css" rel="stylesheet" type="text/css"/>  --}}
        <link href="{{ asset('guest/css/carousel/owl.carousel.css') }}" rel="stylesheet" type="text/css"/>
        {{--  <link href="public/css/carousel/owl.theme.css" rel="stylesheet" type="text/css"/>  --}}
        <link href="{{ asset('guest/css/carousel/owl.theme.css') }}" rel="stylesheet" type="text/css"/>
        {{--  <link href="public/css/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>  --}}
        <link href="{{ asset('guest/css/font-awesome/css/font-awesome.min.css') }}" rel="stylesheet" type="text/css"/>
        {{--  <link href="public/style.css" rel="stylesheet" type="text/css"/>  --}}
        <link href="{{ asset('guest/style.css') }}" rel="stylesheet" type="text/css"/>
        {{--  <link href="public/responsive.css" rel="stylesheet" type="text/css"/>  --}}
        <link href="{{ asset('guest/responsive.css') }}" rel="stylesheet" type="text/css"/>
        {{--  <script src="public/js/jquery-2.2.4.min.js" type="text/javascript"></script>  --}}
        <script src="{{ asset('guest/js/jquery-2.2.4.min.js') }}" type="text/javascript"></script>
        {{--  <script src="public/js/elevatezoom-master/jquery.elevatezoom.js" type="text/javascript"></script>  --}}
        <script src="{{ asset('guest/js/elevatezoom-master/jquery.elevatezoom.js') }}" type="text/javascript"></script>
        {{--  <script src="public/js/bootstrap/bootstrap.min.js" type="text/javascript"></script>  --}}
        <script src="{{ asset('guest/js/bootstrap/bootstrap.min.js') }}" type="text/javascript"></script>
        {{--  <script src="public/js/carousel/owl.carousel.js" type="text/javascript"></script>  --}}
        <script src="{{ asset('guest/js/carousel/owl.carousel.js') }}" type="text/javascript"></script>
        {{--  <script src="public/js/main.js" type="text/javascript"></script>  --}}
        <script src="{{ asset('guest/js/main.js') }}" type="text/javascript"></script>



    </head>
    <body>
        <div class="spinner-border text-secondary text z-3 position-fixed w-3 p-4" role="status" style="left: 50%; top: 50%; font-size: 100px;" id="spinner">
            <span class="visually-hidden">Loading...</span>
        </div>
        <div id="site">
            <div id="container">
                <div id="header-wp">
                    <div id="head-top" class="clearfix">
                        <div class="wp-inner">
                            <a href="" title="" id="payment-link" class="fl-left">Hình thức thanh toán</a>
                            <div id="main-menu-wp" class="fl-right">
                                <ul id="main-menu" class="clearfix">
                                    <li>
                                        <a href="{{ route('index') }}" title="">Trang chủ</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('product.main') }}" title="">Sản phẩm</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('post') }}" title="">Bài viết</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('post.detail', 'lien-he-voi-toi') }}" title="">Liên hệ</a>
                                    </li>


                                </ul>
                            </div>
                        </div>
                    </div>

                    <div id="head-body" class="clearfix">
                        <div class="wp-inner">
                            <a href="{{ route('index') }}" title="" id="logo" class="fl-left"><img src="{{ asset('guest/images/logo.png') }}"/></a>
                            <div id="search-wp" class="fl-left">
                                <form method="GET" action="{{ route('product.main') }}">
                                    <input type="text" name="keyword" id="s" placeholder="Nhập từ khóa tìm kiếm tại đây!">
                                    <button type="submit" id="sm-s">Tìm kiếm</button>
                                </form>
                            </div>
                            <div id="action-wp" class="fl-right">
                                <div id="advisory-wp" class="fl-left">
                                    <span class="title">Tư vấn</span>
                                    <span class="phone">0987.654.321</span>
                                </div>
                                <div id="btn-respon" class="fl-right"><i class="fa fa-bars" aria-hidden="true"></i></div>
                                <a href="{{ route('cart') }}" title="giỏ hàng" id="cart-respon-wp" class="fl-right">
                                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                    <span id="num">2</span>
                                </a>
                                <div id="cart-wp" class="fl-right">
                                    <div id="btn-cart">
                                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                        <span id="num">{{ Cart::count() }}</span>
                                    </div>
                                    <div id="dropdown">
                                        <p class="desc">Có <span>{{ Cart::count() }} sản phẩm</span> trong giỏ hàng</p>
                                        <ul class="list-cart">
                                            @foreach(Cart::content() as $cart)
                                            <li class="clearfix">
                                                <a href="{{ route('product.detail', $cart->options->slug) }}" title="" class="thumb fl-left">
                                                    <img src="{{ asset('storage/photos/1/Product/'.$cart->options->thumbnail) }}" alt="">
                                                </a>
                                                <div class="info fl-right">
                                                    <a href="{{ route('product.detail', $cart->options->slug) }}" title="" class="product-name">{{ $cart->name }}</a>
                                                    <p class="price">{{ number_format($cart->total, 0, '', '.') }}đ</p>
                                                    <p class="qty">Số lượng: <span>{{ $cart->qty }}</span></p>
                                                </div>
                                            </li>
                                            @endforeach
                                        </ul>
                                        <div class="total-price clearfix">
                                            <p class="title fl-left">Tổng:</p>
                                            <p class="price fl-right">{{ Cart::total() }}đ</p>
                                        </div>
                                        <dic class="action-cart clearfix">
                                            <a href="{{ route('cart') }}" title="Giỏ hàng" class="view-cart fl-left">Giỏ hàng</a>
                                            <a href="{{ route('cart.checkout') }}" title="Thanh toán" class="checkout fl-right">Thanh toán</a>
                                        </dic>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>






                <div class="content">
                    @yield('content')
                </div>











                <div id="footer-wp">
                    <div id="foot-body">
                        <div class="wp-inner clearfix">
                            <div class="block" id="info-company">
                                <h3 class="title">ISMART</h3>
                                <p class="desc">ISMART luôn cung cấp luôn là sản phẩm chính hãng có thông tin rõ ràng, chính sách ưu đãi cực lớn cho khách hàng có thẻ thành viên.</p>
                                <div id="payment">
                                    <div class="thumb">
                                        <img src="public/guest/images/img-foot.png" alt="">
                                    </div>
                                </div>
                            </div>
                            <div class="block menu-ft" id="info-shop">
                                <h3 class="title">Thông tin cửa hàng</h3>
                                <ul class="list-item">
                                    <li>
                                        <p>Hiệp Hòa - Mỹ Hiệp Sơn - Hòn Đất - KG</p>
                                    </li>
                                    <li>
                                        <p>Lê Hửu Lợi - 0357.559.323</p>
                                    </li>
                                    <li>
                                        <p>vshop@gmail.com</p>
                                    </li>
                                </ul>
                            </div>
                            <div class="block menu-ft policy" id="info-shop">
                                <h3 class="title">Chính sách mua hàng</h3>
                                <ul class="list-item">
                                    <li>
                                        <a href="" title="">Quy định - chính sách</a>
                                    </li>
                                    <li>
                                        <a href="" title="">Chính sách bảo hành - đổi trả</a>
                                    </li>
                                    <li>
                                        <a href="" title="">Chính sách hội viện</a>
                                    </li>
                                    <li>
                                        <a href="" title="">Giao hàng - lắp đặt</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="block" id="newfeed">
                                <h3 class="title">Bảng tin</h3>
                                <p class="desc">Đăng ký với chung tôi để nhận được thông tin ưu đãi sớm nhất</p>
                                <div id="form-reg">
                                    <form method="POST" action="">
                                        <input type="email" name="email" id="email" placeholder="Nhập email tại đây">
                                        <button type="submit" id="sm-reg">Đăng ký</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="foot-bot">
                        <div class="wp-inner">
                            <p id="copyright">© Bản quyền thuộc về unitop.vn | Php Master</p>
                        </div>
                    </div>
                </div>
                </div>
                <div id="menu-respon">
                    <a href="?page=home" title="" class="logo">VSHOP</a>
                    <div id="menu-respon-wp">
                        <ul class="" id="main-menu-respon">
                            <li>
                                <a href="?page=home" title>Trang chủ</a>
                            </li>
                            <li>
                                <a href="?page=category_product" title>Điện thoại</a>
                                <ul class="sub-menu">
                                    <li>
                                        <a href="?page=category_product" title="">Iphone</a>
                                    </li>
                                    <li>
                                        <a href="?page=category_product" title="">Samsung</a>
                                        <ul class="sub-menu">
                                            <li>
                                                <a href="?page=category_product" title="">Iphone X</a>
                                            </li>
                                            <li>
                                                <a href="?page=category_product" title="">Iphone 8</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="?page=category_product" title="">Nokia</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="?page=category_product" title>Máy tính bảng</a>
                            </li>
                            <li>
                                <a href="?page=category_product" title>Laptop</a>
                            </li>
                            <li>
                                <a href="?page=category_product" title>Đồ dùng sinh hoạt</a>
                            </li>
                            <li>
                                <a href="?page=blog" title>Blog</a>
                            </li>
                            <li>
                                <a href="{{ route('post.detail', 'lien-he-voi-toi') }}" title>Liên hệ</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="btn-top"><img src="public/guest/images/icon-to-top.png" alt=""/></div>
                <div id="fb-root"></div>
                <script>(function (d, s, id) {
                        var js, fjs = d.getElementsByTagName(s)[0];
                        if (d.getElementById(id))
                            return;
                        js = d.createElement(s);
                        js.id = id;
                        js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId=849340975164592";
                        fjs.parentNode.insertBefore(js, fjs);
                    }(document, 'script', 'facebook-jssdk'));
                </script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

                </body>
                </html>
