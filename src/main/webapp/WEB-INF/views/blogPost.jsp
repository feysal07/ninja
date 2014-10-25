<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>

<title>HomeNinja | Blog Post</title>
<!DOCTYPE c:import PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:import url="../include.jsp"></c:import>
<c:import url="../header.jsp"></c:import>

<!--=== Breadcrumbs ===-->
<div class="breadcrumbs margin-bottom-40">
    <div class="container">
        <h1 class="pull-left">Post Blog</h1>
        <ul class="pull-right breadcrumb">
            <li><a href=".">Home</a></li>
            <!-- <li><a href="">Pages</a></li> -->
            <li class="active">Post Blog</li>
        </ul>
    </div>
</div>
<!--/breadcrumbs-->
<!--=== End Breadcrumbs ===-->

<!--=== Content Part ===-->
<div class="container">
    <div class="row blog-page">
        <div class="col-md-9 mb-margin-bottom-40">
                <div>
                    <!--  Alert messages -->
                    <div class="alert alert-danger fade in" id="alertError"
                         hidden="true">
                        <button type="button" class="close" data-dismiss="alert"
                                onclick="javascript:closeErrorBox();">&times;</button>
                        <label for="myalue"></label>
                    </div>
                    <div class="alert alert-success" id="alertSuccess"
                         hidden="true">
                        <button type="button" class="close" data-dismiss="alert"
                                onclick="javascript:closeSuccessBox();">&times;</button>
                        <i class="icon-ok "></i>&nbsp; your blog has been post
                        successfully
                        !
                    </div>
                    <!--  alert messages end -->
                    <h2>Blog Details</h2>
                    <div class="headline">

                        <label>Title<span class="color-red">*</span></label>

                        <div class="row margin-bottom-20">
                            <div class="col-lg-4">
                                <input type="text" id="title"
                                       name="title" class="form-control">
                            </div>
                        </div>

                        <label>Blog Content<span
                                class="color-red">*</span></label>

                        <div class="row margin-bottom-20">
                            <div class="col-md-8 col-md-offset-0">
                                <textarea rows="8" class="form-control"
                                          id="blogContent"
                                          name="blogContent"></textarea>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-4">
                                <label>Tags</label>
                                <select id="tags"
                                        name="tags"
                                        class="form-control"></select>
                            </div>

                        </div>


                    </div>

                </div>
                <br/> <br/>

                <p>
                    <button type="button" class="btn-u"
                            onclick="javascript:blogPost()">Post</button>

                    <img id="loader-img" src="resources/assets/img/loader.gif"
                 hidden="hidden" height="30" width="30" class="color-img"
                 alt="">
            </p>


        </div>
        <div class="col-md-3">
            <c:import url="../facebook-like-box.jsp"></c:import>
        </div>
        <!--/col-md-9-->
    </div>
</div>
<!--/row-->
<!--/container-->
<!--=== End Content Part ===-->
<!-- Footer-->
<c:import url="../footer.jsp"></c:import>