<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<%-- <c:import url="../include.jsp"></c:import>  --%>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>HomeNinja | Welcome</title>
	<link rel="shortcut icon" href="resources/assets/img/favicon.ico" type="image/x-icon">
	<link rel="icon" href="resources/assets/img/favicon.ico" type="image/x-icon"> 
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
        
            
    <!-- CSS Implementing Plugins -->    
    <link rel="stylesheet" href="resources/assets/plugins/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="resources/assets/plugins/flexslider/flexslider.css">    	
    <link rel="stylesheet" href="resources/assets/plugins/bxslider/jquery.bxslider.css">
    <link rel="stylesheet" href="resources/assets/plugins/fancybox/source/jquery.fancybox.css"> 
    <link rel="stylesheet" href="resources/assets/plugins/revolution_slider/rs-plugin/css/settings.css" type="text/css" media="screen">
    <!-- CSS Theme -->    
    <link rel="stylesheet" href="resources/assets/css/pages/page_one.css">
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
<div class="fullwidthbanner-container">
    <div class="fullwidthbanner">
        <ul>
            <!-- THE FIRST SLIDE -->
            <li data-transition="slideleft" data-slotamount="1" data-masterspeed="300" data-thumb="resources/assets/img/sliders/revolution/thumbs/thumb3.jpg">

                <!-- THE MAIN IMAGE IN THE THIRD SLIDE -->                                               
                <img src="resources/assets/img/sliders/revolution/bg3.jpg" >

                <div class="caption large_text sft"
                     data-x="10"
                     data-y="44"
                     data-speed="300"
                     data-start="800"
                     data-easing="easeOutExpo">
                     TOUCH ENABLED
                </div>

                <div class="caption medium_text sfl"
                     data-x="39"
                     data-y="82"
                     data-speed="300"
                     data-start="1100"
                     data-easing="easeOutExpo">
                     AND
                </div>

                <div class="caption large_text sfr"
                     data-x="88"
                     data-y="78"
                     data-speed="300"
                     data-start="1100"
                     data-easing="easeOutExpo">
                     <span style="color: #72c02c;">RESPONSIVE</span>
                </div>

                <!-- <div class="caption lfl"
                     data-x="10"
                     data-y="150"
                     data-speed="800"
                     data-start="900"
                     data-easing="easeOutExpo">
                     <img src="resources/assets/img/sliders/revolution/imac.png" alt="Image 4">
                </div>

                <div class="caption lfl"
                     data-x="210"
                     data-y="245"
                     data-speed="600"
                     data-start="1000"
                     data-easing="easeOutExpo">
                     <img src="resources/assets/img/sliders/revolution/ipad.png" alt="Image 5">
                </div>

                <div class="caption lfl"
                     data-x="322"
                     data-y="313"
                     data-speed="400"
                     data-start="1100"
                     data-easing="easeOutExpo">
                     <img src="resources/assets/img/sliders/revolution/iphone.png" alt="Image 6">
                </div>

                <div class="caption lft"
                     data-x="500"
                     data-y="130"
                     data-speed="300"
                     data-start="500"
                     data-easing="easeOutExpo">
                     <img src="resources/assets/img/sliders/revolution/html5andcss3.png" alt="Image 6">
                </div> -->
            </li>

            <!-- THE SECOND SLIDE -->
            <li data-transition="3dcurtain-vertical" data-slotamount="10" data-masterspeed="300" data-thumb="resources/assets/img/sliders/revolution/thumbs/thumb1.jpg">

                <!-- THE MAIN IMAGE IN THE FIRST SLIDE -->
                <img src="resources/assets/img/sliders/revolution/bg1.jpg">

                <div class="caption large_text sfb bg-black-opacity"
                     data-x="176"
                     data-y="12"
                     data-speed="300"
                     data-start="800"
                     data-easing="easeOutExpo">
                     OVER 
                     <span style="color: #ffcc00;">1000</span> 
                     SATISFIED CUSTOMERS
                </div>

                <div class="caption randomrotate"
                     data-x="189"
                     data-y="76"
                     data-speed="600"
                     data-start="1100"
                     data-easing="easeOutExpo">
                     <img class="img-border" src="resources/assets/img/sliders/revolution/p1.jpg" alt="Image 2">
                </div>

                <div class="caption randomrotate"
                     data-x="0"
                     data-y="92"
                     data-speed="600"
                     data-start="1200"
                     data-easing="easeOutExpo">
                     <img class="img-border" src="resources/assets/img/sliders/revolution/p2.jpg" alt="Image 3">
                </div>

                <div class="caption randomrotate"
                     data-x="200"
                     data-y="209"
                     data-speed="600"
                     data-start="1300"
                     data-easing="easeOutExpo">
                     <img class="img-border" src="resources/assets/img/sliders/revolution/p6.jpg" alt="Image 4">
                </div>

                <div class="caption randomrotate"
                     data-x="97"
                     data-y="117"
                     data-speed="300"
                     data-start="1400"
                     data-easing="easeOutExpo">
                     <img class="img-border" src="resources/assets/img/sliders/revolution/p4.jpg" alt="Image 5">
                </div>

                <div class="caption randomrotate"
                     data-x="14"
                     data-y="222"
                     data-speed="600"
                     data-start="1500"
                     data-easing="easeOutExpo">
                     <img class="img-border" src="resources/assets/img/sliders/revolution/p5.jpg" alt="Image 6">
                </div>

                <div class="caption randomrotate"
                     data-x="638"
                     data-y="201"
                     data-speed="300"
                     data-start="1600"
                     data-easing="easeOutExpo">
                     <img class="img-border" src="resources/assets/img/sliders/revolution/p3.jpg" alt="Image 7">
                </div>

                <div class="caption randomrotate"
                     data-x="717"
                     data-y="294"
                     data-speed="300"
                     data-start="1700"
                     data-easing="easeOutExpo">
                     <img class="img-border" src="resources/assets/img/sliders/revolution/p4.jpg" alt="Image 8">
                </div>

                <div class="caption randomrotate"
                     data-x="682"
                     data-y="79"
                     data-speed="300"
                     data-start="1800"
                     data-easing="easeOutExpo">
                     <img class="img-border" src="resources/assets/img/sliders/revolution/p8.jpg" alt="Image 9">
                </div>

                <div class="caption randomrotate"
                     data-x="807"
                     data-y="71"
                     data-speed="300"
                     data-start="1900"
                     data-easing="easeOutExpo">
                     <img class="img-border" src="resources/assets/img/sliders/revolution/p10.jpg" alt="Image 10">
                </div>

                <div class="caption randomrotate"
                     data-x="818"
                     data-y="271"
                     data-speed="300"
                     data-start="2000"
                     data-easing="easeOutExpo">
                     <img class="img-border" src="resources/assets/img/sliders/revolution/p5.jpg" alt="Image 11">
                </div>

                <div class="caption randomrotate"
                     data-x="95"
                     data-y="248"
                     data-speed="300"
                     data-start="2100"
                     data-easing="easeOutExpo">
                     <img class="img-border" src="resources/assets/img/sliders/revolution/p9.jpg" alt="Image 12">
                </div>

                <div class="caption randomrotate"
                     data-x="762"
                     data-y="165"
                     data-speed="300"
                     data-start="2200"
                     data-easing="easeOutExpo">
                     <img class="img-border" src="resources/assets/img/sliders/revolution/p7.jpg" alt="Image 13">
                </div>
            </li>

            <!-- THE THIRD SLIDE -->
            <li data-transition="papercut" data-slotamount="15" data-masterspeed="300" data-delay="9400" data-thumb="resources/assets/img/sliders/revolution/thumbs/thumb2.jpg">

                <!-- THE MAIN IMAGE IN THE SECOND SLIDE -->                                               
                <img src="resources/assets/img/sliders/revolution/bg2.jpg">

                <div class="caption very_big_white lfl stl"
                     data-x="18"
                     data-y="343"
                     data-speed="300"
                     data-start="500"
                     data-easing="easeOutExpo" data-end="8800" data-endspeed="300" data-endeasing="easeInSine">
                     TIMELINED CAPTIONS
                </div>

                <div class="caption big_white lfl stl"
                     data-x="18"
                     data-y="390"
                     data-speed="300"
                     data-start="800"
                     data-easing="easeOutExpo" data-end="9100" data-endspeed="300" data-endeasing="easeInSine">
                     MOVE CAPTIONS IN AND OUT ON ONE SLIDE
                </div>

                <div class="caption lft ltb"
                     data-x="600"
                     data-y="0"
                     data-speed="600"
                     data-start="1100"
                     data-easing="easeOutExpo" data-end="3100" data-endspeed="600" data-endeasing="easeInSine">
                     <img src="resources/assets/img/sliders/revolution/drink2.jpg" alt="Image 3">
                </div>

                <div class="caption bold_green_text sft stb"
                     data-x="760"
                     data-y="290"
                     data-speed="300"
                     data-start="1400"
                     data-easing="easeOutExpo" data-end="3300" data-endspeed="300" data-endeasing="easeInSine">
                     PRADA
                </div>

                <div class="caption big_black sfb stb"
                     data-x="780"
                     data-y="320"
                     data-speed="300"
                     data-start="1700"
                     data-easing="easeOutExpo" data-end="3200" data-endspeed="300" data-endeasing="easeInSine">
                     $ 128
                </div>

                <div class="caption lft ltb"
                     data-x="600"
                     data-y="0"
                     data-speed="600"
                     data-start="3600"
                     data-easing="easeOutExpo" data-end="5600" data-endspeed="600" data-endeasing="easeInSine">
                     <img src="resources/assets/img/sliders/revolution/drink1.jpg" alt="Image 6">
                </div>

                <div class="caption bold_brown_text sft stb"
                     data-x="760"
                     data-y="290"
                     data-speed="300"
                     data-start="3900"
                     data-easing="easeOutExpo" data-end="5800" data-endspeed="300" data-endeasing="easeInSine" >
                     Dolce & Gabbana
                </div>

                <div class="caption big_black sfb stb"
                     data-x="780"
                     data-y="320"
                     data-speed="300"
                     data-start="4200"
                     data-easing="easeOutExpo" data-end="5700" data-endspeed="300" data-endeasing="easeInSine">
                     $ 116
                </div>

                <div class="caption lft ltb"
                     data-x="600"
                     data-y="0"
                     data-speed="600"
                     data-start="6100"
                     data-easing="easeOutExpo" data-end="8100" data-endspeed="300" data-endeasing="easeInSine">
                     <img src="resources/assets/img/sliders/revolution/drink3.jpg" alt="Image 9">
                </div>

                <div class="caption bold_red_text sft stb"
                     data-x="760"
                     data-y="290"
                     data-speed="300"
                     data-start="6400"
                     data-easing="easeOutExpo" data-end="8300" data-endspeed="300" data-endeasing="easeInSine">
                     L'EAU DE CHLOE
                </div>

                <div class="caption big_black sfb stb"
                     data-x="780"
                     data-y="320"
                     data-speed="300"
                     data-start="6700"
                     data-easing="easeOutExpo" data-end="8200" data-endspeed="300" data-endeasing="easeInSine">
                     $ 142
                </div>
            </li>

            <!-- THE FOURTH SLIDE -->
            <li data-transition="flyin" data-slotamount="1" data-masterspeed="300" data-thumb="resources/assets/img/sliders/revolution/thumbs/thumb4.jpg">
                
                <!-- THE MAIN IMAGE IN THE FOURTH SLIDE -->                                
                <img src="resources/assets/img/sliders/revolution/bg4.jpg" >

               <!--  <div class="caption lfb boxshadow" 
                     data-x="20" 
                     data-y="120" 
                     data-speed="900" 
                     data-start="500" 
                     data-easing="easeOutBack">
                     <iframe src="http://player.vimeo.com/video/54035990?title=0&amp;byline=0&amp;portrait=0" width="500" height="281" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe> 
                </div> -->

                <div class="caption sft big_black"  
                     data-x="570" 
                     data-y="120" 
                     data-speed="300" 
                     data-start="1200" 
                     data-easing="easeOutExpo">
                     Video Support
                </div>
                
                <div class="caption sft big_white" 
                     data-x="570" 
                     data-y="162" 
                     data-speed="300" 
                     data-start="1300" 
                     data-easing="easeOutExpo">
                     Vimeo Example
                </div>
                
                <div class="caption lfb medium_grey"  
                     data-x="570" 
                     data-y="215" 
                     data-speed="300" 
                     data-start="1400" 
                     data-easing="easeOutExpo">
                     You can easily add
                </div>
                
                <div class="caption lfb medium_grey"  
                     data-x="570" 
                     data-y="240" 
                     data-speed="300" 
                     data-start="1500" 
                     data-easing="easeOutExpo">   
                     Vimeo & Youtube Videos
                </div>
                
                <div class="caption lfb medium_grey" 
                     data-x="570" 
                     data-y="265" 
                     data-speed="300" 
                     data-start="1600" 
                     data-easing="easeOutExpo">
                     to your Slides
                </div>
            </li>
        </ul>

        <div class="tp-bannertimer tp-bottom"></div>
    </div>
