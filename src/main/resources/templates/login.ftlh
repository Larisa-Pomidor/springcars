<#import "template.ftlh" as t>
<@t.template>

    <!--== Start Page Content Wrapper ==-->
    <div class="page-content-wrapper sp-y">
        <div class="cart-page-content-wrap">
            <div class="container container-wide">
                <div class="row">
                    <div class="col-12">
                        <div class="checkout-page-coupon-area">
                            <!-- Checkout Coupon Accordion Start -->
                            <div class="checkoutAccordion" id="checkOutAccordion">
                                <div class="card">
                                <#if error??>
                                    <h3><i class="fa fa-info-circle"></i>${error}</span>
                                    </h3>
                                </#if>
                                    <div id="couponaccordion" class="collapse" data-parent="#checkOutAccordion">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-lg-8">
                                                    <div class="apply-coupon-wrapper">
                                                        <p>If you have a coupon code, please apply it below.</p>
                                                        <form action="#" method="post">
                                                            <div class="row">
                                                                <div class="col-md-8">
                                                                    <div class="input-item mt-0">
                                                                        <input type="text" placeholder="Enter Your Coupon Code" required />
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-4 mt-20 mt-md-0">
                                                                    <button class="btn btn-bordered">Apply Coupon</button>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Checkout Coupon Accordion End -->
                        </div>
                    </div>
                </div>

                <div class="row login-block">
                    <div class="col-lg-12">
                        <!-- Checkout Form Area Start -->
                        <div class="checkout-billing-details-wrap">
                            <h2>Log In</h2>
                            <div class="billing-form-wrap">
                                <form action="/login" method="post">
                                     <div class="input-item">
                                         <label for="email" class="sr-only required">Your email</label>
                                         <input type="email" id="email" name="username"
                                                placeholder="Your email" required />
                                     </div>

                                    <div class="input-item">
                                        <label for="pass" class="sr-only required">Your password</label>
                                        <input type="password" name="password" id="pass" placeholder="Your password" required />
                                    </div>
                                    <div class="input-item">
                                        <input type="submit" class="btn btn-brand" value="Log In!">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--== End Page Content Wrapper ==-->

    </@t.template>