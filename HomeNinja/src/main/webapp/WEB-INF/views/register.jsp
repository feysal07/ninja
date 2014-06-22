<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<c:import url="../include.jsp"></c:import> 
<c:import url="../header.jsp"></c:import>

<script type="text/javascript">
function doRegister(){
  var myObject = new Object();
  myObject.firstName=$('#fname').val();
  myObject.lastName=$('#lname').val();
  myObject.loginEmail=$('#email').val();
  myObject.phoneNumber=$('#phone').val();
  myObject.userName = $('#email').val();
  myObject.password=$('#password').val();
    
  $.ajax({
		type : "POST",
		url : "${pageContext.request.contextPath}/doRegister",
		data : JSON.stringify(myObject),
		contentType: 'application/json',

		beforeSend : function() {
			
		},
		success : function(response) {
			location.href = "${pageContext.request.contextPath}/"
				+ response;
		
		},
		complete : function() {
		
		},
		error : function(e) {
			
		}
	});
}
</script>






<!--=== Breadcrumbs ===-->
<div class="breadcrumbs margin-bottom-40">
    <div class="container">
        <h1 class="pull-left">Registration</h1>
        <ul class="pull-right breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li><a href="">Pages</a></li>
            <li class="active">Registration</li>
        </ul>
    </div><!--/container-->
</div><!--/breadcrumbs-->
<!--=== End Breadcrumbs ===-->

<!--=== Content Part ===-->
<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <div class="reg-page">
                <div class="reg-header">
                    <h2>Register a new account</h2>
                    <p>Already Signed Up? Click <a href="./login" class="color-green">Sign In</a> to login your account.</p>                    
                </div>
                
                <label>First Name</label>
                <input type="text" id="fname" class="form-control margin-bottom-20">
               
                <label>Last Name</label>
                <input type="text" id="lname" class="form-control margin-bottom-20">
               
                <label>Email Address <span class="color-red">*</span></label>
                <input type="email" id="email" class="form-control margin-bottom-20">
                
                <label>Phone Number</label>
                <input type="text" id="phone" class="form-control margin-bottom-20">

                <div class="row">
                    <div class="col-sm-6">
                        <label>Password <span class="color-red">*</span></label>
                        <input type="password" id="password" class="form-control margin-bottom-20">
                    </div>
                    <div class="col-sm-6">
                        <label>Confirm Password <span class="color-red">*</span></label>
                        <input type="password" id="cnfrmPassword" class="form-control margin-bottom-20">
                    </div>
                </div>

                <hr>

                <div class="row">
                    <div class="col-lg-6">
                        <label class="checkbox">
                            <input type="checkbox"> 
                            I read <a href="page_terms.html" class="color-green">Terms and Conditions</a>
                        </label>                        
                    </div>
                    <div class="col-lg-6 text-right">
                        <button class="btn-u" onclick="javascript:doRegister()">Register</button>                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div><!--/container-->		
<!--=== End Content Part ===-->

<!-- Footer-->
<c:import url="../footer.jsp"></c:import>
