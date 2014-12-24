<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        
 
			<c:if test="${userInfo != null}">
			
				<c:if test="${userInfo['class'] == 'class com.homeninja.vo.UserInfo' && userInfo.loggedIn != null && userInfo.loggedIn == 'true'}">
					<li><a>Welcome. ${userInfo.userName}</a></li>
					<li class="devider"></li>
					<li><a href="./logout">Logout</a></li>
					<li class="devider"></li>
					<li><a href="./help">Help</a></li>
				</c:if>
				<c:if test="${userInfo['class'] == 'class com.homeninja.vo.UserInfo' && userInfo.loggedIn != null && userInfo.loggedIn == 'false'}">
				<li><a href="./Register">Register</a></li>
				<li class="devider"></li>
				<li><a href="./login">Login</a></li>
				<li class="devider"></li>
				<li><a href="./help">Help</a></li>
			</c:if>
			</c:if>
			<c:if test="${userInfo == null}">
				<li><a href="./Register">Register</a></li>
				<li class="devider"></li>
				<li><a href="./login">Login</a></li>
				<li class="devider"></li>
				<li><a href="./help">Help</a></li>
			</c:if>
		</ul>
	</div>
</div>
<!--/top-->
<!--=== End Top ===-->
<!--=== Header ===-->
<div class="header">
	<div class="navbar navbar-default" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-responsive-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"> <img id="logo-header" src="resources/assets/img/logo.png" 
				height="45px" width="225px" alt="Logo" style="margin-top: -13px;">
				</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-responsive-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="../Home/Index"
						class="dropdown-toggle" data-toggle="dropdown"
						data-hover="dropdown" data-delay="0" data-close-others="false">Home
							<i class="icon-angle-down"></i>
					</a>
						<ul class="dropdown-menu">
							<li><a href=".">Home</a></li>
							<li><a href="./about-us">About Us</a></li>
						</ul></li>
						
					<c:if test="${userInfo != null}">
					<c:if test="${userInfo['class'] == 'class com.homeninja.vo.UserInfo' && userInfo.loggedIn != null && userInfo.loggedIn == 'true'}">			
					<li class="dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						data-hover="dropdown" data-delay="0" data-close-others="false">My Account
							<i class="icon-angle-down"></i>
					</a>
						<ul class="dropdown-menu">
							<li><a href="./manage-profile">Manage Account</a></li>
							<li><a href="./upgrade-account">Upgrade Account</a></li>
							<li><a href="./change-password">Change Password</a></li>
							<li><a href="./my-profile">Public Profile</a></li>
							<li><a href="./my-job">Posted Jobs</a></li>
						</ul></li>
						</c:if>	
					</c:if>	
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" data-hover="dropdown" data-delay="0"
						data-close-others="false">Find <i class="icon-angle-down"></i>
					</a>
						<ul class="dropdown-menu">
							<li><a href="./search-users">Contractors</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" data-hover="dropdown" data-delay="0"
						data-close-others="false">Jobs <i class="icon-angle-down"></i>
					</a>
						<ul class="dropdown-menu">
							<li><a href="./jobs">Post A Job</a></li>
							<li><a href="./job-search">Search Jobs</a></li>
						</ul></li>
					<!-- <li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" data-hover="dropdown" data-delay="0"
						data-close-others="false">Discussion <i
							class="icon-angle-down"></i>
					</a>
						<ul class="dropdown-menu">
							<li><a href="./comingsoon">Discussion</a></li>
						</ul></li> -->
					<li class="dropdown"><a href="../Review/Posts"
						class="dropdown-toggle" data-toggle="dropdown"
						data-hover="dropdown" data-delay="0" data-close-others="false">Blog
							<i class="icon-angle-down"></i>
					</a>
						<ul class="dropdown-menu">
						    <c:if test="${userInfo['class'] == 'class com.homeninja.vo.UserInfo' && userInfo.loggedIn != null && userInfo.loggedIn == 'true' && userInfo.userType==5}">
							<li><a href="./blog-write">Post A Blog </a></li>
							</c:if>
							<li><a href="./blogs">Blogs</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" data-hover="dropdown" data-delay="0"
						data-close-others="false">Contacts <i class="icon-angle-down"></i>
					</a>
						<ul class="dropdown-menu">
							<li><a href="./contact-us">Contact Us</a></li>
						</ul></li>
				<!-- 	<li class="hidden-sm"><a class="search"><i
							class="icon-search search-btn"></i></a></li> -->
				</ul>
				<div class="search-open">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search">
						<span class="input-group-btn">
							<button class="btn-u" type="button">Go</button>
						</span>
					</div>
					<!-- /input-group -->
				</div>
			</div>
			<!-- /navbar-collapse -->
		</div>
	</div>
</div>
<!--=== End Header ===-->