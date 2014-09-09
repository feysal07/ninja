<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<title>HomeNinja | Error</title>
<c:import url="../include.jsp"></c:import> 
<c:import url="../header.jsp"></c:import>

<!--=== Breadcrumbs ===-->
<div class="breadcrumbs margin-bottom-40">
    <div class="container">
        <h1 class="pull-left">404 Error</h1>
        <ul class="pull-right breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li><a href="">Pages</a></li>
            <li class="active">404 Error</li>
        </ul>
    </div> 
</div><!--/breadcrumbs-->
<!--=== End Breadcrumbs ===-->

<!--=== Content Part ===-->
<div class="container">		
    <!--Error Block-->
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="error-v1">
                <span class="error-v1-title">404</span>
                <span>That’s an error!</span>
                <p>The requested URL was not found on this server. That’s all we know.</p>
            </div>
        </div>
    </div>
    <!--End Error Block-->
</div>	
<!--=== End Content Part ===-->

<!-- Footer-->
<c:import url="../footer.jsp"></c:import>