<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<c:import url="../include.jsp"></c:import>
<c:import url="../header.jsp"></c:import>

<script type="text/javascript" src="resources/assets/js/pages/forgotPassword.js">
	
</script>

<!--=== Breadcrumbs ===-->
<div class="breadcrumbs margin-bottom-40">
	<div class="container">
		<h1 class="pull-left">Login</h1>
		<ul class="pull-right breadcrumb">
			<li><a href="index.html">Home</a></li>
			<li><a href="">Pages</a></li>
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
		<c:if test="${not empty param.error}">
			<!-- Display error message -->
		</c:if>
		  <!--  Alert messages -->
			<div class="alert alert-danger fade in" id="alertError" hidden="true">
				<button type="button" class="close" data-dismiss="alert" onclick="javascript:closeErrorBox();">&times;</button>
				<strong>Oh!</strong> <label for="myalue" ></label>
			</div>
			<div class="alert alert-success" id="alertSuccess" hidden="true">
				<button type="button" class="close" data-dismiss="alert" onclick="javascript:closeSuccessBox();">&times;</button>
				<strong>done!</strong> Your password has been reset successfully. check your mail !
			</div>

			<!--  alert messages end -->
		
		<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
			<div class="input-group margin-bottom-20"></div>
			<div class="reg-header">
				<h2>Enter Your Username</h2>
			</div>

			<div class="input-group margin-bottom-20">
				<span class="input-group-addon"><i class="icon-user"></i></span> <input
					type="text" placeholder="Username" id="Username" name="Username"
					class="form-control">
			</div>
			<div class="row">
				<div class="col-md-6">
					<button class="btn-u pull-right" onclick="javascript:doValidateAndSendEmail()">Reset Password</button>
				</div>
				<br>


			</div>


			<hr>
		</div>
	</div>
	<!--/row-->
</div>
<!--/container-->
<!--=== End Content Part ===-->


<!-- Footer-->
<c:import url="../footer.jsp"></c:import>