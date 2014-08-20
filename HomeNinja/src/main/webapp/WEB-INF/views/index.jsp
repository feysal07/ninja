<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<c:import url="../include.jsp"></c:import> 

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>Unify | Welcome...</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- CSS Global Compulsory-->
    <link rel="stylesheet" href="resources/assets/plugins/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="resources/assets/css/style.css">
    <link rel="stylesheet" href="resources/assets/css/headers/header1.css">
    <link rel="stylesheet" href="resources/assets/css/responsive.css">
    <link rel="shortcut icon" href="favicon.ico">        
    <!-- CSS Implementing Plugins -->    
    <link rel="stylesheet" href="resources/assets/plugins/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="resources/assets/plugins/flexslider/flexslider.css">    	
    <link rel="stylesheet" href="resources/assets/plugins/parallax-slider/css/parallax-slider.css">
    <!-- CSS Theme -->    
    <link rel="stylesheet" href="resources/assets/css/themes/default.css" id="style_color">
    <link rel="stylesheet" href="resources/assets/css/themes/headers/default.css" id="style_color-header-1">    
</head>	

<body>
<!--=== Style Switcher ===-->    
<i class="style-switcher-btn icon-cogs hidden-xs"></i>
<div class="style-switcher">
    <div class="theme-close"><i class="icon-remove"></i></div>
    <div class="theme-heading">Theme Colors</div>
    <ul class="list-unstyled">
        <li class="theme-default theme-active" data-style="default" data-header="light"></li>
        <li class="theme-blue" data-style="blue" data-header="light"></li>
        <li class="theme-orange" data-style="orange" data-header="light"></li>
        <li class="theme-red" data-style="red" data-header="light"></li>
        <li class="theme-light last" data-style="light" data-header="light"></li>
    </ul>
    <div style="margin-bottom:18px;"></div>
    <div class="theme-heading">Layouts</div>
    <div class="text-center">
        <a href="#" class="btn-u btn-u-green btn-block active-switcher-btn wide-layout-btn">Wide</a>
        <a href="#" class="btn-u btn-u-green btn-block boxed-layout-btn">Boxed</a>
    </div>
</div><!--/style-switcher-->
<!--=== End Style Switcher ===-->    

<!--=== Top ===-->    
<div class="top">
    <div class="container">         
        <ul class="loginbar pull-right">
            <!-- <li>
                <i class="icon-globe"></i>
                <a>Languages</a>
                <ul class="lenguages">
                    <li class="active">
                        <a href="#">English <i class="icon-ok"></i></a> 
                    </li>
                    <li><a href="#">Spanish</a></li>
                    <li><a href="#">Russian</a></li>
                    <li><a href="#">German</a></li>
                </ul>
            </li> -->
            <li><a href="./Register">Register</a></li>
            <li class="devider"></li>   
            <li><a href="page_faq.html">Help</a></li>  
            <li class="devider"></li>   
            <li><a href="./login">Login</a></li>   
        </ul>
    </div>      
</div><!--/top-->
<!--=== End Top ===-->    

