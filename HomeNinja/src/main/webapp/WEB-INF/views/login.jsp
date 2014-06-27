<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<c:import url="../include.jsp"></c:import>
<c:import url="../header.jsp"></c:import>

<script type="text/javascript">
	function doLogin() {
		var myObject = new Object();
		myObject.userName = $('#Username').val();
		myObject.password = $('#Password').val();

		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/doLogin",
			data : JSON.stringify(myObject),
			contentType : 'application/json',

			beforeSend : function() {

			},
			success : function(response) {
				if (response == "login-fail-nouser"
						|| response == "login-fail-usernoexist") {
					alert("Invalid user. Please try again");
				}
				if (response == "login-fail-nopassword") {
					alert("Password not entered. Please try again");
				}

				if (response == "home") {
					location.href = "${pageContext.request.contextPath}/home";
				} else {
					location.href = "${pageContext.request.contextPath}/login";
				}

			},
			complete : function() {

			},
			error : function(errorThrown) {
				console.log(errorThrown);

			}
		});
	}

	function doLoginUsingFacebook() {
		$.ajax({
			type : "GET",
			url : "${pageContext.request.contextPath}/doLoginUsingFacebook",
			accept: "text/plain",
			beforeSend : function() {

			},
			success : function(response) {
				if (response == "facebook-login") {
					location.href = "${pageContext.request.contextPath}/connect/facebook";
				}
				if (response == "home") {
					location.href = "${pageContext.request.contextPath}/home";
				}
				if (response == "register") {
					location.href = "${pageContext.request.contextPath}/register";
				}

			},
			complete : function() {
				//alert("Invalid user. Please try again");

			},
			error : function(errorThrown) {
				//alert("Invalid user. Please try again");
				console.log(errorThrown);
			}
		});
	}
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
		<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
			<div class="input-group margin-bottom-20"></div>
			<div class="reg-header">
				<h2>Login to your account</h2>
				<p>
					New User? Click <a href="./Register" class="color-green">Sign
						Up</a> to create your account.
				</p>
			</div>

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
				</div>
				<div class="col-md-6">
					<button class="btn-u pull-right"
						onclick="javascript: doLoginUsingFacebook()">Login using
						facebook</button>
				</div>

			</div>


			<hr>

			<h4>Forget your Password ?</h4>
			<p>
				no worries, <a class="color-green" href="#">click here</a> to reset
				your password.
			</p>

		</div>
	</div>
	<!--/row-->
</div>
<!--/container-->
<!--=== End Content Part ===-->


<!-- Footer-->
<c:import url="../footer.jsp"></c:import>