<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>


<!DOCTYPE c:import PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:import url="../include.jsp"></c:import>
<c:import url="../header.jsp"></c:import>
<script type="text/javascript"	src="resources/assets/js/pages/jobPost.js"></script>

<!--=== Breadcrumbs ===-->
<div class="breadcrumbs margin-bottom-40">
	<div class="container">
		<h1 class="pull-left">Post Job</h1>
		<ul class="pull-right breadcrumb">
			<li><a href="index.html">Home</a></li>
			<li><a href="">Pages</a></li>
			<li class="active">Post Job</li>
		</ul>
	</div>
</div>
<!--/breadcrumbs-->
<!--=== End Breadcrumbs ===-->

<!--=== Content Part ===-->
<div class="container">
	<div class="col-md-9 mb-margin-bottom-30">
		<div>
			<div class="headline">
				<h2>Job Details</h2>
			</div>
			<div class="row">
				<div class="col-lg-4">
					<label>Job Category<span class="color-red">*</span></label>
					<select id="jobCategories"
						class="form-control" onchange="javascript:getJobSubCategories(this)">
					</select>
				</div>
			</div>
			<br />
			<div>

				<label>Choose your required categories</label>
				<div id="subcategoriescheckboxes">
				</div>
				
			</div>
			<div class="row">
						<div class="col-lg-4">
							<label>State <span class="color-red">*</span></label>
							<select id="states" class="form-control" onchange="javascript:getCitiesforState()"></select>
						</div>
						
			</div>
			<br>
			<div class="row">
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
			<br /> <label>Location</label>
			<div class="row margin-bottom-20">
				<div class="col-lg-4">
					<input type="text" id="location" class="form-control">
				</div>
			</div>
			<div class="row">
						<div class="col-lg-4">
							<label>Message Ranges<span class="color-red">*</span></label>
							<select id="messageRanges" class="form-control" ></select>
						</div>
						
			</div>
			<br /> <label>Job Title</label>
			<div class="row margin-bottom-20">
				<div class="col-lg-4">
					<input type="text" class="form-control" id="title">
				</div>
			</div>
			<label>Description</label>
			<div class="row margin-bottom-20">
				<div class="col-md-10 col-md-offset-0">
					<textarea rows="8" class="form-control" id="jobDetails"></textarea>
				</div>
			</div>


		</div>
		<br /> <br />
		<p>
			<button type="submit" class="btn-u" onclick="javascript:jobPost()">Post</button>
		</p>


	</div>
	<!--/col-md-9-->


</div>
<!--/row-->


</div>
<!--/container-->
<!--=== End Content Part ===-->
<!-- Footer-->
<c:import url="../footer.jsp"></c:import>