<!--=== Header ===-->    
<div class="header">
    <div class="navbar navbar-default">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">
                    <img id="logo-header" src="resources/assets/img/logo1-default.png" alt="Logo">
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-responsive-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown active">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">
                            Home
                            <i class="icon-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="active"><a href="index.html">Option 1: Default Page</a></li>
                            <li><a href="page_home1.html">Option 2: Layer Slider</a></li>
                            <li><a href="page_home2.html">Option 3: Revolution Slider</a></li>
                            <li><a href="page_home3.html">Option 4: Amazing Content</a></li>
                            <li><a href="page_home4.html">Option 5: Home Sidebar</a></li>
                            <li><a href="page_home5.html">Option 6: Home Flatty</a></li>
                            <li><a href="page_home6.html">Option 7: Home Magazine</a></li>
                            <li><a href="page_home7.html">Option 8: Home Portfolio</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">
                            Pages
                            <i class="icon-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="page_about.html">About Us</a></li>
                            <li><a href="page_about1.html">About Us Option</a></li>
                            <li><a href="page_services.html">Services</a></li>
                            <li><a href="page_services1.html">Services Option</a></li>
                            <li><a href="page_pricing.html">Pricing Tables</a></li>
                            <li><a href="page_invoice.html">Invoice Page</a></li>
                            <li><a href="page_meet_our_team.html">Meet Our Team</a></li>
                            <li><a href="page_coming_soon.html">Coming Soon</a></li>
                            <li><a href="page_faq.html">FAQs Page</a></li>
                            <li><a href="page_search.html">Funny Boxes</a></li>
                            <li><a href="page_gallery.html">Gallery Page</a></li>
                            <li><a href="page_registration.html">Registration Page</a></li>
                            <li><a href="page_registration1.html">Registration Option</a></li>
                            <li><a href="page_login.html">Login Page</a></li>
                            <li><a href="page_login1.html">Login Option</a></li>
                            <li><a href="page_404_error.html">404 Error</a></li>
                            <li><a href="page_404_error1.html">404 Error Option</a></li>
                            <li><a href="page_clients.html">Clients Page</a></li>
                            <li><a href="page_privacy.html">Privacy Policy</a></li>
                            <li><a href="page_terms.html">Terms Of Service</a></li>
                            <li><a href="page_2_columns_left.html">2 Columns Page Left</a></li>
                            <li><a href="page_2_columns_right.html">2 Columns Page Right</a></li>
                            <li><a href="page_3_columns.html">3 Columns Page</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">
                            Features
                            <i class="icon-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="feature_grid.html">Grid Layout</a></li>
                            <li><a href="feature_boxes.html">Content Boxes</a></li>
                            <li><a href="feature_typography.html">Typography</a></li>
                            <li><a href="feature_tagline_boxes.html">Tagline Boxes</a></li>
                            <li><a href="feature_buttons.html">Buttons</a></li>
                            <li><a href="feature_icons.html">Icons</a></li>
                            <li><a href="feature_thumbails.html">Thumbails</a></li>
                            <li><a href="feature_components.html">Components</a></li>
                            <li><a href="feature_accardion_and_tabs.html">Accardion and Tabs</a></li>
                            <li><a href="feature_navigations.html">Navigations</a></li>
                            <li><a href="feature_tables.html">Tables</a></li>
                            <li><a href="feature_forms.html">Forms</a></li>
                            <li><a href="feature_testimonials.html">Testimonials</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">
                            Portfolio
                            <i class="icon-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="portfolio_text_blocks.html">Portfolio Text Blocks</a></li>
                            <li><a href="portfolio_2_column.html">Portfolio 2 Columns</a></li>
                            <li><a href="portfolio_3_column.html">Portfolio 3 Columns</a></li>
                            <li><a href="portfolio_4_column.html">Portfolio 4 Columns</a></li>
                            <li><a href="portfolio_item.html">Portfolio Item Option 1</a></li>
                            <li><a href="portfolio_item1.html">Portfolio Item Option 2</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">
                            Blog
                            <i class="icon-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="blog_page.html">Blog Page</a></li>
                            <li><a href="blog_large.html">Blog Large</a></li>
                            <li><a href="blog_medium.html">Blog Medium</a></li>
                            <li><a href="blog_full_width.html">Blog Full Width</a></li>
                            <li><a href="blog_left_sidebar.html">Blog Left Sidebar</a></li>
                            <li><a href="blog_right_sidebar.html">Blog Right Sidebar</a></li>
                            <li><a href="blog_item_option1.html">Blog Item Option 1</a></li>
                            <li><a href="blog_item_option2.html">Blog Item Option 2</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">
                            Contacts
                            <i class="icon-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="page_contact1.html">Contacts Default</a></li>
                            <li><a href="page_contact2.html">Contacts Option 1</a></li>
                            <li><a href="page_contact3.html">Contacts Option 2</a></li>
                        </ul>
                    </li>                    
                    <li class="hidden-sm"><a class="search"><i class="icon-search search-btn"></i></a></li>
                </ul>
                <div class="search-open">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search">
                        <span class="input-group-btn">
                            <button class="btn-u" type="button">Go</button>
                        </span>
                    </div><!-- /input-group -->
                </div>                
            </div><!-- /navbar-collapse -->
        </div>    
    </div>    
</div><!--/header-->
<!--=== End Header ===-->    

