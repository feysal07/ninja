<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<c:import url="../include.jsp"></c:import>
<c:import url="../header.jsp"></c:import>

<script type="text/javascript"
	src="resources/assets/js/pages/changePassword.js">
	
</script>

<title>HomeNinja | Change Password</title>

<!--=== Breadcrumbs ===-->
<div class="breadcrumbs margin-bottom-40">
	<div class="container">
		<h1 class="pull-left">Change Password</h1>
		<ul class="pull-right breadcrumb">
			<li><a href=".">Home</a></li>
			<!-- <li><a href="">Pages</a></li> -->
			<li class="active">Change Password</li>
		</ul>
	</div>
	<!--/container-->
</div>
<!--/breadcrumbs-->
<!--=== End Breadcrumbs ===-->

<!--=== Content Part ===-->
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
				<div class="reg-page">
					<div class="reg-header">
						<h2>Change Password</h2>
						<!-- <p>
							Already Signed Up? Click <a href="./login" class="color-green">Sign
								In</a> to login your account.
						</p> -->
					</div>
 			
 			<!--  Alert messages -->
 			
			<div class="alert alert-success" id="alertSuccess" hidden="true">
				<!-- <button type="button" class="close" data-dismiss="alert" onclick="javascript:closeSuccessBox();">&times;</button> -->
				<i class="icon-ok "></i>&nbsp; your password is changed successfully!
			</div>		
			
			<div class="alert alert-danger fade in" id="alertError" hidden="true">
				<!-- <button type="button" class="close" data-dismiss="alert" onclick="javascript:closeErrorBox();">&times;</button> -->
				<label for="myalue" ></label>
			</div>
			
			<!--  alert messages end -->

					<label>Old Password<span class="color-red">*</span></label>
					<input type="text" id="oldPassword"
						class="form-control margin-bottom-20"/>

					<div class="row">
						<div class="col-sm-6">
							<label>New Password <span class="color-red">*</span></label>
							<input type="password" id="newPassword"
								class="form-control margin-bottom-20"  />
						</div>
						<div class="col-sm-6">
							<label>Confirm Password <span class="color-red">*</span></label>
							<input type="password" id="confirmPassword"
								class="form-control margin-bottom-20" />
						</div>
					</div>

					<hr>

					<div class="row">
					 	<div class="col-lg-6" style="visibility: hidden;">
							<label class="checkbox"> <input type="checkbox">
								I read <a href="page_terms.html" class="color-green">Terms
									and Conditions</a>
							</label>
						</div> 
						<div class="col-lg-6 text-right">&nbsp;&nbsp;
						<img id="loader-img" src="resources/assets/img/loader.gif" hidden="hidden" height="30" width="30" class="color-img" alt="">
							<button class="btn-u pull-right" type="button"
								onclick="javascript:changePassword();">Change Password</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/container-->
<!--=== End Content Part ===-->

<!-- Footer-->
<c:import url="../footer.jsp"></c:import>
