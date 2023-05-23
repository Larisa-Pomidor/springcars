<#import "template.ftlh" as t>
<@t.template>
<!--== Start Page Header Area ==-->
    <div class="page-header-wrap bg-img" data-bg="/static/img/page-header-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <div class="page-header-content">
                        <div class="page-header-content-inner">
                            <h1>Shop</h1>

                            <ul class="breadcrumb">
                                <li><a href="/">Home</a></li>
                                <li class="current"><a href="/shop">Shop</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--== End Page Header Area ==-->

    <!--== Start Page Content Wrapper ==-->
    <div class="page-content-wrapper sp-y">
        <div class="shop-page-action-bar mb-30">
            <div class="container container-wide">
                <div class="action-bar-inner">
                    <div class="row align-items-center">
                        <div class="col-sm-6">
                            <div class="shop-layout-switcher mb-15 mb-sm-0">
                                <ul class="layout-switcher nav">
                                    <li data-layout="grid" class="active"><i class="fa fa-th"></i></li>
                                    <li data-layout="list"><i class="fa fa-th-list"></i></li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="sort-by-wrapper">
                                <label for="sort" class="sr-only">Sort By</label>
                                <select name="sort" id="sort">
                                    <option value="sbp">Sort By Popularity</option>
                                    <option value="sbn">Sort By Newest</option>
                                    <option value="sbt">Sort By Trending</option>
                                    <option value="sbr">Sort By Rating</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="shop-page-product">
            <div class="container container-wide">
                <div class="product-wrapper product-layout layout-grid">
                    <div class="row mtn-30">
                    <#list products as product>
                        <!-- Start Product Item -->
                        <div class="col-sm-6 col-lg-4 col-xl-3">
                            <div class="product-item">
                                <div class="product-item__thumb">
                                    <a href="/product/${product.id}">
                                        <img class="thumb-primary" src="/images/${product.image.id}" alt="Product" />
                                    </a>

                                    <div class="ratting">
                                        <span><i class="ion-android-star"></i></span>
                                        <span><i class="ion-android-star"></i></span>
                                        <span><i class="ion-android-star"></i></span>
                                        <span><i class="ion-android-star"></i></span>
                                        <span><i class="ion-android-star-half"></i></span>
                                    </div>
                                </div>

                                <div class="product-item__content">
                                    <div class="product-item__info">
                                        <h4 class="title"><a href="single-product.html">${product.name}</a></h4>
                                        <span class="price"><strong>Price:</strong> $${product.price}</span>
                                    </div>

                                    <div class="product-item__action">
                                        <button class="btn-add-to-cart"><i class="ion-bag"></i></button>
                                        <button class="btn-add-to-cart"><i class="ion-ios-loop-strong"></i></button>
                                        <button class="btn-add-to-cart"><i class="ion-ios-heart-outline"></i></button>
                                        <button class="btn-add-to-cart"><i class="ion-eye"></i></button>
                                    </div>

                                    <div class="product-item__desc">
                                        <p>${product.description}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Product Item -->
                        </#list>
                    </div>
                </div>
            </div>
        </div>

        <div class="shop-page-action-bar mt-30">
            <div class="container container-wide">
                <div class="action-bar-inner">
                    <div class="row align-items-center">
                        <div class="col-sm-6">
                            <nav class="pagination-wrap mb-10 mb-sm-0">
                                <ul class="pagination">
                                    <li class="active"><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#"><i class="ion-ios-arrow-thin-right"></i></a></li>
                                </ul>
                            </nav>
                        </div>

                        <div class="col-sm-6 text-center text-sm-right">
                            <p>Showing 1–12 of 26 results</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--== End Page Content Wrapper ==-->
    </@t.template>