<!--=== Slider ===-->
<div class="slider-inner">
    <div id="da-slider" class="da-slider">
        <div class="da-slide">
            <h2><i>CLEAN &amp; FRESH</i> <br /> <i>FULLY RESPONSIVE</i> <br /> <i>DESIGN</i></h2>
            <p><i>Lorem ipsum dolor amet</i> <br /> <i>tempor incididunt ut</i> <br /> <i>veniam omnis </i></p>
            <div class="da-img"><img src="resources/assets/plugins/parallax-slider/img/1.png" alt="" /></div>
        </div>
        <div class="da-slide">
            <h2><i>RESPONSIVE VIDEO</i> <br /> <i>SUPPORT AND</i> <br /> <i>MANY MORE</i></h2>
            <p><i>Lorem ipsum dolor amet</i> <br /> <i>tempor incididunt ut</i></p>
            <div class="da-img">
				<iframe src="http://player.vimeo.com/video/47911018" width="530" height="300" ></iframe> 
            </div>
        </div>
        <div class="da-slide">
            <h2><i>USING BEST WEB</i> <br /> <i>SOLUTIONS WITH</i> <br /> <i>HTML5/CSS3</i></h2>
            <p><i>Lorem ipsum dolor amet</i> <br /> <i>tempor incididunt ut</i> <br /> <i>veniam omnis </i></p>
            <div class="da-img"><img src="resources/assets/plugins/parallax-slider/img/html5andcss3.png" alt="image01" /></div>
        </div>
        <div class="da-arrows">
            <span class="da-arrows-prev"></span>
            <span class="da-arrows-next"></span>		
        </div>
    </div><!--/da-slider-->
</div><!--/slider-->
<!--=== End Slider ===-->

<!--=== Purchase Block ===-->
<div class="purchase">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <span>Unify is a clean and fully responsive incredible Template.</span>
                <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi  vehicula sem ut volutpat. Ut non libero magna fusce condimentum eleifend enim a feugiat.</p>
            </div>            
            <div class="col-md-3">
                <a href="#" class="btn-buy hover-effect">Purchase Now</a>            
            </div>
        </div>
    </div>
</div><!--/row-->
<!-- End Purchase Block -->

