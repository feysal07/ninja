<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page session="false" %>

<c:import url="../include.jsp"></c:import> 
<c:import url="../header.jsp"></c:import>

<!--=== Breadcrumbs ===-->
<div class="breadcrumbs margin-bottom-40">
    <div class="container">
        <h1 class="pull-left">Blog Details</h1>
        <ul class="pull-right breadcrumb">
            <li><a href="index.html">Home</a></li>
            <!-- <li><a href="">Blog</a></li> -->
            <li class="active">Blog Details</li>
        </ul>
    </div>
</div><!--/breadcrumbs-->
<!--=== End Breadcrumbs ===-->

<!--=== Content Part ===-->
<div class="container">		
	<div class="row blog-page blog-item">
        <!-- Left Sidebar -->
    	<div class="col-md-9 md-margin-bottom-60">
            <!--Blog Post-->        
            <div class="blog margin-bottom-40">
                <h2><a href="blog_item_option1.html">${blog.title}</a></h2>
                <div class="blog-post-tags">
                    <ul class="list-unstyled list-inline blog-info">
                    	<c:set var="createdDate" value="${blog.createdDate}"/>
                        <li><i class="icon-calendar"></i>${fn:substring(createdDate,0,10)}</li>
                        <li><i class="icon-pencil"></i>${blog.author}</li>
                        <li><i class="icon-comments"></i> <a href="#">${blog.commentCount} Comments</a></li>
                    </ul>
                    <ul class="list-unstyled list-inline blog-tags">
                        <li>
                            <i class="icon-tags"></i> 
                            <a href="#">${blog.tags.tags}</a>
                        </li>
                    </ul>                                                
                </div>
                <%--<div class="blog-img">--%>
                    <%--<img class="img-responsive" src="resources/assets/img/posts/2.jpg" alt="">--%>
                <%--</div>--%>
                <p>${blog.content}</p><br>                                
            </div>
            <!--End Blog Post-->        

			<hr>

            <!-- Recent Comments -->
            <div class="media">
            	<h3>Comments</h3>
                <div id="comments">
                    <jsp:include page="comments.jsp"/>
                </div>
            </div>
            <!-- End Recent Comments -->

            <hr>

            <c:choose>
                <c:when test="${logged=='true'}">
                    <!-- Comment Form -->
                    <div class="post-comment">
                        <h3>Leave a Comment</h3>
                            <label>Name</label>
                            <div class="row margin-bottom-20">
                                <div class="col-md-7 col-md-offset-0">
                                    <input type="text" class="form-control"
                                           disabled value="${username}">
                                </div>
                            </div>

                            <label>Email</label>
                            <div class="row margin-bottom-20">
                                <div class="col-md-7 col-md-offset-0">
                                    <input type="text" class="form-control"
                                           disabled value="${email}">
                                </div>
                            </div>

                            <label>Message<span class="color-red">*</span></label>
                            <div class="row margin-bottom-20">
                                <div class="col-md-11 col-md-offset-0">
                                    <textarea class="form-control" rows="8"
                                              id="message" name="message"></textarea>
                                </div>
                            </div>
                            <input type="hidden" value="${blog.id}" id="blog"
                                   name="blog">

                            <p><button class="btn-u" type="button"
                                       onclick="javascript:postComment()">Send
                                Message</button></p>
                    </div>
                    <!-- End Comment Form -->
                    <!--  Alert messages -->
                    <div class="alert alert-danger fade in" id="alertError"
                         hidden="true">
                        <button type="button" class="close" data-dismiss="alert"
                                onclick="javascript:closeErrorBox();">&times;</button>
                        <label for="myalue"></label>
                    </div>
                    <div class="alert alert-success" id="alertSuccess"
                         hidden="true">
                        <button type="button" class="close" data-dismiss="alert"
                                onclick="javascript:closeSuccessBox();">&times;</button>
                        <i class="icon-ok "></i>&nbsp; your comment has been
                        post successfully!
                    </div>
                    <!--  alert messages end -->
                </c:when>
                <c:otherwise>
                    <h3>To comment you should be logged in</h3>
                </c:otherwise>
            </c:choose>


        </div>
        <!-- End Left Sidebar -->

        <!-- Right Sidebar -->
        <div class="col-md-3 magazine-page">
        <c:import url="../facebook-like-box.jsp"></c:import>
        </div>
        <!-- <div class="col-md-3 magazine-page">
            Search Bar
            <div class="headline headline-md"><h2>Search</h2></div>            
            <div class="input-group margin-bottom-40">
                <input type="text" class="form-control" placeholder="Search">
                <span class="input-group-btn">
                    <button class="btn-u" type="button">Go</button>
                </span>
            </div>
            End Search Bar

            Posts
            <div class="posts margin-bottom-40">
                <div class="headline headline-md"><h2>Recent Posts</h2></div>
                <dl class="dl-horizontal">
                    <dt><a href="#"><img src="resources/assets/img/sliders/elastislide/6.jpg" alt="" /></a></dt>
                    <dd>
                        <p><a href="#">Responsive Bootstrap 3 Template placerat idelo alac eratamet.</a></p> 
                    </dd>
                </dl>
                <dl class="dl-horizontal">
                    <dt><a href="#"><img src="resources/assets/img/sliders/elastislide/10.jpg" alt="" /></a></dt>
                    <dd>
                        <p><a href="#">100+ Amazing Features Layer Slider, Layer Slider, Icons, 60+ Pages etc.</a></p> 
                    </dd>
                </dl>
                <dl class="dl-horizontal">
                    <dt><a href="#"><img src="resources/assets/img/sliders/elastislide/11.jpg" alt="" /></a></dt>
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

            Blog Tags
            <div class="headline headline-md"><h2>Blog Tags</h2></div>
            <ul class="list-unstyled blog-tags margin-bottom-30">
                <li><a href="#"><i class="icon-tags"></i> Business</a></li>
                <li><a href="#"><i class="icon-tags"></i> Music</a></li>
                <li><a href="#"><i class="icon-tags"></i> Internet</a></li>
                <li><a href="#"><i class="icon-tags"></i> Money</a></li>
                <li><a href="#"><i class="icon-tags"></i> Google</a></li>
                <li><a href="#"><i class="icon-tags"></i> TV Shows</a></li>
                <li><a href="#"><i class="icon-tags"></i> Education</a></li>
                <li><a href="#"><i class="icon-tags"></i> People</a></li>
                <li><a href="#"><i class="icon-tags"></i> People</a></li>
                <li><a href="#"><i class="icon-tags"></i> Math</a></li>
                <li><a href="#"><i class="icon-tags"></i> Photos</a></li>
                <li><a href="#"><i class="icon-tags"></i> Electronics</a></li>
                <li><a href="#"><i class="icon-tags"></i> Apple</a></li>
                <li><a href="#"><i class="icon-tags"></i> Canada</a></li>
            </ul>
            End Blog Tags

            Blog Latest Tweets
            <div class="blog-twitter margin-bottom-30">
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
                <div class="blog-twitter-inner">
                    <i class="icon-twitter"></i>
                    <a href="#">@htmlstream</a> 
                    At vero eos et accusamus et iusto odio dignissimos. 
                    <a href="#">http://t.co/sBav7dm</a> 
                    <span>5 hours ago</span>
                </div>
            </div>
            End Blog Latest Tweets
        </div> -->
        <!-- End Right Sidebar -->
    </div><!--/row-->        
</div><!--/container-->		
<!--=== End Content Part ===-->
 <!-- Footer-->
<c:import url="../footer.jsp"></c:import>