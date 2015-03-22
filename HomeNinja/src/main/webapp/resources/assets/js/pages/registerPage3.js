/**
 * 
 */

function closeErrorBox() {
	$alertError = $("#alertError");
	$alertError.hide();

}

function closeSuccessBox() {
	$alertSuccess = $("#alertSuccess");
	$alertSuccess.hide();

}

/*$(document).ready(
		function() {
			$.getJSON('./getUserTypes', {
				ajax : 'true',
			}, function(data) {
				var html = '<option value="">Select</option>';
				var len = data.length;
				var userType = $('#userTypeId').val();
				
				for (var i = 0; i < len; i++) {
					
					html += '<option value="' + data[i].id + '"';
					if(data[i].id == userType){
						html += 'selected = "selected"';
					}
						html += '>' +  data[i].userType + '</option>';
				}
				html += '</option>';
				// now that we have our options, give them to our select
				$('#userType').html(html);
			});
		});*/

$(document)
		.ready(
				function() {
					$
							.getJSON(
									'./getJobCategoriesWithSelection',
									{
										ajax : 'true',
										contentType : 'application/json',
										userId :   $('#siteUserid').val(),
									},
									function(data) {
										var str = '';
										$
												.each(
														data,
														function(index, result) {
															str += '<div class="col-md-6 columns">';
															str += '<label class="checkbox-block"> <input type="checkbox" name="userJobCategoryList[' + result.id + '].jobCategoryIsSet"';
															if(result.isSet == "true"){
																str += ' checked = "checked"';
															}
															str += 'value="true"  onclick="javascript:getSubCategories('
																	+ result.id
																	+ ', this)" id ="userJobCategoryList';
															str += result.id;
															str += '.jobCategoryIsSet';
															str += result.id+1;
															str += '"/>';
															str += result.jobCat;
															str += '<input type="hidden" name="_userJobCategoryList[';
															str += result.id;
															str += '].jobCategory" value="on"/>';
															str += '</label>';
															str += '</div>';
															

														});
										
										// now that we have our options, give
										// them to our select
										$('#categoriescheckboxes').html(str);

										var str = '';
										$
												.each(
														data,
														function(index, result) {
															if(result.isSet == 'true') {
																str += '<div class="checkbox" id="subcategoriescheckboxes'
																	+ result.id
																	+ '" />';
																$('#specialities').show();
															} else {
																str += '<div class="checkbox" style="display: none;" id="subcategoriescheckboxes'
																	+ result.id
																	+ '" />';
															}

														});

										$('#subcategoriescheckboxes').html(str);
									});
				});

$(document).ready(function() {
	$.getJSON('./getJobSubCategoriesWithSelection', {
		ajax : 'true',
		contentType : 'application/json',
		userId :   $('#siteUserid').val(),
	}, function(data) {

		var tempPrevJobCat = '';
		var str = ' ';
		var strArray = new Array();
		$.each(data, function(index, result) {

			if (tempPrevJobCat != result.jobCatId) {
				tempPrevJobCat = result.jobCatId;
				str = ' ';
			}

			str = ' ';
			str += '<div class="col-md-6 columns">';
			str += '<label class="checkbox-block"> <input type="checkbox" name="userJobSubCategoryList[' + result.id + '].jobSubCategoryIsSet"';
			if(result.isSet == "true"){
				str += ' checked = "checked"';
				$subcategoriescheckboxes = $("#subcategoriescheckboxes" + result.jobCatId);
				$subcategoriescheckboxes.show();
			}
			str += 'value="true"'
					+ 'id ="userJobSubCategoryList';
			str += result.id;
			str += '.jobSubCategoryIsSet';
			str += result.id+1;
			str += '"/>';
			str += result.jobSubCat;
			str += '<input type="hidden" name="_userJobSubCategoryList[';
			str += result.id;
			str += '].jobCategory" value="on"/>';
			str += '</label>';
			str += '</div>';

 
			
			if (typeof strArray[ result.jobCatId] == 'undefined'){
				strArray[result.jobCatId] = ' ';				
			}
			strArray[result.jobCatId] = strArray[result.jobCatId] + str;
		});

 		$.each(strArray, function(index, result) {
			$("#subcategoriescheckboxes" + index).html(strArray[index]);
		});
		// now that we have our options, give them to our select
		// $("'#subcategoriescheckboxes"+result.jobCatId +"'").html(str);
	});
});

function getSubCategories(id, cb) {
	$subcategoriescheckboxes = $("#subcategoriescheckboxes" + id);
	if(cb.checked) {
		$subcategoriescheckboxes.show();
		$('#specialities').show();
	} else {
		$subcategoriescheckboxes.hide();
		confirmSpecialitiesHide();
	}
};

function confirmSpecialitiesHide() {
	var categoriescheckboxes = document.getElementById('categoriescheckboxes');
	var inputs = categoriescheckboxes.getElementsByTagName('input');
	var is_checked = false;
	
	for(var x = 0; x < inputs.length; x++) {
	    if(inputs[x].type == 'checkbox') {
	        is_checked = inputs[x].checked;
	        if(is_checked) break;
	    }
	}

	if(!is_checked) $('#specialities').hide();
}

function doRegister() {
	var validateReg1 = "true";
	var userEmailId = $("#userType").val();
	if (userEmailId == "") {
		$alertError = $("#alertError");
		jQuery("label[for='myalue']").html("Please select the user type");
		$alertError.show();
		validateReg1 = "false";
	}
	
	
	if (validateReg1 == "true") {
		$("#registerpage3").submit();
	}

	
}