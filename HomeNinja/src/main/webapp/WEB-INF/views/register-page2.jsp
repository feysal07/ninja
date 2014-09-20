<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<c:import url="../include.jsp"></c:import>
<c:import url="../header.jsp"></c:import>
<c:url var="findStatesURL" value="/getStates" />

<script type="text/javascript"
	src="resources/assets/js/pages/registerPage2.js"></script>
<script type="text/javascript">
var stateVal=${siteUserAddress.state} 
var cityVal=${siteUserAddress.city}
</script>

<title>HomeNinja | Manage Account</title>

<!--=== Breadcrumbs ===-->
<div class="breadcrumbs margin-bottom-40">
	<div class="container">
		<h1 class="pull-left">Manage Account</h1>
		<ul class="pull-right breadcrumb">
			<li><a href=".">Home</a></li>
			<!-- <li><a href="">Pages</a></li> -->
			<li class="active">Manage Account</li>
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
			<div class="headline">
				<h2>Upload Image</h2>
			</div>

			<div>
				<img alt="" src="resources/assets/img/user.jpg"
					class="img-responsive" id="image-upload-pic" width="199"
					height="152">
			</div>
			<br />
			<p>
						<button type="submit" class="btn-u" id="choose" onclick="javascript:uploadImage()">Choose</button>
						&nbsp;&nbsp;
						<button type="submit" class="btn-u" id="image-upload1">Upload</button>
					</p>
			<p>
				<input type="file" size="40" style="visibility:hidden;" name="image-upload" id="image-upload">&nbsp;&nbsp;
				<!-- <button type="submit" class="btn-u" id="image-upload1">Upload</button> -->


			</p>

		</div>
		<!--/col-md-3-->

		<div class="col-md-9 mb-margin-bottom-30">
			<!--  Alert messages -->
			<div class="alert alert-danger fade in" id="alertError1"
				hidden="true">
				<button type="button" class="close" data-dismiss="alert"
					onclick="javascript:closeErrorBox1();">&times;</button>
				<strong>Oh!</strong> <label for="myalue"></label>
			</div>

			<div class="alert alert-success" id="alertSuccess1" hidden="true">
				<button type="button" class="close" data-dismiss="alert"
					onclick="javascript:closeSuccessBox1();">&times;</button>
				<strong>Well done!</strong> User information updated successfully!
			</div>
			<!--  alert messages end -->

			<div>
				<div class="headline">
					<h2>Basic Information</h2>
				</div>

				<div class="row">
					<div class="col-lg-4">
						<label>First Name <span class="color-red">*</span></label> <input
							id="firstName" value='<c:out value="${siteUser.firstName}"/>'
							type="text" class="form-control margin-bottom-20">
					</div>
					<div class="col-lg-4">
						<label>Last Name <span class="color-red">*</span></label> <input
							type="text" id="lastName"
							value='<c:out value="${siteUser.lastName}"/>'
							class="form-control margin-bottom-20">
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4">
						<label>Email <span class="color-red">*</span></label> <input
							type="text" id="loginEmail"
							value='<c:out value="${siteUser.loginEmail}"/>'
							class="form-control margin-bottom-20">
					</div>
					<div class="col-lg-4">
						<label>Contact <span class="color-red">*</span></label> <input
							type="text" id="phoneNumber"
							value='<c:out value="${siteUser.phoneNumber}"/>'
							class="form-control margin-bottom-20">
					</div>
				</div>

				<label>About Me</label>
				<div class="row margin-bottom-20">
					<div class="col-md-9 col-md-offset-0">
						<textarea rows="8" class="form-control" id="aboutMe"> <c:out
								value="${siteUser.aboutMe}" /></textarea>
					</div>
				</div>
				<p>
					<button type="submit" class="btn-u">Edit</button>
					&nbsp;&nbsp;
					<button type="submit" class="btn-u" id="section1-save"
						onclick="javascript:saveSection1()">Save</button>
				</p>
			</div>
			<br />
			<div>
				<!--  Alert messages -->
				<div class="alert alert-danger fade in" id="alertError2"
					hidden="true">
					<button type="button" class="close" data-dismiss="alert"
						onclick="javascript:closeErrorBox2();">&times;</button>
					<strong>Oh!</strong> <label for="myalue"></label>
				</div>

				<div class="alert alert-success" id="alertSuccess2" hidden="true">
					<button type="button" class="close" data-dismiss="alert"
						onclick="javascript:closeSuccessBox2();">&times;</button>
					<strong>Well done!</strong> User information updated successfully!
				</div>
				<!--  alert messages end -->
				<div>
					<div class="headline">
						<h2>Address Information</h2>
					</div>
					<label>Address</label>
					<div class="row margin-bottom-20">
						<div class="col-md-7 col-md-offset-0">
							<textarea rows="8" class="form-control" id="address"><c:out
									value="${siteUserAddress.address}" /></textarea>
						</div>
					</div>
					<br />
					<div class="row">
						<div class="col-lg-4">
							<label>State <span class="color-red">*</span></label> <select
								id="states" class="form-control"
								onchange="javascript:getCitiesforState()">
								<option value="">Select</option>
								</select>
						</div>
						<div class="col-lg-4">
							<label>City<span class="color-red">*</span></label> <select
								id="citiesforstate" class="form-control">
								<option value="">Select</option>
							</select>
						</div>
					</div>
					<br /> <label>Pincode</label>
					<div class="row margin-bottom-20">
						<div class="col-lg-4">
							<input type="text" id="pincode" class="form-control" value="${siteUserAddress.pincode}">
						</div>
					</div>

					<p>
						<button type="submit" class="btn-u">Edit</button>
						&nbsp;&nbsp;
						<button type="submit" class="btn-u" id="section2-save"
							onclick="javascript:saveSection2()">Save</button>
					</p>
				</div>

			</div>
			<br />
			<!-- <div>
				<div>
					<div class="headline">
						<h2>Advance Settings</h2>
					</div>

					<div class="checkbox" id="advancemapcheckboxes"></div>
					<p>
						<button type="submit" id="section3-save" class="btn-u"
							onclick="javascript:saveSection3()">Save</button>
					</p>
				</div>

			</div>
 -->			<div></div>
			<%-- <form id="moveToRegPage3" action="./RegisterPage3" method="POST">
				<input type="hidden" id="siteUserid" name="siteUserid"
					value="<c:out value='${siteUser.userId}'/>">
				<p>
					<button type="button" id="next-page3" class="btn-u pull-right"
						onclick="javascript:goToRegPage3()">Upgrade Account</button>
				</p>
			</form> --%>
		</div>


	</div>
	<!--/col-md-9-->


</div>
<!--/row-->
<!--/container-->
<!--=== End Content Part ===-->
<!-- Footer-->
<c:import url="../footer.jsp"></c:import>
