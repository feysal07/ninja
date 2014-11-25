<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>

<title>HomeNinja | Job Post</title>
<!DOCTYPE c:import PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:import url="../include.jsp"></c:import>
<c:import url="../header.jsp"></c:import>
<script type="text/javascript"	src="resources/assets/js/pages/jobPost.js"></script>

<!--=== Breadcrumbs ===-->
<div class="breadcrumbs margin-bottom-40">
	<div class="container">
		<h1 class="pull-left">Post Job</h1>
		<ul class="pull-right breadcrumb">
			<li><a href=".">Home</a></li>
			<!-- <li><a href="">Pages</a></li> -->
			<li class="active">Post Job</li>
		</ul>
	</div>
</div>
<!--/breadcrumbs-->
<!--=== End Breadcrumbs ===-->

<!--=== Content Part ===-->
<div class="container">
<div class="row blog-page">
	<div class="col-md-9 mb-margin-bottom-40">
		<div>
			<div class="headline">
				<h2>Job Details</h2>
			</div>
			<div class="row">
				<div class="col-lg-4">
					<label>Job Category</label>
					${jobDetails.strJobCategory}
				</div>
				<div class="col-lg-4">
					<label>Job Sub Category</label>
					${jobDetails.jobSubCategories}
				</div>
			
			</div>
			<br />
			
			<div class="row">
						<div class="col-lg-4">
							<label>State</label>
							${jobDetails.strState}
						</div>
						
			</div>
			<br>
			<div class="row">
			<div class="col-lg-4">
							<label>City</label>
							${jobDetails.strCity}
						</div>
			</div>
			
			<br /> <label>Pincode</label>
			<div class="row margin-bottom-20">
				<div class="col-lg-4">
					${jobDetails.pincode}
				</div>
			</div>
			<br /> <label>Location</label>
			<div class="row margin-bottom-20">
				<div class="col-lg-4">
						${jobDetails.location}
				</div>
			</div>
			
			<br /> <label>Job Title</label>
			<div class="row margin-bottom-20">
				<div class="col-lg-4">
					${jobDetails.title}
				</div>
			</div>
			<label>Description</label>
			<div class="row margin-bottom-20">
				<div class="col-md-8 col-md-offset-0">
					${jobDetails.jobDetails}
				</div>
			</div>


		</div>
		<br /> <br />
		<p>
				<c:choose>
					<c:when test="${isLogin == 'true'}">
					<button type="submit" class="btn-u"  onclick="javascript:jobPost()">Post</button>
					</c:when>
					<c:otherwise>
						<button type="button" class="btn-u btn-u-default" onclick="javascript: moveUp()">Post</button>
					</c:otherwise>
				</c:choose>

				
			
			<img id="loader-img" src="resources/assets/img/loader.gif" hidden="hidden" height="30" width="30" class="color-img" alt="">
		</p>


	</div>
