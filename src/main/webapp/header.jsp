<!-- <head>

        Meta
        <meta charset="utf-8">
        <meta name="keywords" content="HTML5 Template" />
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Header</title>

        Mobile Metas
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        Favicon
        <link rel="shortcut icon" href="/favicon.ico">

        Google Webfont
        <link href='http://fonts.googleapis.com/css?family=Raleway:400,200,100,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:400,100,300,300italic,700,900' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>

        CSS
        <link rel="stylesheet" href="css/font-awesome/css/font-awesome.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="js/vendors/isotope/isotope.css">
        <link rel="stylesheet" href="js/vendors/slick/slick.css">
        <link rel="stylesheet" href="js/vendors/rs-plugin/css/settings.css">
        <link rel="stylesheet" href="js/vendors/select/jquery.selectBoxIt.css">
        <link rel="stylesheet" href="css/subscribe-better.css">
        <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/themes/ui-lightness/jquery-ui.css">     
        <link rel="stylesheet" href="plugin/owl-carousel/owl.carousel.css">
        <link rel="stylesheet" href="plugin/owl-carousel/owl.theme.css">
        <link rel="stylesheet" href="css/style.css">

      
    </head> -->
  <!--   <body> -->

        <!-- PRELOADER -->
        <!-- <div id="loader"></div> -->

        <!-- <div class="body"> -->
            <!-- TOPBAR -->
            <div class="top_bar">
                <div class="container">
                    <div class="row">
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <div class="tb_left pull-left">
                                    <p>Welcome to our online store !</p>
                                </div>
                                <div class="tb_center pull-left">
                                    <ul>
                                        <li><i class="fa fa-phone"></i> Hotline: <a href="#">(+800) 2307 2509 8988</a></li>
                                        <li><i class="fa fa-envelope-o"></i> <a href="#">online support@smile.com</a></li>
                                    </ul>
                                </div>
                                <div class="tb_right pull-right">
                                    <ul>
                                        <li>
                                            <div class="tbr-info">
                                                <span>Account <i class="fa fa-caret-down"></i></span>
                                                <div class="tbr-inner">
                                                    <a href="my-account.html">My Account</a>
                                                    <a href="#">My Wishlist</a>
                                                    <a href="#">Checkout</a>
                                                    <a href="login-page.html">Login</a>
                                                </div>
                                            </div>
                                        </li>
                                      
                                      
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- HEADER -->
            <header>
                <nav class="navbar navbar-default">
                    <div class="container">
                        <div class="row">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <!-- Logo -->
                                <a class="navbar-brand" href="./index.html"><img src="images/basic/logo.png" class="img-responsive" alt=""/></a>
                            </div>
                            <!-- Cart & Search -->
                            <!-- <div class="header-xtra pull-right">
                                <div class="topcart">
                                    <span><i class="fa fa-shopping-cart"></i></span>
                                    <div class="cart-info">
                                        <small>You have <em class="highlight">3 item(s)</em> in your shopping bag</small>
                                        <div class="ci-item">
                                            <img src="images/products/fashion/8.jpg" width="80" alt=""/>
                                            <div class="ci-item-info">
                                                <h5><a href="./single-product.html">Product fashion</a></h5>
                                                <p>2 x $250.00</p>
                                                <div class="ci-edit">
                                                    <a href="#" class="edit fa fa-edit"></a>
                                                    <a href="#" class="edit fa fa-trash"></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="ci-item">
                                            <img src="images/products/fashion/15.jpg" width="80" alt=""/>
                                            <div class="ci-item-info">
                                                <h5><a href="./single-product.html">Product fashion</a></h5>
                                                <p>2 x $250.00</p>
                                                <div class="ci-edit">
                                                    <a href="#" class="edit fa fa-edit"></a>
                                                    <a href="#" class="edit fa fa-trash"></a>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="ci-total">Subtotal: $750.00</div>
                                        <div class="cart-btn">
                                            <a href="#">View Bag</a>
                                            <a href="#">Checkout</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="topsearch">
                                    <span>
                                        <i class="fa fa-search"></i>
                                    </span>
                                    <form class="searchtop">
                                        <input type="text" placeholder="Search entire store here.">
                                    </form>
                                </div>
                            </div> -->
                            <!-- Navmenu -->
                            
	                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	                                
	                                <ul class="nav navbar-nav navbar-right">
	                                <li>
	                                        <a href=
	                                        	"
		                                        	<c:url value ='Index'></c:url>
                         						 " 
                   								class="active" >
	                                        	Accueil
	                                        </a>
	                                    </li>
	                                <c:forEach var="catCol" items="${requestScope['categories']}">
	                                    <li>
	                                        <a href=
	                                        	"
		                                        	<c:url value ='Categorie'>
		                                        		<c:param name = 'cat_id' value = '${catCol.id}'/>
		                                        		<c:param name = 'namCat' value = '${catCol.titre}'/>
		                                        	</c:url>
                         						 " 
                   								class="active" id="cat${catCol.id}">
	                                        	${catCol.titre}
	                                        </a>
	                                    </li>
	                                 </c:forEach>
										<!-- <li>
	                                        <a href="./index.html" >Ordinateur</a>
	                                    </li>
										<li>
	                                        <a href="./index.html" >Téléphone portable</a>
	                                    </li>
										<li>
	                                        <a href="./index.html" >SMART TV</a>
	                                    </li>-->
	                                    
	                                    
	                                   
	                                </ul>
	                                
	                            </div>
                            
                        </div>
                    </div>
                </nav>
            </header>

            <!-- SLIDER -->

            <!-- BLOCKS WRAP -->
            <!-- <div class="block-main container">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <div class="block-content">
                            <img src="images/blocks/1.jpg" class="img-responsive" alt=""/>
                            <div class="bs-text-down text-center hvr-outline-out">
                                Menswear<span>Intimates Fall/Winter 2015</span>				
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="block-content">
                            <img src="images/blocks/2.jpg" class="img-responsive" alt=""/>
                            <div class="bs-text-center text-center">
                                Accesories<span>Get a new look with Smile Collection</span>				
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="block-content">
                            <img src="images/blocks/3.jpg" class="img-responsive" alt=""/>
                            <div class="bs-text-down text-center">
                                Womenswear<span>Smile Collection new arrivals</span>				
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="clearfix"></div>

            FEATURED PRODUCTS -->
            <!-- <div class="featured-products">
                <div class="container">
                    <div class="row">
                        <h5 class="heading"><span>Featured Products</span></h5>
                        <ul class="filter" data-option-key="filter">
                            <li><a class="selected" href="#filter" data-option-value="*">All</a></li>
                            <li><a href="#" data-option-value=".accessories">Accesories</a></li>
                            <li><a href="#" data-option-value=".clothing">Clothing</a></li>
                            <li><a href="#" data-option-value=".handbags">Handbags</a></li>
                            <li><a href="#" data-option-value=".shoes">Shoes</a></li>
                        </ul>
                        <div id="isotope" class="isotope">
                            <div class="isotope-item clothing">
                                <div class="product-item">
                                    <div class="item-thumb">
                                        <div class="badge new">New</div>
                                        <img src="images/products/fashion/1.jpg" class="img-responsive" alt=""/>
                                        <div class="overlay-rmore fa fa-search quickview" data-toggle="modal" data-target="#myModal"></div>
                                        <div class="product-overlay">
                                            <a href="#" class="addcart fa fa-shopping-cart"></a>
                                            <a href="#" class="compare fa fa-signal"></a>
                                            <a href="#" class="likeitem fa fa-heart-o"></a>
                                        </div>
                                    </div>
                                    <div class="product-info">
                                        <h4 class="product-title"><a href="./single-product.html">Product fashion</a></h4>
                                        <span class="product-price">$99.00 <em>- Pre order</em></span>
                                        <div class="item-colors">
                                            <a href="#" class="black"></a>
                                            <a href="#" class="brown"></a>
                                            <a href="#" class="red"></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="isotope-item clothing">
                                <div class="product-item">
                                    <div class="item-thumb">
                                        <img src="images/products/fashion/2.jpg" class="img-responsive" alt=""/>
                                        <div class="overlay-rmore fa fa-search quickview" data-toggle="modal" data-target="#myModal"></div>
                                        <div class="product-overlay">
                                            <a href="#" class="addcart fa fa-shopping-cart"></a>
                                            <a href="#" class="compare fa fa-signal"></a>
                                            <a href="#" class="likeitem fa fa-heart-o"></a>
                                        </div>
                                    </div>
                                    <div class="product-info">
                                        <h4 class="product-title"><a href="./single-product.html">Product fashion</a></h4>
                                        <span class="product-price">$99.00 <em>- Pre order</em></span>
                                        <div class="item-colors">
                                            <a href="#" class="black"></a>
                                            <a href="#" class="darkgrey"></a>
                                            <a href="#" class="litebrown"></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="isotope-item clothing">
                                <div class="product-item">
                                    <div class="item-thumb">
                                        <div class="badge offer">-50%</div>
                                        <img src="images/products/fashion/10.jpg" class="img-responsive" alt=""/>
                                        <div class="overlay-rmore fa fa-search quickview" data-toggle="modal" data-target="#myModal"></div>
                                        <div class="product-overlay">
                                            <a href="#" class="addcart fa fa-shopping-cart"></a>
                                            <a href="#" class="compare fa fa-signal"></a>
                                            <a href="#" class="likeitem fa fa-heart-o"></a>
                                        </div>
                                    </div>
                                    <div class="product-info">
                                        <h4 class="product-title"><a href="./single-product.html">Product fashion</a></h4>
                                        <span class="product-price"><small class="cutprice">$200.00</small> $99.00 <em>- Pre order</em></span>
                                        <div class="item-colors">
                                            <a href="#" class="black"></a>
                                            <a href="#" class="brown"></a>
                                            <a href="#" class="white"></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="isotope-item clothing">
                                <div class="product-item">
                                    <div class="item-thumb">
                                        <img src="images/products/fashion/6.jpg" class="img-responsive" alt=""/>
                                        <div class="overlay-rmore fa fa-search quickview" data-toggle="modal" data-target="#myModal"></div>
                                        <div class="product-overlay">
                                            <a href="#" class="addcart fa fa-shopping-cart"></a>
                                            <a href="#" class="compare fa fa-signal"></a>
                                            <a href="#" class="likeitem fa fa-heart-o"></a>
                                        </div>
                                    </div>
                                    <div class="product-info">
                                        <h4 class="product-title"><a href="./single-product.html">Product fashion</a></h4>
                                        <span class="product-price">$99.00 <em>- Pre order</em></span>
                                        <div class="item-colors">
                                            <a href="#" class="black"></a>
                                            <a href="#" class="liteblue"></a>
                                            <a href="#" class="cream"></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> -->

          
        
        
      
            <!-- FOOTER -->
            <!-- <footer>
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 widget-footer col-sm-3">
                            <h5>About Store</h5>
                            <img src="images/basic/logo-lite.png" class="img-responsive space10" alt=""/>
                            <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus</p>
                            <div class="clearfix"></div>
                            <ul class="f-social">
                                <li><a href="https://www.facebook.com" class="fa fa-facebook"></a></li>
                                <li><a href="https://www.twitter.com" class="fa fa-twitter"></a></li>
                                <li><a href="https://feedburner.google.com" class="fa fa-rss"></a></li>
                                <li><a href="mailto:email@website.com" class="fa fa-envelope"></a></li>
                                <li><a href="https://www.pinterest.com" class="fa fa-pinterest"></a></li>
                                <li><a href="https://www.instagram.com" class="fa fa-instagram"></a></li>
                            </ul>
                        </div>
                        <div class="col-md-3 col-sm-3 widget-footer">
                            <h5>Latest Tweets</h5>
                            <div class="tweet-info">
                                <div id="twitterfeed"></div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-3 widget-footer">
                            <h5>Product tags</h5>
                            <ul class="widget-tags">
                                <li><a href="./categories-grid.html">fashion</a></li>
                                <li><a href="./categories-grid.html">sports</a></li>
                                <li><a href="./categories-grid.html">business</a></li>
                                <li><a href="./categories-grid.html">news</a></li>
                                <li><a href="./categories-grid.html">night</a></li>
                                <li><a href="./categories-grid.html">freedom</a></li>
                                <li><a href="./categories-grid.html">design</a></li>
                                <li><a href="./categories-grid.html">miracle</a></li>
                                <li><a href="./categories-grid.html">gallery</a></li>
                                <li><a href="./categories-grid.html">collection</a></li>
                                <li><a href="./categories-grid.html">pen</a></li>
                                <li><a href="./categories-grid.html">pants</a></li>
                                <li><a href="./categories-grid.html">jeans</a></li>
                                <li><a href="./categories-grid.html">photos</a></li>
                                <li><a href="./categories-grid.html">oscar</a></li>
                                <li><a href="./categories-grid.html">smile</a></li>
                                <li><a href="./categories-grid.html">love</a></li>
                                <li><a href="./categories-grid.html">sunshine</a></li>
                                <li><a href="./categories-grid.html">luxury</a></li>
                                <li><a href="./categories-grid.html">forever</a></li>
                                <li><a href="./categories-grid.html">inlove</a></li>
                            </ul>
                        </div>
                        <div class="col-md-3 col-sm-3 widget-footer">
                            <h5>Newsletter</h5>
                            <p>Sign up for our newsletter and promotions</p>
                            <form class="newsletter">
                                <input type="text" placeholder="Enter your email address here.">
                                <button type="submit">Subscribe !</button>
                            </form>
                        </div>
                    </div>
                </div>
            </footer> -->

            <!-- FOOTER COPYRIGHT -->
            <!-- <div class="footer-bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-md-7 col-sm-7">
                            <ul class="flinks">
                                <li><a href="./index.html">Site Map</a></li>
                                <li><a href="./index.html">Search Terms</a></li>
                                <li><a href="./index.html">Advanced Search</a></li>
                                <li><a href="./index.html">Orders and Returns</a></li>
                                <li><a href="./index.html">Customer Service</a></li>
                            </ul>
                            <br>
                            <p>Copyright 2015 &middot; Designed & Developed by <a href="#">jThemes Studio.</a> All rights reserved</p>
                        </div>
                        <div class="col-md-5 col-sm-5">
                            <img src="images/basic/payment.png" class="pull-right img-responsive payment" alt=""/>
                        </div>
                    </div>
                </div>
            </div>	 -->

     <!--    </div> -->


        <!-- <div id="backtotop"><i class="fa fa-chevron-up"></i></div> -->



        <!-- Javascript -->
      <!--   <script src="js/jquery.js"></script>

       

        <script src="js/bootstrap.min.js"></script>        
        <script src="plugin/owl-carousel/owl.carousel.min.js"></script>
        <script src="js/bs-navbar.js"></script>
        <script src="js/vendors/isotope/isotope.pkgd.js"></script>
        <script src="js/vendors/slick/slick.min.js"></script>
        <script src="js/vendors/tweets/tweecool.min.js"></script>
        <script src="js/vendors/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
        <script src="js/vendors/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/jquery.subscribe-better.js"></script>
        <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
        <script src="js/vendors/select/jquery.selectBoxIt.min.js"></script>
        <script src="js/main.js"></script> -->

<!--     </body>
</html> -->