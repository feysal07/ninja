<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<c:import url="../include.jsp"></c:import>
<c:import url="../header.jsp"></c:import>
<c:url var="findStatesURL" value="/getStates" />

<script type="text/javascript"
	src="resources/assets/js/pages/registerPage2.js"></script>




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
<input type="hidden" id="siteUserid"
					value='<c:out value="${siteUser.userId}"/>'>
<div class="container">
	<div class="row margin-bottom-30">
		<div class="col-md-9 mb-margin-bottom-30">
			<div>
				<div class="headline">
					<h2>Basic Information</h2>
				</div>

				<div class="dropdown">
					<div class="col-lg-4">
						<label>User Type <span class="color-red">*</span></label> <input
						id="firstName"
							value='<c:out value="${siteUser.firstName}"/>' type="text"
							class="form-control margin-bottom-20">
					</div>
					<div class="col-lg-4">
						<label>Company Name <span class="color-red">*</span></label> <input
							type="text" 
							id="lastName" value='<c:out value="${siteUser.lastName}"/>'
							class="form-control margin-bottom-20">
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4">
						<label>More About your company <span class="color-red">*</span></label> <input
							type="text" 
							id="loginEmail"
							value='<c:out value="${siteUser.loginEmail}"/>'
							class="form-control margin-bottom-20">
					</div>
					<div class="col-lg-4">
						<label>Choose your service categories <span class="color-red">*</span></label> <input
							type="text"  id="phoneNumber" value='<c:out value="${siteUser.phoneNumber}"/>'
							class="form-control margin-bottom-20">
					</div>
				</div>

				<label>Specialist</label>
				<div class="row margin-bottom-20">
					<div class="col-md-9 col-md-offset-0">
						<textarea rows="8" class="form-control" id="aboutMe"> <c:out
								value="${siteUser.aboutMe}" /></textarea>
					</div>
				</div>
				<p>
					<button type="submit" class="btn-u">Edit</button>
					&nbsp;&nbsp;
					<button type="submit" class="btn-u" id="section1-save" onclick="javascript:saveSection1()">Save</button>
				</p>
			</div>
			<br />
			<div>
				<div>
					<div class="headline">
						<h2>Address Information</h2>
					</div>
					<label>Address</label>
					<div class="row margin-bottom-20">
						<div class="col-md-7 col-md-offset-0">
							<textarea rows="8" class="form-control" id = "address"><c:out
								value="${siteUser.address.address}" /></textarea>
						</div>
					</div>
					<br />
					<div class="row">
						<div class="col-lg-4">
							<label>State <span class="color-red">*</span></label>
							<select id="states" class="form-control" onchange="javascript:getCitiesforState()"></select>
						</div>
						<div class="col-lg-4">
							<label>City<span class="color-red">*</span></label> <select
								 id="citiesforstate" class="form-control">
							</select>
						</div>
					</div>
					<br /> <label>Pincode</label>
					<div class="row margin-bottom-20">
						<div class="col-lg-4">
							<input type="text" id="pincode" class="form-control">
						</div>
					</div>

					<p>
						<button type="submit" class="btn-u">Edit</button>
						&nbsp;&nbsp;
						<button type="submit" class="btn-u" id="section2-save" onclick="javascript:saveSection2()">Save</button>
					</p>
				</div>

			</div>
			<br />
			<div>
				<div>
					<div class="headline">
						<h2>Advance Settings</h2>
					</div>
					
					<div class="checkbox" id="advancemapcheckboxes">
					</div>
					<p>
						<button type="submit" id="section3-save" class="btn-u" onclick="javascript:saveSection3()">Save</button>
					</p>
				</div>

			</div>


		</div>
		<!--/col-md-9-->


	</div>
	<!--/row-->


</div>
<!--/container-->
<!--=== End Content Part ===-->
<!-- Footer-->
<c:import url="../footer.jsp"></c:import>