<!--=== Content Part ===-->
<div class="container">	
	<!-- Service Blocks -->
	<div class="row">
    	<div class="col-md-4">
    		<div class="service">
                <i class="icon-resize-small service-icon"></i>
    			<div class="desc">
    				<h4>Fully Responsive</h4>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus etiam sem...</p>
    			</div>
    		</div>	
    	</div>
    	<div class="col-md-4">
    		<div class="service">
                <i class="icon-cogs service-icon"></i>
    			<div class="desc">
    				<h4>HTML5 + CSS3</h4>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus etiam sem...</p>
    			</div>
    		</div>	
    	</div>
    	<div class="col-md-4">
    		<div class="service">
                <i class="icon-plane service-icon"></i>
    			<div class="desc">
    				<h4>Launch Ready</h4>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus etiam sem...</p>
    			</div>
    		</div>	
    	</div>			    
	</div><!--/row-->
	<!-- End Service Blokcs -->

	<!-- Recent Works -->
    <div class="headline"><h2>Recent Works</h2></div>
    <div class="row">
        <div class="col-md-3 col-sm-6">
            <div class="thumbnails thumbnail-style thumbnail-kenburn">
            	<div class="thumbnail-img">
                    <div class="overflow-hidden">
                        <img class="img-responsive" src="resources/assets/img/main/2.jpg" alt="" />
                    </div>
                    <a class="btn-more hover-effect" href="#">read more +</a>					
                </div>
                <div class="caption">
                    <h3><a class="hover-effect" href="#">Project One</a></h3>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem.</p>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="thumbnails thumbnail-style thumbnail-kenburn">
                <div class="thumbnail-img">
                    <div class="overflow-hidden">
                        <img class="img-responsive" src="resources/assets/img/main/3.jpg" alt="" />
                    </div>
                    <a class="btn-more hover-effect" href="#">read more +</a>                   
                </div>
                <div class="caption">
                    <h3><a class="hover-effect" href="#">Project Two</a></h3>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem.</p>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="thumbnails thumbnail-style thumbnail-kenburn">
                <div class="thumbnail-img">
                    <div class="overflow-hidden">
                        <img class="img-responsive" src="resources/assets/img/main/9.jpg" alt="" />
                    </div>
                    <a class="btn-more hover-effect" href="#">read more +</a>                   
                </div>
                <div class="caption">
                    <h3><a class="hover-effect" href="#">Project Three</a></h3>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem.</p>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6">
            <div class="thumbnails thumbnail-style thumbnail-kenburn">
                <div class="thumbnail-img">
                    <div class="overflow-hidden">
                        <img class="img-responsive" src="resources/assets/img/main/10.jpg" alt="" />
                    </div>
                    <a class="btn-more hover-effect" href="#">read more +</a>                   
                </div>
                <div class="caption">
                    <h3><a class="hover-effect" href="#">Project Four</a></h3>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem.</p>
                </div>
            </div>
        </div>
    </div><!--/row-->
	<!-- End Recent Works -->
    
	<!-- Info Blokcs -->
	<div class="row">
    	<!-- Welcome Block -->
		<div class="col-md-8">
			<div class="headline"><h2>Welcome To Unify</h2></div>
            <div class="row">
                <div class="col-sm-4">
                    <img class="img-responsive margin-bottom-20" src="resources/assets/img/main/6.jpg" alt="" />
                </div>
                <div class="col-sm-8">
                    <p>Unify is an incredibly beautiful responsive Bootstrap Template for corporate and creative professionals. It works on all major web browsers, tablets and phone.</p>
                    <ul class="list-unstyled margin-bottom-20">
                        <li><i class="icon-ok color-green"></i> Donec id elit non mi porta gravida</li>
                        <li><i class="icon-ok color-green"></i> Corporate and Creative</li>
                        <li><i class="icon-ok color-green"></i> Responsive Bootstrap Template</li>
                        <li><i class="icon-ok color-green"></i> Corporate and Creative</li>
                    </ul>                    
                </div>
            </div>

            <blockquote class="hero-unify">
                <p>Award winning digital agency. We bring a personal and effective approach to every project we work on, which is why. Unify is an incredibly beautiful responsive Bootstrap Template for corporate professionals.</p>
                <small>CEO, Jack Bour</small>
            </blockquote>
        </div><!--/col-md-8-->        

        <!-- Latest Shots -->
        <div class="col-md-4">
			<div class="headline"><h2>Latest Shots</h2></div>
			<div id="myCarousel" class="carousel slide carousel-v1">
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="resources/assets/img/main/5.jpg" alt="">
                        <div class="carousel-caption">
                            <p>Facilisis odio, dapibus ac justo acilisis gestinas.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="resources/assets/img/main/4.jpg" alt="">
                        <div class="carousel-caption">
                            <p>Cras justo odio, dapibus ac facilisis into egestas.</p>
                        </div>
                        </div>
                    <div class="item">
                        <img src="resources/assets/img/main/3.jpg" alt="">
                        <div class="carousel-caption">
                            <p>Justo cras odio apibus ac afilisis lingestas de.</p>
                        </div>
                    </div>
                </div>
                
                <div class="carousel-arrow">
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <i class="icon-angle-left"></i>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <i class="icon-angle-right"></i>
                    </a>
                </div>
			</div>
        </div><!--/col-md-4-->
	</div><!--/row-->	
	<!-- End Info Blokcs -->

	<!-- Our Clients -->
	<div id="clients-flexslider" class="flexslider home clients">
        <div class="headline"><h2>Our Clients</h2></div>	
		<ul class="slides">
			<li>
                <a href="#">
                    <img src="resources/assets/img/clients/hp_grey.png" alt="" /> 
                    <img src="resources/assets/img/clients/hp.png" class="color-img" alt="" />
                </a>
            </li>
			<li>
                <a href="#">
                    <img src="resources/assets/img/clients/igneus_grey.png" alt="" /> 
                    <img src="resources/assets/img/clients/igneus.png" class="color-img" alt="" />
                </a>
            </li>
			<li>
                <a href="#">
                    <img src="resources/assets/img/clients/vadafone_grey.png" alt="" /> 
                    <img src="resources/assets/img/clients/vadafone.png" class="color-img" alt="" />
                </a>
            </li>
			<li>
                <a href="#">
                    <img src="resources/assets/img/clients/walmart_grey.png" alt="" /> 
                    <img src="resources/assets/img/clients/walmart.png" class="color-img" alt="" />
                </a>
            </li>
			<li>
                <a href="#">
                    <img src="resources/assets/img/clients/shell_grey.png" alt="" /> 
                    <img src="resources/assets/img/clients/shell.png" class="color-img" alt="" />
                </a>
            </li>
			<li>
                <a href="#">
                    <img src="resources/assets/img/clients/natural_grey.png" alt="" /> 
                    <img src="resources/assets/img/clients/natural.png" class="color-img" alt="" />
                </a>
            </li>
			<li>
                <a href="#">
                    <img src="resources/assets/img/clients/aztec_grey.png" alt="" /> 
                    <img src="resources/assets/img/clients/aztec.png" class="color-img" alt="" />
                </a>
            </li>
			<li>
                <a href="#">
                    <img src="resources/assets/img/clients/gamescast_grey.png" alt="" /> 
                    <img src="resources/assets/img/clients/gamescast.png" class="color-img" alt="" />
                </a>
            </li>
			<li>
                <a href="#">
                    <img src="resources/assets/img/clients/cisco_grey.png" alt="" /> 
                    <img src="resources/assets/img/clients/cisco.png" class="color-img" alt="" />
                </a>
            </li>
			<li>
                <a href="#">
                    <img src="resources/assets/img/clients/everyday_grey.png" alt="" /> 
                    <img src="resources/assets/img/clients/everyday.png" class="color-img" alt="" />
                </a>
            </li>
			<li>
                <a href="#">
                    <img src="resources/assets/img/clients/cocacola_grey.png" alt="" /> 
                    <img src="resources/assets/img/clients/cocacola.png" class="color-img" alt="" />
                </a>
            </li>
			<li>
                <a href="#">
                    <img src="resources/assets/img/clients/spinworkx_grey.png" alt="" /> 
                    <img src="resources/assets/img/clients/spinworkx.png" class="color-img" alt="" />
                </a>
            </li>
			<li>
                <a href="#">
                    <img src="resources/assets/img/clients/shell_grey.png" alt="" /> 
                    <img src="resources/assets/img/clients/shell.png" class="color-img" alt="" />
                </a>
            </li>
			<li>
                <a href="#">
                    <img src="resources/assets/img/clients/natural_grey.png" alt="" /> 
                    <img src="resources/assets/img/clients/natural.png" class="color-img" alt="" />
                </a>
            </li>
			<li>
                <a href="#">
                    <img src="resources/assets/img/clients/gamescast_grey.png" alt="" /> 
                    <img src="resources/assets/img/clients/gamescast.png" class="color-img" alt="" />
                </a>
            </li>
			<li>
                <a href="#">
                    <img src="resources/assets/img/clients/everyday_grey.png" alt="" /> 
                    <img src="resources/assets/img/clients/everyday.png" class="color-img" alt="" />
                </a>
            </li>
			<li>
                <a href="#">
                    <img src="resources/assets/img/clients/spinworkx_grey.png" alt="" /> 
                    <img src="resources/assets/img/clients/spinworkx.png" class="color-img" alt="" />
                </a>
            </li>
		</ul>
	</div><!--/flexslider-->
	<!-- End Our Clients -->
