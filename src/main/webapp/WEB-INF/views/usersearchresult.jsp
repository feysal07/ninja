<%@ page contentType="application/json; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:forEach var="user" items="${usersSearchSet.usersSearchList}">


	<!--Blog Post-->
	<div class="search-blocks <c:if test="${user.index % 4 == 1 }">search-blocks-left-green</c:if>
		<c:if test="${user.index % 4 == 2 }"> search-blocks-colored search-blocks-red</c:if>
		<c:if test="${user.index % 4 == 3 }">search-blocks-left-orange</c:if>
		<c:if test="${user.index % 4 == 0 }">search-blocks-colored search-blocks-blue</c:if> ">
		<div class="row">
			<p>Job Categories:
			<c:forEach var="userJobCat" items="${user.jobCategoriesList}">
				<c:out value="${userJobCat}" />
			</c:forEach>

			<br> Job Sub-Categories:
			<c:forEach var="userSubJobCat" items="${user.jobSubCategoriesList}">
				<c:out value="${userSubJobCat}" />
			</c:forEach></p>
			<div class="col-md-4 search-img">
				<img alt="" id="image-profile-pic"
					src="./getimage/<c:out value='${user.userId}'/>/0"
					class="img-responsive">
				<ul class="list-unstyled">
					<li><i class="icon-briefcase"></i> <c:set var="cityId"
							value="${user.city }" /> <c:set var="cityName"
							value="${cityHashMap[cityId]}" /> <c:out value="${cityName}" />
					</li>
					<li><i class="icon-map-marker"></i> <c:set var="stateId"
							value="${user.state }" /> <c:set var="stateName"
							value="${stateHashMap[stateId]}" /> <c:out value="${stateName}" />
					</li>
				</ul>
			</div>
			<div class="col-md-8">
				<h2>
					<a href="#"><c:out value="${user.userName}" /></a>
				</h2>
				<ul class="list-unstyled search-rating">
					<li><i class="icon-star"></i></li>
					<li><i class="icon-star"></i></li>
					<li><i class="icon-star"></i></li>
					<li><i class="icon-star"></i></li>
					<li><i class="icon-star"></i></li>
				</ul>
				<p>
					<c:out value="${user.aboutMe}" />
				</p>
				<a class="btn-u btn-u-sea" href="#">Details</a>
			</div>
		</div>
	</div>
	<!--End Blog Post-->
	<div class="margin-bottom-20 clearfix"></div>




</c:forEach>

<!--Pagination-->
<c:if test="${usersSearchSet.pageCount > 0}">
	<div class="text-center">
		<ul class="pagination">

			<li id="previousPage"
				onclick="javascript:previousPage(${usersSearchSet.pageNumber});"><a
				href="#">«</a></li>
			<c:if
				test="${(usersSearchSet.pageNumber - 1) * 10  < usersSearchSet.pageCount}">
				<li id="currentPage"
					onclick="javascript:nextPage(${usersSearchSet.pageNumber} - 1);"><a
					href="#">${usersSearchSet.pageNumber}</a></li>
			</c:if>
			<c:if
				test="${(usersSearchSet.pageNumber ) * 10  < usersSearchSet.pageCount}">
				<li id="currentPage1"
					onclick="javascript:nextPage(${usersSearchSet.pageNumber});"><a
					href="#">${usersSearchSet.pageNumber + 1}</a></li>
			</c:if>
			<c:if
				test="${(usersSearchSet.pageNumber + 1) * 10  < usersSearchSet.pageCount}">
				<li id="currentPage2"
					onclick="javascript:nextPage(${usersSearchSet.pageNumber} + 1);"><a
					href="#">${usersSearchSet.pageNumber + 2}</a></li>
			</c:if>

			<li id="nextPage"
				onclick="javascript:nextPage(${usersSearchSet.pageNumber});"><a
				href="#">»</a></li>
		</ul>
	</div>
</c:if>
