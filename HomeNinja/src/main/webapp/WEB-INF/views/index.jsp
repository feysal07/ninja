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
<!--=== Header ===-->    
<c:import url="../header.jsp"></c:import>
<!--/header-->
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
<c:import url="../footer.jsp"></c:import>
<!--/footer-->	
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


</body>
</html>	