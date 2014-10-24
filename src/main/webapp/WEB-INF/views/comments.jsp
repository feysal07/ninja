<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:forEach items="${blog.comments}" var="comment">
    <div class="media">
        <a class="pull-left" href="#">
            <img class="media-object" src="resources/assets/img/sliders/elastislide/9.jpg" alt="" />
        </a>
        <div class="media-body">
            <h4 class="media-heading">${comment.user.userName}
                <span>${fn:substring(comment.modified,0,
                10)} / <a href="#">Reply</a></span></h4>
            <p>${comment.text}</p>
        </div>
    </div>
</c:forEach>