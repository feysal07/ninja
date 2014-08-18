function jobSearch(){
	 var myObject = new Object();
     var jobSubCatArray=[];
	 $('input:checkbox[name=jobSubCat]:checked').each(function() 
			   {
				 jobSubCatArray.push(this.id);
			});
	 
	 myObject.jobCategoryId=$('#jobCategories :selected').val();
	 myObject.jobSubCatIds=jobSubCatArray;
	 myObject.jobDetails=$('#jobDetails').val();
	 myObject.state=$('#states :selected').val();
	 myObject.city=$('#citiesforstate :selected').val();
	 myObject.pincode=$('#pincode').val();
	 
  $.ajax({
			type : "POST",
			url : "./searchJob",
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