<div class="col-md-3">
<c:import url="../facebook-like-box.jsp"></c:import>
</div>
	<!-- <div class="col-md-3" style="display: none;">
            Social Icons
            <div class="magazine-sb-social margin-bottom-30">
                <div class="headline headline-md"><h2>Social Icons</h2></div>
                <ul class="social-icons social-icons-color">
                    <li><a class="social_rss" data-original-title="Feed" href="#"></a></li>
                    <li><a class="social_facebook" data-original-title="Facebook" href="#"></a></li>
                    <li><a class="social_twitter" data-original-title="Twitter" href="#"></a></li>
                    <li><a class="social_vimeo" data-original-title="Vimeo" href="#"></a></li>
                    <li><a class="social_googleplus" data-original-title="Goole Plus" href="#"></a></li>
                    <li><a class="social_pintrest" data-original-title="Pinterest" href="#"></a></li>
                    <li><a class="social_linkedin" data-original-title="Linkedin" href="#"></a></li>
                    <li><a class="social_dropbox" data-original-title="Dropbox" href="#"></a></li>
                    <li><a class="social_picasa" data-original-title="Picasa" href="#"></a></li>
                    <li><a class="social_spotify" data-original-title="Spotify" href="#"></a></li>
                    <li><a class="social_jolicloud" data-original-title="Jolicloud" href="#"></a></li>
                    <li><a class="social_wordpress" data-original-title="Wordpress" href="#"></a></li>
                    <li><a class="social_github" data-original-title="Github" href="#"></a></li>
                    <li><a class="social_xing" data-original-title="Xing" href="#"></a></li>
                </ul>
                <div class="clearfix"></div>                
            </div>
            End Social Icons

            Posts
            <div class="posts margin-bottom-40">
                <div class="headline headline-md"><h2>Recent Posts</h2></div>
                <dl class="dl-horizontal">
                    <dt><a href="#"><img src="resources/assets/img/sliders/elastislide/6.jpg" alt=""></a></dt>
                    <dd>
                        <p><a href="#">Responsive Bootstrap 3 Template placerat idelo alac eratamet.</a></p> 
                    </dd>
                </dl>
                <dl class="dl-horizontal">
                    <dt><a href="#"><img src="resources/assets/img/sliders/elastislide/10.jpg" alt=""></a></dt>
                    <dd>
                        <p><a href="#">100+ Amazing Features Layer Slider, Layer Slider, Icons, 60+ Pages etc.</a></p> 
                    </dd>
                </dl>
                <dl class="dl-horizontal">
                    <dt><a href="#"><img src="resources/assets/img/sliders/elastislide/11.jpg" alt=""></a></dt>
                    <dd>
                        <p><a href="#">Developer Friendly Code imperdiet condime ntumi mperdiet condim.</a></p> 
                    </dd>
                </dl>
            </div>/posts
            End Posts

        	Tabs Widget
        	<div class="headline headline-md"><h2>Tabs Widget</h2></div>
            <div class="tab-v2 margin-bottom-40">
                <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="#home-1">About Us</a></li>
                    <li><a data-toggle="tab" href="#home-2">Quick Links</a></li>
                </ul>                
                <div class="tab-content">
                    <div id="home-1" class="tab-pane active">
                        <p>Vivamus imperdiet condimentum diam, eget placerat felis consectetur id. Donec eget orci metus, ac ac adipiscing nunc.</p> <p>Pellentesque fermentum, ante ac felis consectetur id. Donec eget orci metusvivamus imperdiet.</p>                        
                    </div>
                    <div id="home-2" class="tab-pane magazine-sb-categories">
                        <div class="row">
                            <ul class="list-unstyled col-xs-6">
                                <li><a href="#">Best Sliders</a></li>
                                <li><a href="#">Parralax Page</a></li>
                                <li><a href="#">Backgrounds</a></li>
                                <li><a href="#">Parralax Slider</a></li>
                                <li><a href="#">Responsive</a></li>
                                <li><a href="#">800+ Icons</a></li>
                            </ul>                        
                            <ul class="list-unstyled col-xs-6">
                                <li><a href="#">60+ Pages</a></li>
                                <li><a href="#">Layer Slider</a></li>
                                <li><a href="#">Bootstrap 3</a></li>
                                <li><a href="#">Fixed Header</a></li>
                                <li><a href="#">Best Template</a></li>
                                <li><a href="#">And Many More</a></li>
                            </ul>                        
                        </div>
                    </div>
                </div>
            </div>            
            End Tabs Widget

        	Photo Stream
        	<div class="headline headline-md"><h2>Photo Stream</h2></div>
            <ul class="list-unstyled blog-photos margin-bottom-30">
                <li><a href="#"><img class="hover-effect" alt="" src="resources/assets/img/sliders/elastislide/5.jpg"></a></li>
                <li><a href="#"><img class="hover-effect" alt="" src="resources/assets/img/sliders/elastislide/6.jpg"></a></li>
                <li><a href="#"><img class="hover-effect" alt="" src="resources/assets/img/sliders/elastislide/8.jpg"></a></li>
                <li><a href="#"><img class="hover-effect" alt="" src="resources/assets/img/sliders/elastislide/10.jpg"></a></li>
                <li><a href="#"><img class="hover-effect" alt="" src="resources/assets/img/sliders/elastislide/11.jpg"></a></li>
                <li><a href="#"><img class="hover-effect" alt="" src="resources/assets/img/sliders/elastislide/1.jpg"></a></li>
                <li><a href="#"><img class="hover-effect" alt="" src="resources/assets/img/sliders/elastislide/2.jpg"></a></li>
                <li><a href="#"><img class="hover-effect" alt="" src="resources/assets/img/sliders/elastislide/7.jpg"></a></li>
            </ul>
            End Photo Stream

        	Blog Latest Tweets
            <div class="blog-twitter">
                <div class="headline headline-md"><h2>Latest Tweets</h2></div>
                <div class="blog-twitter-inner">
                    <i class="icon-twitter"></i>
                    <a href="#">@htmlstream</a> 
                    At vero eos et accusamus et iusto odio dignissimos. 
                    <a href="#">http://t.co/sBav7dm</a> 
                    <span>5 hours ago</span>
                </div>
                <div class="blog-twitter-inner">
                    <i class="icon-twitter"></i>
                    <a href="#">@htmlstream</a> 
                    At vero eos et accusamus et iusto odio dignissimos. 
                    <a href="#">http://t.co/sBav7dm</a> 
                    <span>5 hours ago</span>
                </div>
                <div class="blog-twitter-inner">
                    <i class="icon-twitter"></i>
                    <a href="#">@htmlstream</a> 
                    At vero eos et accusamus et iusto odio dignissimos. 
                    <a href="#">http://t.co/sBav7dm</a> 
                    <span>5 hours ago</span>
                </div>
            </div>
            End Blog Latest Tweets
        </div>
	 -->
	<!--/col-md-9-->
</div>
</div>
<!--/row-->
<!--/container-->
<!--=== End Content Part ===-->
<!-- Footer-->
<c:import url="../footer.jsp"></c:import>