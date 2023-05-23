<#import "template.ftlh" as t>
<@t.template>
<!--== Start Slider Area Wrapper ==-->
    <div class="slider-area-wrapper">
        <div class="slider-content-active">
            <div class="slider-slide-item bg-img" data-bg="static/img/slider-1.jpg">
                <div class="container container-wide h-100">
                    <div class="row align-items-center h-100">
                        <div class="col-lg-6">
                            <div class="slide-content">
                                <div class="slide-content-inner">
                                    <h3>NEW TECHNOLOGY & BUILD</h3>
                                    <h2>Sell Your Car Easily and Quickly!</h2>
                                    <a class="btn btn-white" href="shop.html">Shop Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="slider-slide-item bg-img" data-bg="static/img/slider-2.jpg">
                <div class="container container-wide h-100">
                    <div class="row align-items-center h-100">
                        <div class="col-12">
                            <div class="slide-content">
                                <div class="slide-content-inner">
                                    <h3>NEW TECHNOLOGY & BUILD</h3>
                                    <h2>Browse a Wide Selection <br>
                                    of Used Cars for Sale!</h2>
                                        <a class="btn btn-white" href="shop.html">Shop Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--== End Slider Area Wrapper ==-->



    <!--== Start Call to Action Area ==-->
    <div class="call-to-action-area sm-top">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-lg-4">
                    <div class="call-to-action-item mt-0">
                        <div class="call-to-action-item__icon">
                            <img src="static/img/icon-1.png" alt="fast delivery">
                        </div>
                        <div class="call-to-action-item__info">
                            <h3>Free Home Delivery</h3>
                            <p>Provide free home delivery
                                for all cars</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 col-lg-4">
                    <div class="call-to-action-item">
                        <div class="call-to-action-item__icon">
                            <img src="static/img/icon-2.png" alt="quality">
                        </div>
                        <div class="call-to-action-item__info">
                            <h3>Quality Products</h3>
                            <p>We ensure our product
                                quality all times</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 col-lg-4">
                    <div class="call-to-action-item">
                        <div class="call-to-action-item__icon">
                            <img src="static/img/icon-3.png" alt="return">
                        </div>
                        <div class="call-to-action-item__info">
                            <h3>Online Support</h3>
                            <p>To satisfy our customer we try
                                to give support online</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--== End Call to Action Area ==-->

    <!--== Start Best Seller Products Area ==-->
    <div class="best-seller-products-area sm-top">
        <div class="container container-wide">
            <div class="row">
                <div class="col-lg-5 m-auto text-center">
                    <div class="section-title">
                        <h2 class="h3">Best Offers</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ullamcorper sit amet lorem a semper.
                        Maecenas condimentum tellus orci, a vulputate ex rhoncus eget.</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="product-wrapper">
                        <div class="product-carousel">
                        <#list best as b>
                            <!-- Start Product Item -->
                            <div class="product-item">
                                <div class="product-item__thumb">
                                    <a href="single-product.html">
                                        <img class="thumb-primary" src="/images/${b.image.id}" alt="Product" />
                                    </a>
                                </div>

                                <div class="product-item__content">
                                    <div class="ratting">
                                        <span><i class="ion-android-star"></i></span>
                                        <span><i class="ion-android-star"></i></span>
                                        <span><i class="ion-android-star"></i></span>
                                        <span><i class="ion-android-star"></i></span>
                                        <span><i class="ion-android-star-half"></i></span>
                                    </div>
                                    <h4 class="title"><a href="/product/${b.id}">${b.name}</a></h4>
                                    <span class="price"><strong>Price:</strong> $${b.price}</span>
                                </div>

                                <div class="product-item__action">
                                    <button class="btn-add-to-cart"><i class="ion-bag"></i></button>
                                    <button class="btn-add-to-cart"><i class="ion-ios-loop-strong"></i></button>
                                    <button class="btn-add-to-cart"><i class="ion-ios-heart-outline"></i></button>
                                    <button class="btn-add-to-cart"><i class="ion-eye"></i></button>
                                </div>
                            </div>
                            <!-- End Product Item -->
                            </#list>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--== End Best Seller Products Area ==-->

    <!--== Start Flash Deals Area ==-->
    <div class="flash-deals-area bg-img" data-bg="static/img/deal-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-xl-11 m-auto">
                    <div class="row align-items-center">
                        <div class="col-md-5 col-lg-6">
                            <div class="flash-deals-thumb text-center text-md-left">
                                <img src="static/img/wheels.png" alt="Deals" />
                            </div>
                        </div>

                        <div class="col-md-7 col-lg-6 text-center">
                            <div class="flash-deals-content">
                                <h2>FLASH DEALS</h2>
                                <h3>HURRY UP AND GET 25% DISCOUNT</h3>
                                <a href="cart.html" class="btn btn-brand">Shop Now!</a>

                                <div class="deals-countdown-area">
                                    <div class="ht-countdown" data-date="9/20/2024"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--== End Flash Deals Area ==-->

    <!--== Start Newsletter Area ==-->
    <div class="newsletter-area-wrapper">
        <div class="container container-wide">
            <div class="newsletter-area-inner bg-img" data-bg="static/img/newsletter-bg.jpg">
                <div class="row">
                    <div class="col-lg-8 col-xl-5 m-auto">
                        <div class="newsletter-content text-center">
                            <h4>SPECIAL <span>OFFER</span> FOR SUBSCRIPTION</h4>
                            <h2>GET INSTANT DISCOUNT FOR MEMBERSHIP</h2>
                            <p>Subscribe our newsletter and all latest news of our <br>latest product, promotion and offers</p>

                                <div class="newsletter-form-wrap">
                                    <form action="#" method="post">
                                        <div class="form-content">
                                            <input type="email" placeholder="Enter your email here" />
                                            <button class="btn-newsletter">Submit</button>
                                        </div>
                                    </form>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--== End Newsletter Area ==-->


</@t.template>