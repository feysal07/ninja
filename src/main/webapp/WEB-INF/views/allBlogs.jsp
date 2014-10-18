<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page session="false" %>

<title>HomeNinja | Blogs</title>
<!DOCTYPE c:import PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:import url="../include.jsp"></c:import> 
<c:import url="../header.jsp"></c:import>
<!--=== Breadcrumbs ===-->
<div class="breadcrumbs margin-bottom-40">
    <div class="container">
        <h1 class="pull-left">Blog Medium</h1>
        <ul class="pull-right breadcrumb">
            <li><a href=".">Home</a></li>
            <!-- <li><a href="">Features</a></li> -->
            <li class="active">Blog Medium</li>
        </ul>
    </div>
</div><!--/breadcrumbs-->
<!--=== End Breadcrumbs ===-->

<!--=== Content Part ===-->
<div class="container">		
	<div class="row blog-page">    
        <!-- Left Sidebar -->
    	<div class="col-md-9 md-margin-bottom-40">
    		<c:forEach items="${blogs}" var="blog">
            <!--Blog Post-->
            <form action="./blogDetails" method="post">
            <div class="row blog blog-medium margin-bottom-40">
                <div class="col-md-5">
                    <img class="img-responsive" src="resources/assets/img/main/11.jpg" alt="">
                </div>    
                <div class="col-md-7">
                    <h2>${blog.title}</h2>
                    <ul class="list-unstyled list-inline blog-info">
                    	<c:set var="createdDate" value="${blog.createdDate}"/>
                        <li><i class="icon-calendar"></i> ${fn:substring(createdDate,0,10)}</li>
                        <li><i class="icon-comments"></i> <a href="#">${blog.commentCount} Comments</a></li>
                        <li><i class="icon-tags"></i> ${blog.tags.tags}</li>
                    </ul>
                    <c:set var="content" value="${blog.content}"/>
                    <p>${fn:substring(content,0,500)}</p>
                    <input type="hidden" id="id" name="id" value="${blog.id}"/>
                    <p><button type="submit" class="btn-u btn-u-small"><i class="icon-location-arrow"></i> Read More</button></p>
                </div>    
            </div>
            </form>
            <!--End Blog Post-->        
    		</c:forEach>
    	

            <hr class="margin-bottom-40">
                        
            <!--Pagination-->
            <div class="text-center">
                <ul class="pagination">
                    <li><a href="#"></a></li>
                    <c:forEach var="i" begin="1" end="${pageNumber}">
                        <li><a href="#"><c:out value="${i}"/></a></li>
                        <%--<li class="active"><a href="#">3</a></li>--%>
                    </c:forEach>

                    <li><a href="#"></a></li>
                </ul>
            </div>
            <!--End Pagination-->
        </div>
        <!-- End Left Sidebar -->

        <!-- Right Sidebar -->
        <div class="col-md-3">
        	<c:import url="../facebook-like-box.jsp"></c:import>
        </div>
    	<!-- <div class="col-md-3">
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
        </div> -->
        <!-- End Right Sidebar -->
    </div><!--/row-->        
</div><!--/container-->		
<!--=== End Content Part ===-->
 <!-- Footer-->
<c:import url="../footer.jsp"></c:import>
