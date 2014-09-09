<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false" %>

<c:import url="../include.jsp"></c:import> 
<c:import url="../header.jsp"></c:import>
<title>HomeNinja | About Us</title>
<!--=== Breadcrumbs ===-->
<div class="breadcrumbs margin-bottom-20">
	<div class="container">
        <h1 class="pull-left">About Us</h1>
        <ul class="pull-right breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li><a href="">Pages</a></li>
            <li class="active">About Us</li>
        </ul>
    </div><!--/container-->
</div><!--/breadcrumbs-->
<!--=== End Breadcrumbs ===-->

<!--=== Content Part ===-->
<div class="container">
    <div class="margin-bottom-50">
        <img class="img-responsive" src="resources/assets/img/sliders/revolution/bg8.jpg" alt="">
    </div>

    <div class="tag-box tag-box-v2">
        <h2>About Our Company</h2>
        <p>Et harum quidem rerum facilis est et expedita distinctio lorem ipsum dolor sit amet consectetur adipiscing elit. Ut non libero consectetur adipiscing elit magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat. Pellentesque viverra vehicula sem ut volutpat.</p>
    </div>

    <div class="margin-bottom-20 clearfix"></div>

    <div class="row">
        <!--Accordion--> 
        <div class="col-md-7 md-margin-bottom-40">
            <div id="accordion-1" class="panel-group acc-v1">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a href="#collapse-One" data-parent="#accordion-1" data-toggle="collapse" class="accordion-toggle">
                                Collapsible Group Item #1
                            </a>
                        </h4>
                    </div>
                    <div class="panel-collapse collapse in" id="collapse-One">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <img alt="" src="resources/assets/img/new/img5.jpg" class="img-responsive">
                                </div>
                                <div class="col-md-8">
                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a href="#collapse-Two" data-parent="#accordion-1" data-toggle="collapse" class="accordion-toggle">
                                Collapsible Group Item #2
                            </a>
                        </h4>
                    </div>
                    <div class="panel-collapse collapse" id="collapse-Two">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-8">
                                    <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid.</p>
                                    <ul class="list-unstyled">
                                        <li><i class="icon-ok color-green"></i> Donec id elit non mi porta gravida at eget metus..</li>
                                        <li><i class="icon-ok color-green"></i> Fusce dapibus, tellus ac cursus comodo egetine..</li>
                                        <li><i class="icon-ok color-green"></i> Food truck quinoa nesciunt laborum eiusmod runch..</li>
                                    </ul>
                                </div>
                                <div class="col-md-4">
                                    <img alt="" src="resources/assets/img/main/6.jpg" class="img-responsive">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a href="#collapse-Three" data-parent="#accordion-1" data-toggle="collapse" class="accordion-toggle">
                                Collapsible Group Item #3
                            </a>
                        </h4>
                    </div>
                    <div class="panel-collapse collapse" id="collapse-Three">
                        <div class="panel-body">
                            Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Food truck quinoa nesciunt laborum eiusmodolf moon tempor, sunt aliqua put a bird. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End Accordion--> 

        <!--Testimonials--> 
        <div class="col-md-5">
            <div class="carousel slide testimonials testimonials-v1" id="testimonials-1">
                <div class="carousel-inner">
                    <div class="item active">
                        <p>Crasjusto ducimus qui cupiditate non provident, similique sunt in culpaid est anditiis praesentium praesentium blanditiis praesentium non provident, similique sunt in culpaid est anditiis praesentium praesentium..</p>
                        <div class="testimonial-info">
                            <img alt="" src="resources/assets/img/testimonials/img1.jpg">
                            <span class="testimonial-author">
                                Jeremy Asigner 
                                <em>Web Developer, Unify Theme.</em>
                            </span>
                        </div>
                    </div>
                    <div class="item">
                        <p>Crasjusto ducimus qui cupiditate non provident, similique sunt in culpaid est anditiis praesentium praesentium blanditiis praesentium non provident, similique sunt in culpaid est anditiis praesentium praesentium..</p>
                        <div class="testimonial-info">
                            <img alt="" src="resources/assets/img/testimonials/user.jpg">
                            <span class="testimonial-author">
                                User 
                                <em>Java Developer, Htmlstream</em>
                            </span>
                        </div>
                    </div>
                    <div class="item">
                        <p>Crasjusto ducimus qui cupiditate non provident, similique sunt in culpaid est anditiis praesentium praesentium blanditiis praesentium non provident, similique sunt in culpaid est anditiis praesentium praesentium..</p>
                        <div class="testimonial-info">
                            <img alt="" src="resources/assets/img/testimonials/img2.jpg">
                            <span class="testimonial-author">
                                Kate Davenport 
                                <em>Web Designer, Google Inc.</em>
                            </span>
                        </div>                                
                    </div>
                </div>
                
                <div class="carousel-arrow">
                    <a data-slide="prev" href="#testimonials-1" class="left carousel-control">
                        <i class="icon-angle-left"></i>
                    </a>
                    <a data-slide="next" href="#testimonials-1" class="right carousel-control">
                        <i class="icon-angle-right"></i>
                    </a>
                </div>
            </div>            
        </div>
        <!--End Testimonials--> 
    </div>

    <div class="margin-bottom-50"></div>

    <!--Our Team-->
    <div class="headline"><h2>Meet Our Team</h2></div>    
    <div class="row team">
        <div class="col-sm-3">
            <div class="thumbnail-style">
                <img class="img-responsive" src="resources/assets/img/team/1.jpg" alt="" />
                <h3><a>Jack Bour</a> <small>Chief Executive Officer</small></h3>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem...</p>
                <ul class="list-unstyled list-inline team-socail">
                    <li><a href="#"><i class="icon-facebook"></i></a></li>
                    <li><a href="#"><i class="icon-twitter"></i></a></li>
                    <li><a href="#"><i class="icon-google-plus"></i></a></li>
                </ul>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="thumbnail-style">
                <img class="img-responsive" src="resources/assets/img/team/3.jpg" alt="" />
                <h3><a>Kate Metus</a> <small>Project Manager</small></h3>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem...</p>
                <ul class="list-unstyled list-inline team-socail">
                    <li><a href="#"><i class="icon-facebook"></i></a></li>
                    <li><a href="#"><i class="icon-twitter"></i></a></li>
                    <li><a href="#"><i class="icon-google-plus"></i></a></li>
                </ul>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="thumbnail-style">
                <img class="img-responsive" src="resources/assets/img/team/2.jpg" alt="" />
                <h3><a>Porta Gravida</a> <small>VP of Operations</small></h3>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem...</p>
                <ul class="list-unstyled list-inline team-socail">
                    <li><a href="#"><i class="icon-facebook"></i></a></li>
                    <li><a href="#"><i class="icon-twitter"></i></a></li>
                    <li><a href="#"><i class="icon-google-plus"></i></a></li>
                </ul>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="thumbnail-style">
                <img class="img-responsive" src="resources/assets/img/team/4.jpg" alt="" />
                <h3><a>Donec Elit</a> <small>Director, R &amp; D Talent</small></h3>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam porta sem...</p>
                <ul class="list-unstyled list-inline team-socail">
                    <li><a href="#"><i class="icon-facebook"></i></a></li>
                    <li><a href="#"><i class="icon-twitter"></i></a></li>
                    <li><a href="#"><i class="icon-google-plus"></i></a></li>
                </ul>
            </div>
        </div>
    </div><!--/team-->
    <!--End Our Team-->


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
<!--=== End Content Part ===-->

 <!-- Footer-->
<c:import url="../footer.jsp"></c:import>