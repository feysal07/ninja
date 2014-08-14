<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<c:import url="../include.jsp"></c:import>
<c:import url="../header.jsp"></c:import>
<c:url var="findStatesURL" value="/getStates" />

<script type="text/javascript"
	src="resources/assets/js/pages/registerPage3.js"></script>

<title>HomeNinja | Register Page 3</title>


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
<form:form action="./doRegisterPage3" method="POST" id="registerpage3"
	modelAttribute="registrationPage3" commandname="registrationPage3">
<form:input type="hidden" id="siteUserid" path="userId"
	value="${siteUser.userId}"/>
<!--=== Content Part ===-->
<div class="container">
	<div class="col-md-9 mb-margin-bottom-30">
		<div>
			<div class="headline">
				<h2>Upgrade User</h2>
			</div>
			<div class="row">
			
			<!--  Alert messages -->
			<div class="alert alert-danger fade in" id="alertError" hidden="true">
				<button type="button" class="close" data-dismiss="alert"
					onclick="javascript:closeErrorBox();">&times;</button>
				<strong>Oh!</strong> <label for="myalue"></label>
			</div>

			<div class="alert alert-success" id="alertSuccess" hidden="true">
				<button type="button" class="close" data-dismiss="alert"
					onclick="javascript:closeSuccessBox();">&times;</button>
				<strong>Well done!</strong> User information updated successfully!
			</div>
			<!--  alert messages end -->
			
			
				<div class="col-lg-4">
					<label>Upgrade As<span class="color-red">*</span></label>
					 <form:select
						id="userType"  path="userType.id" class="form-control">
						<option>--Select--</option>
						<!-- 									<option>Contractor</option>
									<option>Supplier</option>
									<option>Both</option> -->
					</form:select>
				</div>
			</div>
			<br /> <label>Company Name</label>
			<div class="row margin-bottom-20">
				<div class="col-lg-4">
					<form:input id="comapnyName" path = "userCompanyMap.companyName" type="text" class="form-control"></form:input>
				</div>
			</div>
			<label>More about the company</label>
			<div class="row margin-bottom-20">
				<div class="col-md-10 col-md-offset-0">
					<form:textarea rows="8" path = "userCompanyMap.companyName" class="form-control"></form:textarea>
				</div>
			</div>


		</div>
		<br />
		<div>
			<div>
				<div class="headline">
					<h2>Provide Services</h2>
				</div>
				<label>Choose your service categories</label>
				<div class="checkbox" id="categoriescheckboxes">
				</div>
					<br /> <label>Specialties</label>
				<div class="checkbox" id="subcategoriescheckboxes" >
				</div>

				<br />
				<p>
					<button class="btn-u pull-right" type="button" onclick="javascript:doRegister();">Save</button>
				</p>
			</div>

		</div>


	</div>
	<!--/col-md-9-->


</div>
</form:form>
<!--/row-->


<!--/container-->
<!-- Footer-->
<c:import url="../footer.jsp"></c:import>
