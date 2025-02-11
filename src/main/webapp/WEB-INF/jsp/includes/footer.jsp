<footer class="footer">
    <div class="cta bg-image bg-dark pt-4 pb-5 mb-0"
        style="background-image: url(assets/images/demos/demo-4/bg-5.jpg);">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-sm-10 col-md-8 col-lg-6">
                    <div class="cta-heading text-center">
                        <h3 class="cta-title text-white" id="footerText">Get The Latest News</h3><!-- End .cta-title -->
<%--                        <p class="cta-desc text-white">and receive <span class="font-weight-normal">$20--%>
<%--                                coupon</span> for first shopping</p><!-- End .cta-desc -->--%>
                    </div><!-- End .text-center -->

                    <div id="subscribeForm">
                        <div class="input-group input-group-round">
                            <input type="email" class="form-control form-control-white"
                                placeholder="Enter your Email Address" aria-label="Email Adress" required>
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="submit" onclick="subscribe(this)"><span>Subscribe</span><i
                                        class="icon-long-arrow-right"></i></button>
                            </div><!-- .End .input-group-append -->
                        </div><!-- .End .input-group -->
                    </div>
                </div><!-- End .col-sm-10 col-md-8 col-lg-6 -->
            </div><!-- End .row -->
        </div><!-- End .container -->
    </div><!-- End .cta -->
    <div class="footer-middle">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-lg-3">
                    <div class="widget widget-about">
                        <img src="assets/images/amazonya_logo.png" class="footer-logo"
                            alt="Footer Logo" width="105" height="25">
                        <p>Amazonya is ecommerce web app offering services to sell electronic products smart watches, smart phones and laptops
                        </p>

                        <div class="widget-call">
                            <i class="icon-phone"></i>
                            Got Question? Call us 24/7
                            <a href="tel:#">+20 114 905 6691</a>
                        </div><!-- End .widget-call -->
                    </div><!-- End .widget about-widget -->
                </div><!-- End .col-sm-6 col-lg-3 -->

<%--                <div class="col-sm-6 col-lg-3">--%>
<%--                    <div class="widget">--%>
<%--                        <h4 class="widget-title">Customer Service</h4><!-- End .widget-title -->--%>

<%--                        <ul class="widget-list">--%>
<%--                            <li><a href="#">Payment Methods</a></li>--%>
<%--                            <li><a href="#">Money-back guarantee!</a></li>--%>
<%--                            <li><a href="#">Returns</a></li>--%>
<%--                            <li><a href="#">Shipping</a></li>--%>
<%--                            <li><a href="#">Terms and conditions</a></li>--%>
<%--                            <li><a href="#">Privacy Policy</a></li>--%>
<%--                        </ul><!-- End .widget-list -->--%>
<%--                    </div><!-- End .widget -->--%>
<%--                </div><!-- End .col-sm-6 col-lg-3 -->--%>

                <div class="col-sm-6 col-lg-3">
                    <div class="widget">
                        <h4 class="widget-title">My Account</h4><!-- End .widget-title -->

                        <ul class="widget-list">
                            <li><a href="login">Sign In</a></li>
                            <li><a href="cart">View Cart</a></li>
                            <li><a href="wishlist">My Wishlist</a></li>
                        </ul><!-- End .widget-list -->
                    </div><!-- End .widget -->
                </div><!-- End .col-sm-6 col-lg-3 -->
            </div><!-- End .row -->
        </div><!-- End .container -->
    </div><!-- End .footer-middle -->

    <div class="footer-bottom">
        <div class="container">
            <p class="footer-copyright">Copyright © 2022 Amazonya Store. All Rights Reserved.</p>
            <!-- End .footer-copyright -->
            <figure class="footer-payments">
                <img src="assets/images/payments.png" alt="Payment methods" width="272" height="20">
            </figure><!-- End .footer-payments -->
        </div><!-- End .container -->
    </div><!-- End .footer-bottom -->
</footer><!-- End .footer -->
<script>
    function subscribe(){
        this.disabled= true;
        var form = document.getElementById("subscribeForm");
        form.hidden = true;
        document.getElementById("footerText").textContent = "Thank you"
    }
</script>