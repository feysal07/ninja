/**
 * 
 */



function jobPost(){
	 var myObject = new Object();
     var jobSubCatArray=[];
     var jobSubCategories="";
	 $('input:checkbox[name=jobSubCat]:checked').each(function() 
			   {
		         alert($('#subCat_'+this.id).val());
		 		 jobSubCategories=jobSubCategories+"-"+this.value;
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
	 

	 $.ajax({
			type : "POST",
			url : "./postJob",
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
			html += '<div class="checkbox"><label id="subCat_'+data[i].id+'"><input name="jobSubCat" type="checkbox" id="' + data[i].id + '">'
					+ data[i].jobSubCat+'</label></div>';
		}
		//html += '</label>';
		//now that we have our options, give them to our select
		$('#subcategoriescheckboxes').html(html);
	});
	
}
