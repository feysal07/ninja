<%@ page contentType="application/json; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:choose>
 <c:when test='${not empty jobsSearchSet.jobsSearchList}'>
<c:forEach var="user" items="${jobsSearchSet.jobsSearchList}">

	<!--Blog Post-->
	<div class="search-blocks <c:if test="${user.index % 4 == 1 }">search-blocks-left-green</c:if>
		<c:if test="${user.index % 4 == 2 }"> search-blocks-colored search-blocks-red</c:if>
		<c:if test="${user.index % 4 == 3 }">search-blocks-left-orange</c:if>
		<c:if test="${user.index % 4 == 0 }">search-blocks-colored search-blocks-blue</c:if>">
		<div class="row">
            
            <div class="col-md-8">
            <h2><a href="#"><c:out value="${user.title}" /></a></h2>
			<p>
				
				<strong><em>Date:</strong></em>
				<c:set var="createdDate" value="${user.postDate}"/>&nbsp;&nbsp;
				${fn:substring(createdDate,0,10)}

				<br><strong><em>Details:</strong></em>&nbsp;&nbsp;&nbsp;
				<c:out value="${user.jobDetails}" />
				&nbsp;
			
			</p>

			<p>
				 <strong><em>Category:</strong></em>&nbsp;&nbsp;&nbsp;
				<c:set var="jobCategoryId" value="${user.jobCategory}" />
				<c:out value="${jobCatHashMap[jobCategoryId]}" />

				<br> <strong><em>Specificatiion:</strong></em>&nbsp;&nbsp;&nbsp;
				<c:forEach var="jobsubJobCat" items="${user.jobSubCategoriesList}">
					<c:out value="${jobsubJobCat}" />
				</c:forEach>
			</p>



			<div class="col-md-4 search-img">
				<ul class="list-unstyled">
					<li><i class="icon-briefcase"></i> <c:set var="cityId"
							value="${user.cityL }" /> <c:set var="cityName"
							value="${cityHashMap[cityId]}" /> <c:out value="${cityName}" />
					</li>
					<li><i class="icon-map-marker"></i> <c:set var="stateId"
							value="${user.stateL }" /> <c:set var="stateName"
							value="${stateHashMap[stateId]}" /> <c:out value="${stateName}" />
					</li>
				</ul>
			</div>
			</div>
<%-- 			<div class="col-md-8">
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
				<a class="btn-u btn-u-sea" href="#">read more</a>
			</div> --%>
		</div>
	</div>
	<!--End Blog Post-->
	<div class="margin-bottom-20 clearfix"></div>




</c:forEach>
</c:when>
 <c:otherwise>
   <h2 class="color-green">No records found.</h2>  
 </c:otherwise>
</c:choose>
<!--Pagination-->
<c:if test="${jobsSearchSet.pageCount > 10}">
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
