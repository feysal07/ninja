<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:forEach items="${blogs}" var="blog">
    <!--Blog Post-->
    <form action="./blogDetails" method="post">
        <div class="row blog blog-medium margin-bottom-40">
            <%--<div class="col-md-5">--%>
                <%--<img class="img-responsive" src="resources/assets/img/main/11.jpg" alt="">--%>
            <%--</div>--%>
            <div class="col-md-7">
                <h2>${blog.title}</h2>
                <ul class="list-unstyled list-inline blog-info">
                    <c:set var="createdDate" value="${blog.createdDate}"/>
                    <li><i class="icon-calendar"></i> ${fn:substring(createdDate,0,10)}</li>
                    <li><i class="icon-comments"></i> <a href="#">${blog.commentCount} Comments</a></li>
                    <li><i class="icon-tags"></i> ${blog.tags.tags}</li>
                </ul>
                <c:set var="content" value="${blog.content}"/>
                <p>${fn:substring(content,0,500)}</p>
                <input type="hidden" id="id" name="id" value="${blog.id}"/>
                <p><button type="submit" class="btn-u btn-u-small"><i class="icon-location-arrow"></i> Read More</button></p>
            </div>
        </div>
    </form>
    <!--End Blog Post-->
</c:forEach>