<%@ page contentType="application/json; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:choose>
 <c:when test='${not empty usersSearchSet.usersSearchList}'>
  
  <c:forEach var="user" items="${usersSearchSet.usersSearchList}">


	<!--Blog Post-->
	<div class="search-blocks <c:if test="${user.index % 4 == 1 }">search-blocks-left-green</c:if>
		<c:if test="${user.index % 4 == 2 }"> search-blocks-colored search-blocks-red</c:if>
		<c:if test="${user.index % 4 == 3 }">search-blocks-left-orange</c:if>
		<c:if test="${user.index % 4 == 0 }">search-blocks-colored search-blocks-blue</c:if> ">
		<div class="row">
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
				<!--<ul class="list-unstyled search-rating">
					<li><i class="icon-star"></i></li>
					<li><i class="icon-star"></i></li>
					<li><i class="icon-star"></i></li>
					<li><i class="icon-star"></i></li>
					<li><i class="icon-star"></i></li>
				</ul>-->
						<p>
							<strong><em>Job Categories:</em></strong>&nbsp;&nbsp;&nbsp;
							<!--<c:forEach var="userJobCat" items="${user.jobCategoriesList}">-->
								<c:out value="${user.jobCategories}" />
							<!--</c:forEach>--><br> 

							<br> <strong><em>Job Sub-Categories:</em></strong>&nbsp;&nbsp;&nbsp;
							<!--<c:forEach var="userSubJobCat"
								items="${user.jobSubCategoriesList}">-->
								<c:out value="${user.jobSubCategories}" />
							<!--</c:forEach>-->
						</p>
				<p>
					<strong><em>About Me:</em></strong>&nbsp;&nbsp;&nbsp;<c:out value="${user.aboutMe}" />
				</p>
				<%-- <a class="btn-u btn-u-sea" href="./profile/${user.userId}">Details</a> --%>
				<form action="./profile" method="post">
				 <input type="hidden" id="userId" name="userId" value="${user.userId}"/>
				  <%-- <a class="btn-u btn-u-sea" onclick="return getPersonProfile(${user.userId});">Details</a> --%>
				  
				  <div id="${user.userId}" hidden="true" class="col-lg-6">
						<label  for="myvalue">Your request has been sent to the contractor</label>
				  </div>
				  
				  <div class="col-lg-2"><button type="submit" class="btn-u btn-u-sea"></i>Details</button> </div>
				 
				  <div class="col-lg-4">
				  <c:choose>
					<c:when test="${logged == 'true'}">
						<button type="button" class="btn-u btn-u-sea" onclick="showInterestToContractor(${user.userId}, this)">Show Interest</button>
					</c:when>
					<c:otherwise>
						<button type="button" class="btn-u btn-u-default" onclick="javascript: moveUp()">Show Interest</button>
					</c:otherwise>
				  </c:choose>
				  </div>
				  
			    </form>
			</div>
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
<c:if test="${usersSearchSet.pageCount > 10}">
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
