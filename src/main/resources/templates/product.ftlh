<#import "template.ftlh" as t>
<@t.template>
<!--== Start Page Header Area ==-->
    <div class="page-header-wrap bg-img" data-bg="/static/img/page-header-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <div class="page-header-content">
                        <div class="page-header-content-inner">
                            <h1>Product Details</h1>

                            <ul class="breadcrumb">
                                <li><a href="/">Home</a></li>
                                <li><a href="/shop">Shop</a></li>
                                <li class="current"><a href="/product/${product.id}">Product Details</a></li>
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
        <div class="product-details-page-content">
            <div class="container container-wide">
                <div class="row">
                    <div class="col-12">
                        <div class="row">
                            <!-- Start Product Thumbnail Area -->
                            <div class="col-md-5">
                                <div class="product-thumb-area">
                                    <div class="product-details-thumbnail">
                                        <div class="product-thumbnail-slider" id="thumb-gallery">
                                            <figure class="pro-thumb-item" data-mfp-src="/images/${product.image.id}">
                                                <img style="width: 100%" src="/images/${product.image.id}" alt="Product Details" />
                                            </figure>
                                        </div>

                                        <a href="#thumb-gallery" class="btn-large-view btn-gallery-popup">View Larger <i class="fa fa-search-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                            <!-- End Product Thumbnail Area -->

                            <!-- Start Product Info Area -->
                            <div class="col-md-7">
                                <div class="product-details-info-content-wrap">
                                    <div class="prod-details-info-content">
                                        <h2>${product.name}</h2>
                                        <h5 class="price"><strong>Price:</strong> <span class="price-amount">$${product.price}</span>
                                        </h5>
                                        <p>${product.description}</p>

                                        <div class="product-config">
                                            <div class="table-responsive">
                                                <table class="table table-bordered">
                                                    <tr>
                                                        <th class="config-label">Color</th>
                                                        <td class="config-option">
                                                            <div class="config-color">
                                                                ${product.color}
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th class="config-label">Model</th>
                                                        <td class="config-option">
                                                            <div class="config-color">
                                                                ${product.model}
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>

                                        <div class="product-action">
                                            <div class="action-top d-sm-flex">
                                                <button class="btn btn-bordered">Contact the owner</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Product Info Area -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--== End Page Content Wrapper ==-->
</@t.template>