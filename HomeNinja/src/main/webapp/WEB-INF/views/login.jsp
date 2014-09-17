<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<c:import url="../include.jsp"></c:import>
<c:import url="../header.jsp"></c:import>

<script type="text/javascript" src="resources/assets/js/pages/login.js">
	
</script>

<title>HomeNinja | Login</title>


<!--=== Breadcrumbs ===-->
<div class="breadcrumbs margin-bottom-40">
	<div class="container">
		<h1 class="pull-left">Login</h1>
		<ul class="pull-right breadcrumb">
			<li><a href=".">Home</a></li>
			<!-- <li><a href="">Pages</a></li> -->
			<li class="active">Login</li>
		</ul>
	</div>
	<!--/container-->
</div>
<!--/breadcrumbs-->
<!--=== End Breadcrumbs ===-->

<!--=== Content Part ===-->
<div class="container">

	<div class="row">
		<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">


			<div class="input-group margin-bottom-20"></div>
			<div class="reg-header">
				<h2>Login to your account</h2>
				<p>
					New User? Click <a href="./Register" class="color-green">Sign
						Up</a> to create your account.
				</p>
			</div>

			<!--  Alert messages -->
			<div class="alert alert-danger fade in" id="alertError" hidden="true">
				<button type="button" class="close" data-dismiss="alert" onclick="javascript:closeErrorBox();">&times;</button>
				<label for="myalue" ></label>
			</div>
			<div class="alert alert-success" id="alertSuccess" hidden="true">
				<button type="button" class="close" data-dismiss="alert" onclick="javascript:closeSuccessBox();">&times;</button>
				 <i class="icon-ok "></i>&nbsp; Login Success
			</div>

			<!--  alert messages end -->

			<div class="input-group margin-bottom-20">
				<span class="input-group-addon"><i class="icon-user"></i></span> <input
					type="text" placeholder="Username" id="Username" name="Username"
					class="form-control">
			</div>
			<div class="input-group margin-bottom-20">
				<span class="input-group-addon"><i class="icon-lock"></i></span> <input
					type="password" placeholder="Password" id="Password"
					name="Password" class="form-control">
			</div>

			<div class="row">
				<div class="col-md-6">
					<label class="checkbox"><input type="checkbox">
						Stay signed in</label>
				</div>
				<div class="col-md-6">
					<button class="btn-u pull-right" onclick="javascript:doLogin()">Login</button>
				<img id="loader-img"
					src="resources/assets/img/loader.gif" hidden="hidden" height="30"
					width="30" class="color-img" alt="">
				</div>


			</div>


			<hr>

			<h4>Forget your Password ?</h4>
			<p>
				No worries, <a class="color-green" href="./forgotPassword">click
					here</a> to reset your password.
			</p>

		</div>
	</div>
	<!--/row-->

	<!-- <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
		<h2 align="left">OR</h2>
		<div class="row">

			<button class="btn-u btn-u-blue  "
				onclick="javascript: doLoginUsingFacebook()">Login using
				Facebook</button>
		</div>
	</div> -->
</div>
<!--/container-->
<!--=== End Content Part ===-->


<!-- Footer-->
<c:import url="../footer.jsp"></c:import>