</div>
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
                <a href="./Register" class="btn-buy hover-effect">Register Now</a>            
            </div>
        </div>
    </div>
</div><!--/row-->
<!-- End Purchase Block -->

<!--=== Content Part ===-->
<div class="one-page">
    <div class="one-page-inner one-default">
        <div class="container">
            <h1>At vero eos et accusamus et iusto odio dignissimos</h1>
            <div class="row">
                <div class="col-md-6">
                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero consectetur adipiscing elit magna. Sed et quam lacus..</p>
                    <p>Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.</p>
                    <a class="btn-u btn-u-large btn-u-green one-page-btn"><i class="icon-bolt"></i> libero adipiscing</a>
                </div>
                <div class="col-md-6">
                    <img src="resources/assets/img/new/img5.jpg" class="img-responsive margin-bottom-10" alt="">
                </div>
            </div>
        </div>
    </div>

    <div class="one-page-inner one-blue">
        <div class="container">
            <h1>At vero eos et accusamus et iusto odio dignissimos</h1>
            <div class="row">
                <div class="col-md-6">
                    <img src="resources/assets/img/new/img1.jpg" class="margin-bottom-10 img-responsive" alt="">
                </div>
                <div class="col-md-6">
                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero consectetur adipiscing elit magna. Sed et quam lacus..</p>
                    <p>Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.</p>
                    <a class="btn-u btn-u-large btn-u-red one-page-btn"><i class="icon-bell"></i> libero adipiscing</a>
                </div>
            </div>
        </div>
    </div>

    <div class="one-page-inner one-grey">
        <div class="container">
            <h1>Molestias excepturi sint occaecati cupiditate</h1>
            <div class="row margin-bottom-40">
                <div class="col-md-6">
                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero consectetur adipiscing elit magna. Sed et quam lacus..</p>
                    <p>Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.</p>
                    <a class="btn-u btn-u-large btn-u-blue one-page-btn"><i class="icon-bullhorn"></i> libero adipiscing</a>
                </div>
                <div class="col-md-6">
                    <img src="resources/assets/img/new/img7.jpg" class="img-responsive" alt="">
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <img src="resources/assets/img/new/img6.jpg" class="margin-bottom-20 img-responsive" alt="">
                </div>
                <div class="col-md-6">
                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero consectetur adipiscing elit magna. Sed et quam lacus..</p>
                    <p>Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.</p>
                    <a class="btn-u btn-u-large btn-u-orange one-page-btn"><i class="icon-briefcase"></i> libero adipiscing</a>
                </div>
            </div>
        </div>
    </div>

    <div class="one-page-inner one-red">
        <div class="container">
            <h1>At vero eos et accusamus et iusto odio dignissimos</h1>
            <div class="row">
                <div class="col-md-6">
                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero consectetur adipiscing elit magna. Sed et quam lacus..</p>
                    <p>Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.</p>
                    <a class="btn-u btn-u-large btn-u-green one-page-btn"><i class="icon-comments-alt"></i> libero adipiscing</a>
                </div>
                <div class="col-md-6">
                    <img src="resources/assets/img/new/img10.jpg" class="img-responsive margin-bottom-10" alt="">
                </div>
            </div>
        </div>
    </div>

    <div class="one-page-inner one-default">
        <div class="container">
            <h1>At vero eos et accusamus et iusto odio dignissimos</h1>
            <div class="row">
                <div class="col-md-6">
                    <img src="resources/assets/img/main/8.jpg" class="img-responsive margin-bottom-10" alt="">
                </div>
                <div class="col-md-6">
                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero consectetur adipiscing elit magna. Sed et quam lacus..</p>
                    <p>Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.</p>
                   <!--  <div class="row margin-bottom-20">
                        <div class="col-md-3">
                            <a href="resources/assets/img/main/1.jpg" title="Project #2" data-rel="fancybox-button" class="thumbnail fancybox-button zoomer">
                                <span class="overlay-zoom">  
                                    <img class="img-responsive" src="resources/assets/img/main/1.jpg" alt="" />
                                    <div class="zoom-icon"></div>                   
                                </span>                                              
                            </a>
                        </div>
                        <div class="col-md-3">
                            <a href="resources/assets/img/main/2.jpg" title="Project #2" data-rel="fancybox-button" class="thumbnail fancybox-button zoomer">
                                <span class="overlay-zoom">  
                                    <img class="img-responsive" src="resources/assets/img/main/2.jpg" alt="" />
                                    <div class="zoom-icon"></div>                   
                                </span>                                              
                            </a>                                                                                    
                        </div>
                        <div class="col-md-3">
                            <a href="resources/assets/img/main/3.jpg" title="Project #2" data-rel="fancybox-button" class="thumbnail fancybox-button zoomer">
                                <span class="overlay-zoom">  
                                    <img class="img-responsive" src="resources/assets/img/main/3.jpg" alt="" />
                                    <div class="zoom-icon"></div>                   
                                </span>                                              
                            </a>                                                                                    
                        </div>
                        <div class="col-md-3">
                            <a href="resources/assets/img/main/4.jpg" title="Project #2" data-rel="fancybox-button" class="thumbnail fancybox-button zoomer">
                                <span class="overlay-zoom">  
                                    <img class="img-responsive" src="resources/assets/img/main/4.jpg" alt="" />
                                    <div class="zoom-icon"></div>                   
                                </span>                                              
                            </a>                                                                                    
                        </div>
                    </div> -->
                    <a class="btn-u btn-u-large btn-u-red one-page-btn"><i class="icon-thumbs-up"></i> libero adipiscing</a>
                </div>
            </div>
            <hr>
            <div class="row">
               <div class="col-md-3">
                  <h3><a href="#">Consectetur adipiscing</a></h3>
                  <p>Pellentesque viverra vehicula sem ut volutpat dosum molor sit amet, consectetur adipiscing elit</p>
               </div>
               <div class="col-md-3">
                  <h3><a href="#">Ut volutpat dosum</a></h3>
                  <p>Lunt in lpa qui officia deserunt mollitia mo animi, asdid leoff iscia est labor le harum quidem rerum facilis</p>
               </div>
               <div class="col-md-3">
                  <h3><a href="#">Viverra de esque</a></h3>
                  <p>Volutpat dosum esque viverra ved et quam lacusehicula sem ut  molorviverra sit amet, consetetur edipiscin la</p>
               </div>
               <div class="col-md-3">
                  <h3><a href="#">Sem ut volutpat dum</a></h3>
                  <p>Deleniti atque corrupa vehicula sem ut volutpat dosum molor sit amet, consectetur adipiscing praesentium</p>
               </div>
            </div>            
        </div>
    </div>    
