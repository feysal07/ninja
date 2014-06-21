<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false" %>


<!DOCTYPE c:import PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:import url="../include.jsp"></c:import> 
<c:import url="../header.jsp"></c:import>


<script type="text/javascript">
function selectJobCat(){

	$('input:checkbox[name=jobCat]:checked').each(function() 
	{
		$('#subCategories').removeClass('hideSubcategories');
		$('.'+this.id).removeClass('hideSubcategories');
	});

}

function jobPost(){
	 var myObject = new Object();

	 var jobCatArray= [];
	 var jobSubCatArray=[];
	 $('input:checkbox[name=jobCat]:checked').each(function() 
	   {
		 jobCatArray.push(this.id);
	});

	 $('input:checkbox[name=jobSubCat]:checked').each(function() 
			   {
				 jobSubCatArray.push(this.id);
			});
	 myObject.jobCategories=jobCatArray;
	 myObject.jobSubCategories=jobSubCatArray;
	 myObject.title=$('#title').val();
	 myObject.jobDetails=$('#jobDetails').val();
	 myObject.state=$('#states :selected').text();
	 myObject.city=$('#cities :selected').text();
	 myObject.address=$('#address').val();

	 $.ajax({
			type : "POST",
			url : "/app/postJob",
			data : JSON.stringify(myObject),
			contentType: 'application/json',

			beforeSend : function() {
				
			},
			success : function(response) {
			
			},
			complete : function() {
			
			},
			error : function(e) {
				
			}
		});
	
}

function getCities(e){
	alert("hi");
	
 var state=e.value;
 $.ajax({
		type : "GET",
		url : "/app/getCitiesByState/"+state,
		//data : JSON.stringify(myObject),
		contentType: 'application/json',

		beforeSend : function() {
			
		},
		success : function(response) {
			//response=JSON.stringify(response);
			var html;
	        var $select = $('#cities');  
	        $.each(response, function(index, value) {               
	         html += '<option name="'+value+'" >'+value+'</option>';      
	        });
	        $select.append(html);
			
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
        <h1 class="pull-left">Post A Job</h1>
        <ul class="pull-right breadcrumb">
            <li><a href="index.html">Home</a></li>
            <li><a href="">Pages</a></li>
            <li class="active">Job Post</li>
        </ul>
    </div>
</div><!--/breadcrumbs-->
<!--=== End Breadcrumbs ===-->

<!--=== Content Part ===-->
<div class="container">     
    <div class="row margin-bottom-30">
        <div class="col-md-9 mb-margin-bottom-30">
           <div>
                <label>Title</label>
                <div class="row margin-bottom-20">
                    <div class="col-md-7 col-md-offset-0">
                        <input type="text" id="title" class="form-control">
                    </div>                
                </div>
               
               <label>State</label>
               <form:select path="states" id="states">
					  <form:option value="NONE" label="--- Select ---" />
					  <form:options items="${states}" onclick="javascript:getCities(this)" />
			    </form:select> 
			   
			   <label>Cities</label>
                <select id="cities">
					  <option name="NONE" value="NONE" >--- Select ---</option>
				</select>
			    <label>Address</label>
                <div class="row margin-bottom-20">
                    <div class="col-md-7 col-md-offset-0">
                        <input type="text" id="address" class="form-control">
                    </div>                
                </div>
                                
                <label>Select Categories <span class="color-red">*</span></label>
                <div class="checkboxes">
				<c:forEach var="jobCat" items="${jobCategories}">
    				<div><input type="checkbox" name="jobCat" id="${jobCat.key}"  onclick="javascript:selectJobCat()">${jobCat.key}</input></div>
				</c:forEach>
				</div>
				<div class="hideSubcategories" id="subCategories">
                <label >Select Sub Categories</label>
					<div class="checkboxes">
					<c:forEach var="jobCat" items="${jobCategories}">
					    <c:forEach var="jobSubCat" items="${jobCat.value}">
					       <div class="${jobCat.key} hideSubcategories"><input name="jobSubCat" id="${jobSubCat}" type="checkbox">${jobSubCat}</input></div>
					    </c:forEach>
					</c:forEach>
					 </div> 
					 </div>               
                <label>Description</label>
                <div class="row margin-bottom-20">
                    <div class="col-md-11 col-md-offset-0">
                        <textarea rows="8" id="jobDetails" class="form-control"></textarea>
                    </div>                
                </div>
                
                <p><button type="button" class="btn-u" onclick="javascript:jobPost()">Post Job</button></p>
            </div>
        </div>
        
       
    </div>        


</div><!--/container-->     
<!--=== End Content Part ===-->
 <!-- Footer-->
<c:import url="../footer.jsp"></c:import>