<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<c:import url="../include.jsp"></c:import>
<c:import url="../header.jsp"></c:import>
<%-- <c:url var="findStatesURL" value="/getStates" /> --%>

<!-- <script type="text/javascript"
	src="resources/assets/js/pages/registerPage2.js"></script> -->
 

<title>HomeNinja | Contractor Profile</title>

<!--=== Breadcrumbs ===-->
<div class="breadcrumbs margin-bottom-40">
	<div class="container">
		<h1 class="pull-left">Contractor Profile</h1>
		<ul class="pull-right breadcrumb">
			<li><a href=".">Home</a></li>
			<!-- <li><a href="">Pages</a></li> -->
			<li class="active">Contractor Profile</li>
		</ul>
	</div>
	<!--/container-->
</div>
<!--/breadcrumbs-->
<!--=== End Breadcrumbs ===-->

<!--=== Content Part ===-->

<div class="container">
	<div class="row margin-bottom-30">
		<div class="col-md-3">
			<!-- Google Map -->
			<!-- <div class="headline">
				<h2>Upload Image</h2>
			</div>
 -->
			<div>
				<!-- <img alt="" src="resources/assets/img/user.jpg"
					class="img-responsive" id="image-upload-pic" width="199"
					height="152"> -->
					<img alt="" id="image-profile-pic"
					src="./getimage/<c:out value='${userDetails.userId}'/>/0"
					class="img-responsive">
			</div>
		</div>
		<!--/col-md-3-->

		<div class="col-md-9 mb-margin-bottom-30">
		<div>
				<div class="headline">
					<h2>Basic Information</h2>
				</div>

				<div class="row">
					<div class="col-lg-4">
						<label>Name:</label><label>${userDetails.firstName} ${userDetails.lastName}</label>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4">
						<label>Job Category:</label><label>${userDetails.jobCategory}</label>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4">
						<label>Job Sub Category:</label><label>${userDetails.jobSubCategory}</label>
					</div>
				</div>
				
				
				<label>About Me:</label>
				<div class="row margin-bottom-20">
					<div class="col-md-9 col-md-offset-0">
						${userDetails.aboutMe}
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4">
						<label>Email:</label><label>${userDetails.loginEmail}</label>
					</div>
					<div class="col-lg-4">
						<label>Contact:</label><label> ${userDetails.phoneNumber}</label>
					</div>
				</div>
			</div>
			<br />
			<div>
				
				<div>
					<div class="headline">
						<h2>Address Information</h2>
					</div>
					<label>Address:</label>
					<div class="row margin-bottom-20">
						<div class="col-md-7 col-md-offset-0">
							${userDetails.address}
						</div>
					</div>
					<br />
					<div class="row">
						<div class="col-lg-4">
							<label>State:</label>${userDetails.state}
						</div>
						<div class="col-lg-4">
							<label>City:</label>${userDetails.city}
						</div>
					</div>
					<br /><label>Pincode:</label>${userDetails.pincode}
			</div>

			</div>
			<br />
			<!-- <div>
				<div>
					<div class="headline">
						<h2>Advance Settings</h2>
					</div>

		
					
				</div>

			</div> -->
			<div></div>
		</div>


	</div>
	<!--/col-md-9-->


</div>
<!--/row-->



<!--/container-->
<!--=== End Content Part ===-->
<!-- Footer-->
<c:import url="../footer.jsp"></c:import>
