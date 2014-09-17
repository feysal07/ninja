function isValid(myObject){
	closeErrorBox();
	closeSuccessBox();
	var validation="true";
	var errorMessage = '';
	
	if (myObject.jobCategoryId == "") {
		errorMessage='<i class="icon-warning-sign"></i>&nbsp;  Please enter job category <br>';
		validation = "false";
	}
	if (myObject.state == "") {
		errorMessage+='<i class="icon-warning-sign"></i>&nbsp;  Please enter state <br>';
		validation = "false";
	}
	if (myObject.city == "") {
		errorMessage+='<i class="icon-warning-sign"></i>&nbsp;  Please enter city <br>';
		validation = "false";
	}
	if (myObject.pincode == "") {
		errorMessage+='<i class="icon-warning-sign"></i>&nbsp;  Please enter pincode <br>';
		validation = "false";
	}
	if (myObject.location == "") {
		errorMessage+='<i class="icon-warning-sign"></i>&nbsp;  Please enter location <br>';
		validation = "false";
	}
	
	if (myObject.requestLimit == "") {
		errorMessage+='<i class="icon-warning-sign"></i>&nbsp;  Please enter response limit <br>';
		validation = "false";
	}
	if (myObject.title == "") {
		errorMessage+='<i class="icon-warning-sign"></i>&nbsp;  Please enter job title <br>';
		validation = "false";
	}
	if (myObject.jobDetails == "") {
		errorMessage+='<i class="icon-warning-sign"></i>&nbsp;  Please enter job details <br>';
		validation = "false";
	}
	
	if (validation == "false") {
		$alertError = $("#alertError");
		jQuery("label[for='myalue']").html(errorMessage);
		$alertError.show();
	}
	
	return validation;
}


function closeErrorBox() {
	$alertError = $("#alertError");
	$alertError.hide();
}

function closeSuccessBox() {
	$alertSuccess = $("#alertSuccess");
	$alertSuccess.hide();

}


function jobPost(){
	 var myObject = new Object();
     var jobSubCatArray=[];
     var jobSubCategories="";
	 $('input:checkbox[name=jobSubCat]:checked').each(function() 
			   {
		         jobSubCategories=jobSubCategories+"-"+$('#subCat_'+this.id).text();
				 jobSubCatArray.push(this.id);
			});
	 
	 myObject.jobCategoryId=$('#jobCategories :selected').val();
	 myObject.jobSubCatIds=jobSubCatArray;
	 myObject.title=$('#title').val();
	 myObject.jobDetails=$('#jobDetails').val();
	 myObject.state=$('#states :selected').val();
	 myObject.city=$('#citiesforstate :selected').val();
	 myObject.requestLimit=$('#messageRanges :selected').val();
	 myObject.pincode=$('#pincode').val();
	 myObject.location=$('#location').val();
	 myObject.jobSubCategories=jobSubCategories;
	 
	var flag=isValid(myObject);
	if(flag== "true"){
	 $.ajax({
			type : "POST",
			url : "./postJob",
			data : JSON.stringify(myObject),
			contentType: 'application/json',

			beforeSend : function() {
				 $('#loader-img').removeAttr('hidden');	
			},
			success : function(response) {
				if("${status}"){
				  	$alertSuccess = $("#alertSuccess");
					$alertSuccess.show();
				}else{
					$alertError = $("#alertError");
					jQuery("label[for='myalue']").html("Something went wrong try again!");
					$alertError.show();
				}
			},
			complete : function() {
				$('#loader-img').attr('hidden','hidden');
				$('#topcontrol').click();
			},
			error : function(e) {
				
			}
		});
	}
}

$(document).ready(
		function() {
			$.getJSON('./messageMaxLimit', {
				ajax : 'true'
			}, function(data) {
				var html = '<option value="">Select</option>';
				var len = data.length;
				for (var i = 0; i < len; i++) {
					html += '<option value="' + data[i].id + '">'
							+ data[i].limits + '</option>';
				}
				html += '</option>';
				//now that we have our options, give them to our select
				$('#messageRanges').html(html);
			});	
			
		});

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
				//now that we have our options, give them to our select
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
		//now that we have our options, give them to our select
		$('#citiesforstate').html(html);
	});
}

$(document).ready(
		function() {
			$.getJSON('./getJobCategories', {
				ajax : 'true'
			}, function(data) {
				var html = '<option value="">Select</option>';
				var len = data.length;
				for (var i = 0; i < len; i++) {
					html += '<option value="' + data[i].id + '">'
							+ data[i].jobCat + '</option>';
				}
				html += '</option>';
				//now that we have our options, give them to our select
				$('#jobCategories').html(html);
			});
		});


function getJobSubCategories(){
	$.getJSON('./getJobSubCatByJobCatId', {
		ajax : 'true',
		jobCatId : $('#jobCategories :selected').val(),
	}, function(data) {
		var html = '';
		var len = data.length;
		for (var i = 0; i < len; i++) {
			html += '<div class="checkbox"><label><input name="jobSubCat" type="checkbox" id="' + data[i].id + '">'
					+'<label id="subCat_'+data[i].id+'">'+ data[i].jobSubCat+'</label></label></div>';
		}
		//html += '</label>';
		//now that we have our options, give them to our select
		$('#subcategoriescheckboxes').html(html);
		$('#subCatLabel').text("Choose your required categories");
	});
	
}
