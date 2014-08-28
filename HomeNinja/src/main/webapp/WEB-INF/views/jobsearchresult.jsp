<%@ page contentType="application/json; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:forEach var="user" items="${jobsSearchSet.jobsSearchList}">

	<!--Blog Post-->
	<div class="search-blocks search-blocks-left-green">
		<div class="row">
			Job Categories:
			<c:set var="jobCategoryId"	value="${user.jobCategoryId}" />
				<%-- <c:out value="${jobCatHashMap[userJobCat]}" /> --%>

			<br> Job Sub-Categories:
			<c:forEach var="jobsubJobCat" items="${user.jobSubCategoriesList}">
				<c:out value="${jobsubJobCat}" />
				<%-- <c:out value="${jobSubCatHashMap[userJobCat]}" /> --%>
			</c:forEach>
			<div class="col-md-4 search-img">
				<%-- <img alt="" id="image-profile-pic"
					src="./getimage/<c:out value='${user.userId}'/>"
					class="img-responsive"> --%>
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
<%-- 				<h2>
					<a href="#"><c:out value="${user.userName}" /></a>
				</h2> --%>
				<ul class="list-unstyled search-rating">
					<li><i class="icon-star"></i></li>
					<li><i class="icon-star"></i></li>
					<li><i class="icon-star"></i></li>
					<li><i class="icon-star"></i></li>
					<li><i class="icon-star"></i></li>
				</ul>
				<a class="btn-u btn-u-sea" href="#">read more</a>
			</div>
		</div>
	</div>
	<!--End Blog Post-->
	<div class="margin-bottom-20 clearfix"></div>




</c:forEach>

<!--Pagination-->
<c:if test="${jobsSearchSet.pageCount > 0}">
	<div class="text-center">
		<ul class="pagination">

			<li id="previousPage"
				onclick="javascript:previousPage(${jobsSearchSet.pageNumber});"><a
				href="#">«</a></li>
			<c:if
				test="${(jobsSearchSet.pageNumber - 1) * 10  < jobsSearchSet.pageCount}">
				<li id="currentPage"
					onclick="javascript:nextPage(${jobsSearchSet.pageNumber} - 1);"><a
					href="#">${jobsSearchSet.pageNumber}</a></li>
			</c:if>
			<c:if
				test="${(jobsSearchSet.pageNumber ) * 10  < jobsSearchSet.pageCount}">
				<li id="currentPage1"
					onclick="javascript:nextPage(${jobsSearchSet.pageNumber});"><a
					href="#">${jobsSearchSet.pageNumber + 1}</a></li>
			</c:if>
			<c:if
				test="${(jobsSearchSet.pageNumber + 1) * 10  < jobsSearchSet.pageCount}">
				<li id="currentPage2"
					onclick="javascript:nextPage(${jobsSearchSet.pageNumber} + 1);"><a
					href="#">${jobsSearchSet.pageNumber + 2}</a></li>
			</c:if>

			<li id="nextPage"
				onclick="javascript:nextPage(${jobsSearchSet.pageNumber});"><a
				href="#">»</a></li>
		</ul>
	</div>
</c:if>
