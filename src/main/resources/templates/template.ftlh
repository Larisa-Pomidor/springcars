<#macro template>
<html
    class="js sizes customelements history pointerevents postmessage webgl websockets cssanimations csscolumns csscolumns-width csscolumns-span csscolumns-fill csscolumns-gap csscolumns-rule csscolumns-rulecolor csscolumns-rulestyle csscolumns-rulewidth csscolumns-breakbefore csscolumns-breakafter csscolumns-breakinside flexbox picture srcset webworkers"
    lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title></title>
    <link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon"><!--== Google Fonts ==-->
    <link
        href="https://fonts.googleapis.com/css?family=Oswald:400,500,600,700%7CPoppins:400,400i,500,600&amp;display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="/static/app.min.css"><!--[if lt IE 9]>
    <script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body><!--== Start Header Area ==-->
    <header class="header-area">
        <div class="container container-wide">
            <div class="row align-items-center">
                <div class="col-sm-4 col-lg-2">
                    <div class="site-logo text-center text-sm-left"><a href="index.html"><img src="assets/img/logo.png"
                                alt="Logo"></a></div>
                </div>
                <div class="col-lg-7 d-none d-lg-block">
                    <div class="site-navigation">
                        <ul class="main-menu nav">
                            <li class="has-submenu"><a href="index.html">Home</a>
                                <ul class="sub-menu">
                                    <li><a href="index.html">Home 1</a></li>
                                    <li><a href="index-2.html">Home 2</a></li>
                                    <li><a href="index-boxed.html">Home Box Layout</a></li>
                                </ul>
                            </li>
                            <li><a href="about.html">About</a></li>
                            <li class="has-submenu"><a href="shop.html">Shop</a>
                                <ul class="sub-menu">
                                    <li><a href="shop-left-sidebar.html">Shop Left Sidebar</a></li>
                                    <li><a href="shop-right-sidebar.html">Shop Right Sidebar</a></li>
                                    <li><a href="single-product.html">Single Product</a></li>
                                </ul>
                            </li>
                            <li class="has-submenu"><a href="blog.html">blog</a>
                                <ul class="sub-menu">
                                    <li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
                                    <li><a href="blog.html">Blog Right Sidebar</a></li>
                                    <li><a href="blog-details.html">Single Blog</a></li>
                                    <li><a href="blog-details-sidebar.html">Single Blog Sidebar</a></li>
                                </ul>
                            </li>
                            <li><a href="gallery.html">Gallery</a></li>
                            <li class="has-submenu"><a href="index.html">Pages</a>
                                <ul class="sub-menu">
                                    <li><a href="cart.html">Cart</a></li>
                                    <li><a href="checkout.html">Checkout</a></li>
                                    <li><a href="wishlist.html">Wishlist</a></li>
                                </ul>
                            </li>
                            <li><a href="contact.html">Contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-8 col-lg-3">
                    <div class="site-action d-flex justify-content-center justify-content-sm-end align-items-center">
                        <ul class="login-reg-nav nav">
                            <li><a href="#">Login</a></li>
                            <li><a href="#">Register</a></li>
                        </ul>
                        <div class="mini-cart-wrap"><a href="cart.html" class="btn-mini-cart"><i class="ion-bag"></i>
                                <span class="cart-total">3</span></a>
                            <div class="mini-cart-content">
                                <div class="mini-cart-product">
                                    <div class="mini-product">
                                        <div class="mini-product__thumb"><a href="single-product.html"><img
                                                    src="assets/img/product/product-1.png" alt="product"></a></div>
                                        <div class="mini-product__info">
                                            <h2 class="title"><a href="single-product.html">Auto Clutch &amp; Brake</a>
                                            </h2>
                                            <div class="mini-calculation">
                                                <p class="price">5 x <span>$20.33</span></p><button
                                                    class="remove-pro"><i class="ion-trash-b"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mini-product">
                                        <div class="mini-product__thumb"><a href="single-product.html"><img
                                                    src="assets/img/product/product-2.png" alt="product"></a></div>
                                        <div class="mini-product__info">
                                            <h2 class="title"><a href="single-product.html">Leather Steering Wheel</a>
                                            </h2>
                                            <div class="mini-calculation">
                                                <p class="price">5 x <span>$20.33</span></p><button
                                                    class="remove-pro"><i class="ion-trash-b"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mini-product">
                                        <div class="mini-product__thumb"><a href="single-product.html"><img
                                                    src="assets/img/product/product-3.png" alt="product"></a></div>
                                        <div class="mini-product__info">
                                            <h2 class="title"><a href="single-product.html">Leather Steering Wheel</a>
                                            </h2>
                                            <div class="mini-calculation">
                                                <p class="price">5 x <span>$20.33</span></p><button
                                                    class="remove-pro"><i class="ion-trash-b"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="responsive-menu d-lg-none"><button class="btn-menu"><i
                                    class="fa fa-bars"></i></button></div>
                    </div>
                </div>
            </div>
        </div>
    </header><!--== End Header Area ==--><!--== Start Slider Area Wrapper ==-->
    <#nested />
    <footer class="footer-area">
        <div class="footer-widget-area">
            <div class="container container-wide">
                <div class="row mtn-40">
                    <div class="col-lg-3">
                        <div class="widget-item">
                            <div class="about-widget"><a href="index.html"><img src="assets/img/logo-light.png"
                                        alt="Logo"></a>
                                <p>Lukas is the best parts shop for your car accessories. What kind of parts do you need
                                    you can get here soluta nobis</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-2">
                        <div class="widget-item">
                            <h4 class="widget-title">Information</h4>
                            <div class="widget-body">
                                <ul class="widget-list">
                                    <li><a href="#">Our company</a></li>
                                    <li><a href="#">Contact us</a></li>
                                    <li><a href="#">Our services</a></li>
                                    <li><a href="#">Why We?</a></li>
                                    <li><a href="#">Careers</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-2">
                        <div class="widget-item">
                            <h4 class="widget-title">Quicklink</h4>
                            <div class="widget-body">
                                <ul class="widget-list">
                                    <li><a href="#">About</a></li>
                                    <li><a href="#">Blog</a></li>
                                    <li><a href="#">Shop</a></li>
                                    <li><a href="#">Cart</a></li>
                                    <li><a href="#">Contact</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-2">
                        <div class="widget-item">
                            <h4 class="widget-title">Support</h4>
                            <div class="widget-body">
                                <ul class="widget-list">
                                    <li><a href="#">Blog</a></li>
                                    <li><a href="#">Contact</a></li>
                                    <li><a href="#">Return Policy</a></li>
                                    <li><a href="#">Online Support</a></li>
                                    <li><a href="#">Money Back</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <div class="widget-item">
                            <h4 class="widget-title">Store Information</h4>
                            <div class="widget-body">
                                <address>2005 Stokes Isle Apartment. 896, Washington 10010,
                                    USA<br>https://example.com<br>(+68) 120034509</address>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-copyright-area">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <div class="copyright-content">
                            <p>Copyright © 2019 Lukas. All Rights Reserved.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer><!--== End Footer Area Wrapper ==--><!-- Scroll Top Button --> <button class="btn-scroll-top"><i
            class="ion-chevron-up"></i></button><!--== Start Responsive Menu Wrapper ==-->
    <aside class="off-canvas-wrapper off-canvas-menu">
        <div class="off-canvas-overlay"></div>
        <div class="off-canvas-inner"><!-- Start Off Canvas Content -->
            <div class="off-canvas-content">
                <div class="off-canvas-header">
                    <div class="logo"><a href="index.html"><img src="assets/img/logo.png" alt="Logo"></a></div>
                    <div class="close-btn"><button class="btn-close"><i class="ion-android-close"></i></button></div>
                </div><!-- Content Auto Generate Form Main Menu Here -->
                <div class="res-mobile-menu mobile-menu">
                    <div class="slicknav_menu"><a href="#" aria-haspopup="true" role="button" tabindex="0"
                            class="slicknav_btn slicknav_collapsed" style="outline: none;"><span
                                class="slicknav_menutxt">MENU</span><span class="slicknav_icon"><span
                                    class="slicknav_icon-bar"></span><span class="slicknav_icon-bar"></span><span
                                    class="slicknav_icon-bar"></span></span></a>
                        <ul class="slicknav_nav slicknav_hidden" aria-hidden="true" role="menu" style="display: none;">
                            <li class="slicknav_collapsed slicknav_parent"><a href="#" role="menuitem"
                                    aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row"
                                    style="outline: none;"><a href="index.html" tabindex="-1">Home</a><span
                                        class="slicknav_arrow"><i class="ion-plus"></i></span></a>
                                <ul role="menu" class="slicknav_hidden" aria-hidden="true" style="display: none;">
                                    <li><a href="index.html" role="menuitem" tabindex="-1">Home 1</a></li>
                                    <li><a href="index-2.html" role="menuitem" tabindex="-1">Home 2</a></li>
                                    <li><a href="index-boxed.html" role="menuitem" tabindex="-1">Home Box Layout</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="about.html" role="menuitem" tabindex="-1">About</a></li>
                            <li class="slicknav_collapsed slicknav_parent"><a href="#" role="menuitem"
                                    aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row"
                                    style="outline: none;"><a href="shop.html" tabindex="-1">Shop</a><span
                                        class="slicknav_arrow"><i class="ion-plus"></i></span></a>
                                <ul role="menu" class="slicknav_hidden" aria-hidden="true" style="display: none;">
                                    <li><a href="shop-left-sidebar.html" role="menuitem" tabindex="-1">Shop Left
                                            Sidebar</a></li>
                                    <li><a href="shop-right-sidebar.html" role="menuitem" tabindex="-1">Shop Right
                                            Sidebar</a></li>
                                    <li><a href="single-product.html" role="menuitem" tabindex="-1">Single Product</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="slicknav_collapsed slicknav_parent"><a href="#" role="menuitem"
                                    aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row"
                                    style="outline: none;"><a href="blog.html" tabindex="-1">blog</a><span
                                        class="slicknav_arrow"><i class="ion-plus"></i></span></a>
                                <ul role="menu" class="slicknav_hidden" aria-hidden="true" style="display: none;">
                                    <li><a href="blog-left-sidebar.html" role="menuitem" tabindex="-1">Blog Left
                                            Sidebar</a></li>
                                    <li><a href="blog.html" role="menuitem" tabindex="-1">Blog Right Sidebar</a></li>
                                    <li><a href="blog-details.html" role="menuitem" tabindex="-1">Single Blog</a></li>
                                    <li><a href="blog-details-sidebar.html" role="menuitem" tabindex="-1">Single Blog
                                            Sidebar</a></li>
                                </ul>
                            </li>
                            <li><a href="gallery.html" role="menuitem" tabindex="-1">Gallery</a></li>
                            <li class="slicknav_collapsed slicknav_parent"><a href="#" role="menuitem"
                                    aria-haspopup="true" tabindex="-1" class="slicknav_item slicknav_row"
                                    style="outline: none;"><a href="index.html" tabindex="-1">Pages</a><span
                                        class="slicknav_arrow"><i class="ion-plus"></i></span></a>
                                <ul role="menu" class="slicknav_hidden" aria-hidden="true" style="display: none;">
                                    <li><a href="cart.html" role="menuitem" tabindex="-1">Cart</a></li>
                                    <li><a href="checkout.html" role="menuitem" tabindex="-1">Checkout</a></li>
                                    <li><a href="wishlist.html" role="menuitem" tabindex="-1">Wishlist</a></li>
                                </ul>
                            </li>
                            <li><a href="contact.html" role="menuitem" tabindex="-1">Contact</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </aside><!--== End Responsive Menu Wrapper ==--><!--=======================Javascript============================-->
    <script src="assets/js/app.min.js"></script>
</body>

</html>
</#macro>