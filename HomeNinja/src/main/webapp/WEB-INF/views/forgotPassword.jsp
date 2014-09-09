<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<title>HomeNinja | Forget Password</title>
<c:import url="../include.jsp"></c:import>
<c:import url="../header.jsp"></c:import>

<script type="text/javascript"
	src="resources/assets/js/pages/forgotPassword.js">
	
</script>

<!--=== Breadcrumbs ===-->
<div class="breadcrumbs margin-bottom-40">
	<div class="container">
		<h1 class="pull-left">Login</h1>
		<ul class="pull-right breadcrumb">
			<li><a href=".">Home</a></li>
			<!-- <li><a href="">Pages</a></li> -->
			<li class="active">Forget Password</li>
		</ul>
	</div>
	<!--/container-->
</div>
<!--/breadcrumbs-->
<!--=== End Breadcrumbs ===-->

<!--=== Content Part ===-->
<div class="container">
	<div class="row">
		<c:if test="${not empty param.error}">
			<!-- Display error message -->
		</c:if>
		<!--  Alert messages -->
		<div class="alert alert-danger fade in" id="alertError" hidden="true">
			<button type="button" class="close" data-dismiss="alert"
				onclick="javascript:closeErrorBox();">&times;</button>
			<label for="myalue"></label>
		</div>
		<div class="alert alert-success" id="alertSuccess" hidden="true">
			<button type="button" class="close" data-dismiss="alert"
				onclick="javascript:closeSuccessBox();">&times;</button>
			<i class="icon-ok"></i>&nbsp; Your password has been reset
			successfully. check your mail !
		</div>

		<!--  alert messages end -->
		<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
			<div class="input-group margin-bottom-20"></div>
			<div class="reg-header">
				<h2>Enter Your Username</h2>
				<br>
			</div>
			<div class="input-group">
				<input id="userName" type="text" class="form-control" placeholder="Email Address">
				<span class="input-group-btn">
					<button class="btn-u" type="button"
						onclick="javascript:doValidateAndSendEmail()">Reset
						Password</button> <img id="loader-img"
					src="resources/assets/img/loader.gif" hidden="hidden" height="30"
					width="30" class="color-img" alt="">
				</span>
			</div>
			<div class="input-group margin-bottom-20"></div>
		</div>
		<br>
	</div>
	<hr>
	<!--/row-->
</div>
<!--/container-->
<!--=== End Content Part ===-->


<!-- Footer-->
<c:import url="../footer.jsp"></c:import>