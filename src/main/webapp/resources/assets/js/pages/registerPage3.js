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

$(document).ready(
		function() {
			$.getJSON('./getUserTypes', {
				ajax : 'true',
			}, function(data) {
				var html = '<option value="">Select</option>';
				var len = data.length;
				for (var i = 0; i < len; i++) {
					html += '<option value="' + data[i].id + '">'
							+ data[i].userType + '</option>';
				}
				html += '</option>';
				// now that we have our options, give them to our select
				$('#userType').html(html);
			});
		});

$(document)
		.ready(
				function() {
					$
							.getJSON(
									'./getJobCategories',
									{
										ajax : 'true',
										contentType : 'application/json',
									},
									function(data) {
										var str = '';
										$
												.each(
														data,
														function(index, result) {
															str += '<label> <input type="checkbox" name="userJobCategoryList[' + result.id + '].jobCategoryIsSet"';
															str += 'value="true"  onclick="javascript:getSubCategories('
																	+ result.id
																	+ ')" id ="userJobCategoryList';
															str += result.id;
															str += '.jobCategoryIsSet';
															str += result.id+1;
															str += '"/>';
															str += result.jobCat;
															str += '<input type="hidden" name="_userJobCategoryList[';
															str += result.id;
															str += '].jobCategory" value="on"/>';
															str += '</label>';
															str += '<br>';

														});
										// now that we have our options, give
										// them to our select
										$('#categoriescheckboxes').html(str);

										var str = '';
										$
												.each(
														data,
														function(index, result) {
															str += '<div class="checkbox" style="display: none;" id="subcategoriescheckboxes'
																	+ result.id
																	+ '" />';

														});

										$('#subcategoriescheckboxes').html(str);
									});
				});

$(document).ready(function() {
	$.getJSON('./getJobSubCategories', {
		ajax : 'true',
		contentType : 'application/json',
	}, function(data) {

		var tempPrevJobCat = '';
		var str = ' ';
		var strArray = new Array();
		$.each(data, function(index, result) {

			if (tempPrevJobCat != result.jobCatId) {
				tempPrevJobCat = result.jobCatId;
				str = ' ';
			}

			
			str += '<label> <input type="checkbox" name="userJobSubCategoryList[' + result.id + '].jobSubCategoryIsSet"';
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
			str += '<br>';

			if (strArray[typeof result.jobCatId] === 'undefined') {
				strArray[result.jobCatId] = str;
			} else {
				strArray[result.jobCatId] = strArray[result.jobCatId] + str;
			}

		});

		$.each(strArray, function(index, result) {
			$("#subcategoriescheckboxes" + index).html(strArray[index]);
		});
		// now that we have our options, give them to our select
		// $("'#subcategoriescheckboxes"+result.jobCatId +"'").html(str);
	});
});

function getSubCategories(id) {
/*	$jobcategorycheckbox = $("#userJobCategoryList" + id +"jobCategoryIsSet" + id);
	alert($jobcategorycheckbox.prop("checked"));
    if($jobcategorycheckbox.prop("checked") == true){

        alert("Checkbox is checked.");
        $jobcategorycheckbox.val("true");

    }

    else if($jobcategorycheckbox.prop("checked") == false){

        alert("Checkbox is not checked.");
        $jobcategorycheckbox.val("false");

    }*/
	$subcategoriescheckboxes = $("#subcategoriescheckboxes" + id);
	$subcategoriescheckboxes.toggle();
};

function doRegister() {
	/*validate email Id%/
	 * 
	 */
	var validateReg1 = "true";
	var userEmailId = $("#userType").val();
	if (userEmailId == "") {
		$alertError = $("#alertError");
		$alertError.show();
		validateReg1 = "false";
	}
	
	
	if (validateReg1 == "true") {
		$("#registerpage3").submit();
	}

	
}