</div><!--/one-page-->
<!-- End Content Part -->

<!--=== Footer ===-->
<c:import url="../footer.jsp"></c:import>
<!--/footer-->	
<!--=== End Footer ===-->

<!--=== Copyright ===-->
<!-- <div class="copyright">
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
		</div>/row
	</div>/container	
</div> --><!--/copyright-->	
<!--=== End Copyright ===-->
<!-- JS Global Compulsory -->			
<script type="text/javascript" src="resources/assets/js/lib/jquery-2.1.1.js"></script>
<script type="text/javascript" src="resources/assets/plugins/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script> 
<script type="text/javascript" src="resources/assets/plugins/hover-dropdown.min.js"></script> 
<script type="text/javascript" src="resources/assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="resources/assets/plugins/less-1.4.1.min.js"></script>
<!-- JS Implementing Plugins -->           
<script type="text/javascript" src="resources/assets/plugins/flexslider/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="resources/assets/plugins/bxslider/jquery.bxslider.js"></script>
<script type="text/javascript" src="resources/assets/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="resources/assets/plugins/revolution_slider/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<!-- JS Page Level -->           
<script type="text/javascript" src="resources/assets/js/app.js"></script>
<script type="text/javascript" src="resources/assets/js/pages/index.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
      	App.init();
        App.initSliders();
        App.initFancybox();
        App.initBxSlider();
        Index.initRevolutionSlider();                                
    });
</script>

</body>
</html>	