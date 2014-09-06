<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<c:import url="../include.jsp"></c:import>
<c:import url="../header.jsp"></c:import>

<script type="text/javascript"
	src="resources/assets/js/pages/registerPage1.js">
	
</script>

<title>HomeNinja | Register Page 1</title>

<!--=== Breadcrumbs ===-->
<div class="breadcrumbs margin-bottom-40">
	<div class="container">
		<h1 class="pull-left">Registration</h1>
		<ul class="pull-right breadcrumb">
			<li><a href="index.html">Home</a></li>
			<li><a href="">Pages</a></li>
			<li class="active">Registration</li>
		</ul>
	</div>
	<!--/container-->
</div>
<!--/breadcrumbs-->
<!--=== End Breadcrumbs ===-->

<!--=== Content Part ===-->

<form:form id="registerpage1" action="./doRegisterPage1" method="POST"
	modelAttribute="siteUser">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
				<div class="reg-page">
					<div class="reg-header">
						<h2>Register a new account</h2>
						<p>
							Already Signed Up? Click <a href="./login" class="color-green">Sign
								In</a> to login your account.
						</p>
					</div>

					<!--  Alert messages -->
					<c:if test="${error == 'user-exits'}">
						<script type="text/javascript">
							showErrorUserExitsBox();
						</script>
						<!-- 						<div class="alert alert-danger fade in" id="alertError">
							<button type="button" class="close" data-dismiss="alert"
								onclick="javascript:closeErrorBox();">&times;</button>
							<strong>Oh!</strong> <label for="myalue"> The user name
								already exits</label>
						</div> -->
					</c:if>

					<c:if test="${error == 'user-add-fail'}">
											<script type="text/javascript">
							showErrorFailAddUserBox();
						</script>
						<!-- <div class="alert alert-danger fade in" id="alertError">
							<button type="button" class="close" data-dismiss="alert"
								onclick="javascript:closeErrorBox();">&times;</button>
							<strong>Oh!</strong> <label for="myalue"> Failed to add
								user. Try Again!</label>
						</div> -->
					</c:if>


					<div class="alert alert-danger fade in" id="alertError"
						hidden="true">
						<button type="button" class="close" data-dismiss="alert"
							onclick="javascript:closeErrorBox();">&times;</button>
						<label for="myalue"> Invalid Email
							address!</label>
					</div>

					<div class="alert alert-danger fade in" id="alertError4"
						hidden="true">
						<button type="button" class="close" data-dismiss="alert"
							onclick="javascript:closeError4Box();">&times;</button>
						<strong>Oh!</strong> <label for="myalue"> Please enter
							password!</label>
					</div>

					<div class="alert alert-danger fade in" id="alertError5"
						hidden="true">
						<button type="button" class="close" data-dismiss="alert"
							onclick="javascript:closeError5Box();">&times;</button>
						<strong>Oh!</strong> <label for="myalue"> Please enter
							confirm password!</label>
					</div>

					<div class="alert alert-danger fade in" id="alertError6"
						hidden="true">
						<button type="button" class="close" data-dismiss="alert"
							onclick="javascript:closeError6Box();">&times;</button>
						<strong>Oh!</strong> <label for="myalue">Confirm password
							does not match the entered password!</label>
					</div>

					<label>First Name<span class="color-red">*</span></label>
					<form:input type="text" id="fname"
						class="form-control margin-bottom-20" path="firstName" />

					<label>Last Name<span class="color-red">*</span></label>
					<form:input type="text" id="lname"
						class="form-control margin-bottom-20" path="lastName" />

					<label>Email Address <span class="color-red">*</span></label>
					<form:input type="email" id="email"
						class="form-control margin-bottom-20" path="loginEmail" />

					<label>Phone Number</label>
					<form:input type="text" id="phone"
						class="form-control margin-bottom-20" path="phoneNumber" />

					<div class="row">
						<div class="col-sm-6">
							<label>Password <span class="color-red">*</span></label>
							<form:input type="password" id="password"
								class="form-control margin-bottom-20" path="password" />
						</div>
						<div class="col-sm-6">
							<label>Confirm Password <span class="color-red">*</span></label>
							<input type="password" id="cnfrmPassword"
								class="form-control margin-bottom-20" />
						</div>
					</div>

					<hr>

					<div class="row">
						<div class="col-lg-6">
							<label class="checkbox"> <input type="checkbox">
								I read <a href="page_terms.html" class="color-green">Terms
									and Conditions</a>
							</label>
						</div>
						<div class="col-lg-6 text-right">
							<button class="btn-u pull-right" type="button"
								onclick="javascript:doRegister();">Register</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/container-->
</form:form>
<!--=== End Content Part ===-->

<!-- Footer-->
<c:import url="../footer.jsp"></c:import>
