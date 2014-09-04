<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>


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
		 <!--  Alert messages -->
			<div class="alert alert-danger fade in" id="alertError" hidden="true">
				<button type="button" class="close" data-dismiss="alert" onclick="javascript:closeErrorBox();">&times;</button>
				<label for="myalue" ></label>
			</div>
			<div class="alert alert-success" id="alertSuccess" hidden="true">
				<button type="button" class="close" data-dismiss="alert" onclick="javascript:closeSuccessBox();">&times;</button>
				<i class="icon-ok "></i>&nbsp; your job has been post successfully !
			</div>

			<!--  alert messages end -->
			<div class="headline">
				<h2>Posted job</h2>
			</div>
			<table class="table table-bordered">
				<thead>
				 
					<tr>
						<th>S.No</th>
						<th>Job Title</th>
						<th>Job Details</th>
						<th>Job Category</th>
						<th>Job Sub Category</th>
						<th class="hidden-sm">Maximum Limits</th>
						<th>Post Date</th>
						<!-- <th>Manage</th> -->
					</tr>
				
				</thead>
				<tbody>
				<c:forEach items="${jobPosts}" var="jobs">
					<tr>
						<td><c:out value="${jobs.sNo}"/></td>
						<td><c:out value="${jobs.jobTitle}"/></td>
						<td class="hidden-sm"><c:out value="${jobs.jobDetails}"/></td>
						<td><c:out value="${jobs.jobCategory}"/></td>
						<td><c:out value="${jobs.jobSubCategory}"/></td>
						<td><c:out value="${jobs.maxLimitReached}"/></td>
						<td><c:out value="${jobs.postDate}"/></td>
						<!-- <td><button class="btn btn-danger btn-xs"><i class="icon-trash"></i> Delete</button>
							<button class="btn btn-warning btn-xs"><i class="icon-pencil"></i> Edit</button>
						</td> -->
					</tr>
				</c:forEach>
					<!-- <tr>
						<td>2</td>
						<td>Jacob</td>
						<td class="hidden-sm">Thornton</td>
						<td>@fat</td>
						<td><button class="btn btn-warning btn-xs"><i class="icon-pencil"></i> Edit</button></td>
					</tr>
					<tr>
						<td>3</td>
						<td>Larry</td>
						<td class="hidden-sm">the Bird</td>
						<td>@twitter</td>
						<td><button class="btn btn-info btn-xs"><i class="icon-share"></i> Share</button></td>
					</tr>
					<tr>
						<td>4</td>
						<td>htmlstream</td>
						<td class="hidden-sm">Web Design</td>
						<td>@htmlstream</td>
						<td><button class="btn btn-success btn-xs"><i class="icon-ok"></i> Submit</button></td>
					</tr>
 -->				
 				</tbody>
			</table>


		</div>
	</div>
	<div class="col-md-3">
            <!-- Social Icons -->
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
            <!-- End Social Icons -->

            <!-- Posts -->
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
            </div><!--/posts-->
            <!-- End Posts -->

        	<!-- Tabs Widget -->
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
            <!-- End Tabs Widget -->

        	<!-- Photo Stream -->
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
            <!-- End Photo Stream -->

        	<!-- Blog Latest Tweets -->
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
            <!-- End Blog Latest Tweets -->
        </div>
	
	<!--/col-md-9-->
</div>
</div>
<!--/row-->
<!--/container-->
<!--=== End Content Part ===-->
<!-- Footer-->
<c:import url="../footer.jsp"></c:import>