</div><!--/container-->		
<!-- End Content Part -->

<!--=== Footer ===-->
<div class="footer">
	<div class="container">
		<div class="row">
			<div class="col-md-4 md-margin-bottom-40">
                <!-- About -->
		        <div class="headline"><h2>About</h2></div>	
				<p class="margin-bottom-25 md-margin-bottom-40">Unify is an incredibly beautiful responsive Bootstrap Template for corporate and creative professionals.</p>	

	            <!-- Monthly Newsletter -->
		        <div class="headline"><h2>Monthly Newsletter</h2></div>	
				<p>Subscribe to our newsletter and stay up to date with the latest news and deals!</p>
				<form class="footer-subsribe">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Email Address">                            
                        <span class="input-group-btn">
                            <button class="btn-u" type="button">Subscribe</button>
                        </span>
                    </div><!-- /input-group -->                    
				</form>							
			</div><!--/col-md-4-->	
			
			<div class="col-md-4 md-margin-bottom-40">
                <div class="posts">
                    <div class="headline"><h2>Recent Blog Entries</h2></div>
                    <dl class="dl-horizontal">
                        <dt><a href="#"><img src="resources/assets/img/sliders/elastislide/6.jpg" alt="" /></a></dt>
                        <dd>
                            <p><a href="#">Anim moon officia Unify is an incredibly beautiful responsive Bootstrap Template</a></p> 
                        </dd>
                    </dl>
                    <dl class="dl-horizontal">
                    <dt><a href="#"><img src="resources/assets/img/sliders/elastislide/10.jpg" alt="" /></a></dt>
                        <dd>
                            <p><a href="#">Anim moon officia Unify is an incredibly beautiful responsive Bootstrap Template</a></p> 
                        </dd>
                    </dl>
                    <dl class="dl-horizontal">
                    <dt><a href="#"><img src="resources/assets/img/sliders/elastislide/11.jpg" alt="" /></a></dt>
                        <dd>
                            <p><a href="#">Anim moon officia Unify is an incredibly beautiful responsive Bootstrap Template</a></p> 
                        </dd>
                    </dl>
                </div>
			</div><!--/col-md-4-->

			<div class="col-md-4">
	            <!-- Monthly Newsletter -->
		        <div class="headline"><h2>Contact Us</h2></div>	
                <address class="md-margin-bottom-40">
					25, Lorem Lis Street, Orange <br />
					California, US <br />
					Phone: 800 123 3456 <br />
					Fax: 800 123 3456 <br />
					Email: <a href="mailto:info@anybiz.com" class="">info@anybiz.com</a>
                </address>

                <!-- Stay Connected -->
		        <div class="headline"><h2>Stay Connected</h2></div>	
                <ul class="social-icons">
                    <li><a href="#" data-original-title="Feed" class="social_rss"></a></li>
                    <li><a href="#" data-original-title="Facebook" class="social_facebook"></a></li>
                    <li><a href="#" data-original-title="Twitter" class="social_twitter"></a></li>
                    <li><a href="#" data-original-title="Goole Plus" class="social_googleplus"></a></li>
                    <li><a href="#" data-original-title="Pinterest" class="social_pintrest"></a></li>
                    <li><a href="#" data-original-title="Linkedin" class="social_linkedin"></a></li>
                    <li><a href="#" data-original-title="Vimeo" class="social_vimeo"></a></li>
                </ul>
			</div><!--/col-md-4-->
		</div><!--/row-->	
	</div><!--/container-->	
