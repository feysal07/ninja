<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false" %>
<title>HomeNinja | Contact Us</title>
<c:import url="../include.jsp"></c:import> 
<c:import url="../header.jsp"></c:import>

<script type="text/javascript"	src="resources/assets/js/pages/contact.js"></script>
<!--=== Breadcrumbs ===-->
<div class="breadcrumbs margin-bottom-40">
    <div class="container">
        <h1 class="pull-left">Contacts</h1>
        <ul class="pull-right breadcrumb">
            <li><a href=".">Home</a></li>
            <!-- <li><a href="">Pages</a></li> -->
            <li class="active">Contacts</li>
        </ul>
    </div>
</div><!--/breadcrumbs-->
<!--=== End Breadcrumbs ===-->

<!--=== Content Part ===-->
<div class="container">     
    <div class="row margin-bottom-30">
        <div class="col-md-9 mb-margin-bottom-30">
            <!-- Google Map -->
           <!--  <div id="map" class="map map-box map-box-space margin-bottom-40">
            </div> --><!---/map-->
            <!-- End Google Map -->

            <p>Please complete the form below. We'll do everything we can to respond to you as quickly as possible. Our goal is to reply to every email within <strong>two business days</strong>. Items marked with an asterisk are required.</p><br />
            <p>Please be assured, we will never sell or distribute the personal information you provide to us.</p><br>
            <!--  Alert messages -->
			<div class="alert alert-danger fade in" id="alertError" hidden="true">
				<!-- <button type="button" class="close" data-dismiss="alert" onclick="javascript:closeErrorBox();">&times;</button> -->
				<label for="myalue" ></label>
			</div>
			<div class="alert alert-success" id="alertSuccess" hidden="true">
				<!-- <button type="button" class="close" data-dismiss="alert" onclick="javascript:closeSuccessBox();">&times;</button> -->
				<i class="icon-ok "></i>&nbsp; Your request has been sent. we will reply you soon !
			</div>

			<!--  alert messages end -->
            <div>
                <label>Name<span class="color-red">*</span></label>
                <div class="row margin-bottom-20">
                    <div class="col-md-7 col-md-offset-0">
                        <input type="text" class="form-control" id="name">
                    </div>                
                </div>
                
                <label>Email <span class="color-red">*</span></label>
                <div class="row margin-bottom-20">
                    <div class="col-md-7 col-md-offset-0">
                        <input type="text" class="form-control" id="email">
                    </div>                
                </div>
                <label>Contact Purpose</label>
                <div class="row margin-bottom-20">
                    <div class="col-md-7 col-md-offset-0">
                        <select  class="form-control" id="contactPurpose">
						</select>
					</div>                
                </div>
                <label>Subject <span class="color-red">*</span></label>
                <div class="row margin-bottom-20">
                    <div class="col-md-7 col-md-offset-0">
                        <input type="text" class="form-control" id="subject">
                    </div>                
                </div>
                <label>Message</label>
                <div class="row margin-bottom-20">
                    <div class="col-md-11 col-md-offset-0">
                        <textarea rows="8" class="form-control" id="message"></textarea>
                    </div>                
                </div>
                
                <p id="sendContactUs"><button type="submit" class="btn-u" onclick="javascript:submitQuery()" >Send Message</button>
                <img id="loader-img" src="resources/assets/img/loader.gif" hidden="hidden" height="30" width="30" class="color-img" alt="">
                </p>
            </div>
        </div><!--/col-md-9-->
        
        <div class="col-md-3">
          <c:import url="../facebook-like-box.jsp"></c:import>
            <!-- Contacts -->
            <!-- <div class="headline"><h2>Contacts</h2></div>
            <ul class="list-unstyled who margin-bottom-30">
                <li><a href="#"><i class="icon-home"></i>5B Streat, City 50987 New Town US</a></li>
                <li><a href="#"><i class="icon-envelope-alt"></i>info@example.com</a></li>
                <li><a href="#"><i class="icon-phone-sign"></i>1(222) 5x86 x97x</a></li>
                <li><a href="#"><i class="icon-globe"></i>http://www.example.com</a></li>
            </ul>

            Business Hours
            <div class="headline"><h2>Business Hours</h2></div>
            <ul class="list-unstyled margin-bottom-30">
                <li><strong>Monday-Friday:</strong> 10am to 8pm</li>
                <li><strong>Saturday:</strong> 11am to 3pm</li>
                <li><strong>Sunday:</strong> Closed</li>
            </ul>

            Why we are?
            <div class="headline"><h2>Why we are?</h2></div>
            <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum.</p>
            <ul class="list-unstyled">
                <li><i class="icon-ok color-green"></i> Odio dignissimos ducimus</li>
                <li><i class="icon-ok color-green"></i> Blanditiis praesentium volup</li>
                <li><i class="icon-ok color-green"></i> Eos et accusamus</li>
            </ul>
        </div> --><!--/col-md-3-->
    </div><!--/row-->        
</div>
    <!-- Our Clients -->
    <!-- <div id="clients-flexslider" class="flexslider home clients">
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
    </div> --><!--/flexslider-->
    <!-- End Our Clients -->
</div><!--/container-->     
<!--=== End Content Part ===-->
<!-- Footer-->
<c:import url="../footer.jsp"></c:import>
