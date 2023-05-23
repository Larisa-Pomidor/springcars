<#macro template>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Sell you car in a moment!</title>

    <!--== Favicon ==-->
    <link rel="shortcut icon" href="/static/img/favicon.ico" type="image/x-icon" />

    <!--== Google Fonts ==-->
    <link href="https://fonts.googleapis.com/css?family=Oswald:400,500,600,700%7CPoppins:400,400i,500,600&display=swap" rel="stylesheet">

    <!-- build:css static/css/app.min.css -->
    <!--== Leaflet Min CSS ==-->
    <link href="/static/css/leaflet.min.css" rel="stylesheet" />
    <!--== Nice Select Min CSS ==-->
    <link href="/static/css/nice-select.min.css" rel="stylesheet" />
    <!--== Slick Slider Min CSS ==-->
    <link href="/static/css/slick.min.css" rel="stylesheet" />
    <!--== Magnific Popup Min CSS ==-->
    <link href="/static/css/magnific-popup.min.css" rel="stylesheet" />
    <!--== Slicknav Min CSS ==-->
    <link href="/static/css/slicknav.min.css" rel="stylesheet" />
    <!--== Animate Min CSS ==-->
    <link href="/static/css/animate.min.css" rel="stylesheet" />
    <!--== Ionicons Min CSS ==-->
    <link href="/static/css/ionicons.min.css" rel="stylesheet" />
    <!--== Font-Awesome Min CSS ==-->
    <link href="/static/css/font-awesome.min.css" rel="stylesheet" />
    <!--== Bootstrap Min CSS ==-->
    <link href="/static/css/bootstrap.min.css" rel="stylesheet" />

    <!--== Main Style CSS ==-->
    <link href="/static/css/style.css" rel="stylesheet" />
    <!--== Helper Min CSS ==-->
    <link href="/static/css/helper.min.css" rel="stylesheet" />
    <!-- endbuild -->

    <!--[if lt IE 9]>
<script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>

    <!--== Start Header Area ==-->
    <header class="header-area">
        <div class="container container-wide">
            <div class="row align-items-center">
                <div class="col-sm-4 col-lg-2">
                    <div class="site-logo text-center text-sm-left" style="filter: invert(1);">
                        <a href="/"><img src="/static/img/logo.png" alt="Logo" /></a>
                    </div>
                </div>

                <div class="col-lg-7 d-none d-lg-block">
                    <div class="site-navigation">
                        <ul class="main-menu nav">
                            <li><a href="/">Home</a></li>
                            <li><a href="/about">About</a></li>
                            <li><a href="/shop">Shop</a></li>
                            <li><a href="/#contacts">Contact</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-sm-8 col-lg-3">
                    <div class="site-action d-flex justify-content-center justify-content-sm-end align-items-center">
                    <ul class="login-reg-nav nav">
                        <#if user.email??>
                          <li> <a href="/logout">Logout</a></li>
                          <li> <a href="/account"><i class="ion-android-person"></i></a></li>
                        <#else>
                           <li><a href="/login">Login</a></li>
                           <li><a href="/registration">Register</a></li>
                        </#if>
                        </ul>

                        <div class="responsive-menu d-lg-none">
                            <button class="btn-menu">
                                <i class="fa fa-bars"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!--== End Header Area ==-->

    <#nested/>

    <!--== Start Footer Area Wrapper ==-->
    <footer class="footer-area">
        <div class="footer-widget-area">
            <div class="container container-wide">
                <div class="row mtn-40">
                    <div class="col-lg-3">
                        <div class="widget-item">
                            <div class="about-widget">
                                <a href="/"><img src="/static/img/logo.png" alt="Logo" /></a>
                                <p>Welcome to our website where you can effortlessly sell your car!
                                We offer a simple and convenient way to post car listings for sale. Whether you a</p>
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
                                <address>
                                   Vestibulum rhoncus interdum faucibus.
                                   Donec tincidunt quam at lacus gravida suscipit.
                                   Suspendisse commodo sem eget nisi faucibus fermentum.
                            </address>
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
                            <p>2023 LPomidor. All Rights Reserved.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--== End Footer Area Wrapper ==-->

    <!-- Scroll Top Button -->
    <button class="btn-scroll-top"><i class="ion-chevron-up"></i></button>



    <!--== Start Responsive Menu Wrapper ==-->
    <aside class="off-canvas-wrapper off-canvas-menu">
        <div class="off-canvas-overlay"></div>
        <div class="off-canvas-inner">
            <!-- Start Off Canvas Content -->
            <div class="off-canvas-content">
                <div class="off-canvas-header">
                    <div class="logo">
                        <a href="index.html"><img src="/static/img/logo.png" alt="Logo"></a>
                    </div>
                    <div class="close-btn">
                        <button class="btn-close"><i class="ion-android-close"></i></button>
                    </div>
                </div>

                <!-- Content Auto Generate Form Main Menu Here -->
                <div class="res-mobile-menu mobile-menu">

                </div>
            </div>
        </div>
    </aside>
    <!--== End Responsive Menu Wrapper ==-->


    <!--=======================Javascript============================-->
    <!-- build:js static/js/app.min.js -->
    <!--=== Modernizr Min Js ===-->
    <script src="/static/js/modernizr-3.6.0.min.js"></script>
    <!--=== jQuery Min Js ===-->
    <script src="/static/js/jquery-3.3.1.min.js"></script>
    <!--=== jQuery Migration Min Js ===-->
    <script src="/static/js/jquery-migrate-1.2.1.min.js"></script>
    <!--=== Popper Min Js ===-->
    <script src="/static/js/popper.min.js"></script>
    <!--=== Bootstrap Min Js ===-->
    <script src="/static/js/bootstrap.min.js"></script>
    <!--=== Slicknav Min Js ===-->
    <script src="/static/js/jquery.slicknav.min.js"></script>
    <!--=== Magnific Popup Min Js ===-->
    <script src="/static/js/jquery.magnific-popup.min.js"></script>
    <!--=== Slick Slider Min Js ===-->
    <script src="/static/js/slick.min.js"></script>
    <!--=== Nice Select Min Js ===-->
    <script src="/static/js/jquery.nice-select.min.js"></script>
    <!--=== Leaflet Min Js ===-->
    <script src="/static/js/leaflet.min.js"></script>
    <!--=== Countdown Js ===-->
    <script src="/static/js/countdown.js"></script>

    <!--=== Active Js ===-->
    <script src="/static/js/active.js"></script>
    <!-- endbuild -->

</body>

</html>
</#macro>