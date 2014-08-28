function jobSearch(){
	 var myObject = new Object();
     var jobSubCatArray=[];
	 $('input:checkbox[name=jobSubCat]:checked').each(function() 
			   {
				 jobSubCatArray.push(this.value);
			});
	 
	 myObject.jobCategoryId=$('#categories :selected').val();
	 myObject.jobSubCatIds=jobSubCatArray;
	 myObject.state=$('#states :selected').val();
	 myObject.city=$('#citiesforstate :selected').val();
	 myObject.pageNumber = 1;
	// myObject.pincode=$('#pincode').val();
	 
  $.ajax({
			type : "POST",
			url : "./doSearchJob",
			data : JSON.stringify(myObject),
			contentType: 'application/json',

			beforeSend : function() {
				
			},
			success : function(response) {
				$("#page").load("./jobsearchresult", myObject);
			
			},
			complete : function() {
			
			},
			error : function(e) {
				
			}
		});
	
}



function getSubCategoriesforJob() {
	$.getJSON('./getJobSubCategories', {
		ajax : 'true',
		contentType : 'application/json',
	}, function(data) {

		var jobCategory = $('#categories').val();
		var str = ' ';
		var len = data.length;
		for (var i = 0; i < len; i++) {
			if (data[i].jobCatId == jobCategory) {
				str += '<input type="checkbox" name="jobSubCat"';
				str += 'value ="' + data[i].id + '" '
						+ 'id ="userJobSubCategoryList';
				str += data[i].id;
				str += '.jobSubCategoryIsSet';
				str += '"/>';
				str +=  data[i].jobSubCat;
				str += '<br>';
			}

		}

		$('#subcategories').html(str);

	});

}

$(document).ready(
		function() {
			$.getJSON('./states', {
				ajax : 'true'
			}, function(data) {
				var html = '<option value="">Select</option>';
				var len = data.length;
				for (var i = 0; i < len; i++) {
					html += '<option value="' + data[i].stateOrderId + '">'
							+ data[i].name + '</option>';
				}
				html += '</option>';
				// now that we have our options, give them to our select
				$('#states').html(html);
			});
		});

function getCitiesforState() {
	$.getJSON('./citiesforStates', {
		ajax : 'true',
		stateOrderId : $('#states').val(),
	}, function(data) {
		var html = '<option value="">Select</option>';
		var len = data.length;
		for (var i = 0; i < len; i++) {
			html += '<option value="' + data[i].masterDataId + '">'
					+ data[i].name + '</option>';
		}
		html += '</option>';
		// now that we have our options, give them to our select
		$('#citiesforstate').html(html);
	});
}

$(document).ready(
		function() {
			$.getJSON('./getJobCategories', {
				ajax : 'true',
				contentType : 'application/json',
			}, function(data) {

				var html = '<option value="">Select</option>';
				var len = data.length;
				for (var i = 0; i < len; i++) {
					html += '<option value="' + data[i].id + '">'
							+ data[i].jobCat + '</option>';
				}
				html += '</option>';

				$('#categories').html(html);

			});
		});
