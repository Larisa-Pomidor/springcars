<#import "template.ftlh" as t>
<@t.template>
<div class="page-header-wrap bg-img" data-bg="static/img/page-header-bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <div class="page-header-content">
                        <div class="page-header-content-inner">
                            <h1>Your products (${products?size})</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--== End Page Header Area ==-->

    <!--== Start Page Content Wrapper ==-->
    <div class="page-content-wrapper sp-y">
        <div class="cart-page-content-wrap">
            <div class="container container-wide">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="shop-page-product">
                            <div class="container container-wide">
                                <div class="product-wrapper product-layout layout-grid">
                                    <div class="row mtn-30">
                                        <!-- Start Product Item -->
                                        <#list products as product>
                                        <div class="col-sm-6 col-lg-4 col-xl-4">
                                            <div class="product-item">
                                                <div class="product-item__thumb">
                                                    <a href="/product/${product.id}">
                                                        <img class="thumb-primary" src="/images/${product.image.id}" alt="${product.name}" />
                                                    </a>
                                                    <br />
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
                                                        <h4 class="title"><a href="/product/${product.id}">${product.name}</a></h4>
                                                        <span class="price"><strong>Price:</strong> $${product.price}</span>
                                                    </div>

                                                    <div class="product-item__action">
                                                        <button class="btn-add-to-cart"><i class="ion-bag"></i></button>
                                                        <button class="btn-add-to-cart"><i class="ion-ios-loop-strong"></i></button>
                                                        <button class="btn-add-to-cart"><i class="ion-ios-heart-outline"></i></button>
                                                        <button class="btn-add-to-cart"><i class="ion-eye"></i></button>
                                                    </div>

                                                    <div class="product-item__desc">
                                                        ${product.description}
                                                    </div>
                                                </div>
                                                <a href="/product/${product.id}" class="product-item__sale">
                                                    <svg clip-rule="evenodd" fill-rule="evenodd" stroke-linejoin="round" stroke-miterlimit="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill="white">
                                                    <path d="m20.015 6.506h-16v14.423c0 .591.448 1.071 1 1.071h14c.552 0 1-.48 1-1.071 0-3.905 0-14.423 0-14.423zm-5.75 2.494c.414 0 .75.336.75.75v8.5c0 .414-.336.75-.75.75s-.75-.336-.75-.75v-8.5c0-.414.336-.75.75-.75zm-4.5 0c.414 0 .75.336.75.75v8.5c0 .414-.336.75-.75.75s-.75-.336-.75-.75v-8.5c0-.414.336-.75.75-.75zm-.75-5v-1c0-.535.474-1 1-1h4c.526 0 1 .465 1 1v1h5.254c.412 0 .746.335.746.747s-.334.747-.746.747h-16.507c-.413 0-.747-.335-.747-.747s.334-.747.747-.747zm4.5 0v-.5h-3v.5z" fill-rule="nonzero"/></svg>
                                                </a>
                                            </div>
                                        </div>
                                        <#else>
                                        <div>You haven't added products yet!</div>
                                        </#list>
                                        <!-- End Product Item -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-5">
                        <!-- Cart Calculate Area -->
                        <div class="cart-calculate-area mt-sm-40 mt-md-60">
                            <h5 class="cal-title">Add new product</h5>

                            <form action="/product" method="post" enctype="multipart/form-data">
                                 <div class="input-item">
                                    <input type="text" name="name"
                                            placeholder="Product name" required />
                                 </div>
                                <div class="input-item">
                                    <input type="text" name="model" placeholder="Car model" required />
                                </div>
                                <div class="input-item">
                                    <input type="text" name="color" placeholder="Car color" required />
                                </div>
                                <div class="input-item">
                                    <input type="number" name="price" placeholder="Car price" required />
                                </div>
                                <div class="input-item">
                                    <input type="file" name="file" placeholder="Car image" required />
                                </div>
                                <div class="input-item">
                                    <textarea rows="3" name="description" placeholder="Car description" ></textarea>
                                </div>
                                <div class="input-item">
                                   <span>Release date: </span>  <input type ="date" name="release">
                                </div>
                                <div class="input-item">
                                    <input type="submit" class="btn btn-brand" value="Add new product!">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--== End Page Content Wrapper ==-->
    </@t.template>