</div><!--/footer-->	
<!--=== End Footer ===-->

<!--=== Copyright ===-->
<div class="copyright">
	<div class="container">
		<div class="row">
			<div class="col-md-6">						
	            <p class="copyright-space">
                    2013 &copy; Unify. ALL Rights Reserved. 
                    <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
                </p>
			</div>
			<div class="col-md-6">	
				<a href="index.html">
                    <img id="logo-footer" src="resources/assets/img/logo2-default.png" class="pull-right" alt="" />
                </a>
			</div>
		</div><!--/row-->
	</div><!--/container-->	
</div><!--/copyright-->	
<!--=== End Copyright ===-->

<!-- JS Global Compulsory -->			
<script type="text/javascript" src="resources/assets/plugins/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="resources/assets/plugins/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script> 
<script type="text/javascript" src="resources/assets/plugins/hover-dropdown.min.js"></script> 
<script type="text/javascript" src="resources/assets/plugins/back-to-top.js"></script>
<!-- JS Implementing Plugins -->           
<script type="text/javascript" src="resources/assets/plugins/flexslider/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="resources/assets/plugins/parallax-slider/js/modernizr.js"></script>
<script type="text/javascript" src="resources/assets/plugins/parallax-slider/js/jquery.cslider.js"></script> 
<!-- JS Page Level -->           
<script type="text/javascript" src="resources/assets/js/app.js"></script>
<script type="text/javascript" src="resources/assets/js/pages/index.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
      	App.init();
        App.initSliders();
        Index.initParallaxSlider();
    });
</script>
<!--[if lt IE 9]>
    <script src="resources/assets/plugins/respond.js"></script>
<![endif]-->

</body>
</html>	