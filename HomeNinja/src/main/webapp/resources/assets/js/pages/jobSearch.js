$(document).ready(jobSearch());

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
	 myObject.pincode=$('#pincode').val();
	 
  $.ajax({
			type : "POST",
			url : "./doSearchJob",
			data : myObject,
			contentType: 'application/json',

			beforeSend : function() {
				
			},
			success : function(response) {
				$("#page").load("./job-search-result", myObject);
			
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
		$('#subcategory').show();
		
		var jobCategory = $('#categories').val();
		var str = ' <table style="padding: 10px;"><tr>';
		var len = data.length;
		var col = 0;
		for (var i = 0; i < len; i++) {
			if (data[i].jobCatId == jobCategory) {
				
				if(col % 3 == 0 && col != 0){
					str += '</tr><tr>';
				}
				
				str += '<td class="subcategoryCheckbox">';
				str += '<input type="checkbox" name="jobSubCat" value ="' 
					+ data[i].jobSubCat + '" ' + 'id ="userJobSubCategoryList';
				str += data[i].id;
				str += '.jobSubCategoryIsSet';
				str += '"/>  ';
				str +=  data[i].jobSubCat;
				str += '</td>';
				col++;
			}
		}

		str += '</table> ';
		$('#subcategories').html(str);
		confirmSpecialitiesHide();

	});
	
}

function confirmSpecialitiesHide() {
	var categoriescheckboxes = document.getElementById('subcategories');
	var inputs = categoriescheckboxes.getElementsByTagName('td');
	if(inputs.length == 0) {
		$('#subcategory').hide();
	}
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



function previousPage( pageNumber) {
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
	myObject.pageNumber = pageNumber;
	myObject.pageNumber = pageNumber - 1 ;

	$.ajax({
		type : "POST",
		url : "./doSearchJob",
		data : JSON.stringify(myObject),
		contentType : 'application/json',

		beforeSend : function() {

		},
		success : function(result) {
			$("#page").load("./job-search-result", myObject);

/*			if (response == "login-fail-nouser"
					|| response == "login-fail-usernoexist") {
				alert("Invalid user. Please try again");
			}
			if (response == "login-fail-nopassword") {
				alert("Password not entered. Please try again");
			}*/

		},
		complete : function() {

		},
		error : function(errorThrown) {
			console.log(errorThrown);

		}
	});
}

function sendRequestToContractor(jobId, button){
	$.ajax({
		type : "POST",
		url : "./sendMessage",
		data : JSON.stringify(jobId),
		contentType : 'application/json',

		beforeSend : function() {
			
		},
		success : function(result) {
			if (result == "not-available" ){
				button.disabled = true;
			}
		},
		complete : function() {

		},
		error : function(errorThrown) {
			console.log(errorThrown);

		}
	});
}




function nextPage(pageNumber) {
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
	myObject.pageNumber = pageNumber + 1 ;

	$.ajax({
		type : "POST",
		url : "./doSearchJob",
		data : JSON.stringify(myObject),
		contentType : 'application/json',

		beforeSend : function() {

		},
		success : function(result) {
			$("#page").load("./job-search-result", myObject);

/*			if (response == "login-fail-nouser"
					|| response == "login-fail-usernoexist") {
				alert("Invalid user. Please try again");
			}
			if (response == "login-fail-nopassword") {
				alert("Password not entered. Please try again");
			}*/

		},
		complete : function() {

		},
		error : function(errorThrown) {
			console.log(errorThrown);

		}
	});
}
