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
				for (var i = 0; i < len; i++) {
					if (data[i].id == 2 || data[i].id == 3) {
						html += '<option value="' + data[i].id + '">'
								+ data[i].userType + '</option>';
					}

				}
				html += '</option>';
				// now that we have our options, give them to our select
				$('#userType').html(html);
			});
		});*/


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


function showInterestToContractor(userId, button){
	$.ajax({
		type : "POST",
		url : "./showInterestToContractor",
		data : JSON.stringify(userId),
		contentType : 'application/json',

		beforeSend : function() {
			
		},
		success : function(result) {
			
			if (result == "email-sent" ){
				$alertSuccess = $("#" + userId);
				jQuery("label[for='myvalue']").html(
						"Your request has been sent to the contractor");
				$alertSuccess.show();
			}
		},
		complete : function() {
			$('#topcontrol').click();
		},
		error : function(errorThrown) {
			console.log(errorThrown);

		}
	});
}

function getSubCategoriesforJob() {
	$.getJSON('./getJobSubCategories', {
		ajax : 'true',
		contentType : 'application/json',
	}, function(data) {

		var jobCategory = $('#categories').val();
		var html = '<option value="">Select</option>';
		var len = data.length;
		for (var i = 0; i < len; i++) {
			if (data[i].jobCatId == jobCategory) {
				html += '<option value="' + data[i].id + '">'
						+ data[i].jobSubCat + '</option>';
			}

		}
		html += '</option>';

		$('#subcategories').html(html);

	});

}

$(document).ready(searchUsers());

function searchUsers() {
	var validateReg1 = "true";

	var myObject = new Object();
	myObject.userTypeId = $('#userType').val();
	if (myObject.userTypeId == "" || myObject.userTypeId == "Select") {
		$alertError = $("#alertError");
		jQuery("label[for='myalue']").html("Please select the user type");
		$alertError.show();
		validateReg1 = "false";
	}

	myObject.state = $('#states').val();
	myObject.city = $('#citiesforstate').val();
	var categories = new Array();
	categories = $('#categories option:selected').text();
	myObject.categories = categories;
	var subcategories = new Array();
	subcategories = $('#subcategories option:selected').text();
	myObject.subcategories = subcategories;
	myObject.pincode = $('#pincode').val();
	myObject.pageNumber = 1;
	if (validateReg1 == "true") {
		$.ajax({
			type : "POST",
			url : "./search-users",
			data : JSON.stringify(myObject),
			contentType : 'application/json',

			beforeSend : function() {

			},
			success : function(result) {
				$("#page").load("./user-search-result", myObject);

			},
			complete : function() {

			},
			error : function(errorThrown) {
				console.log(errorThrown);

			}
		});
	}
}

function previousPage(pageNumber) {
	var myObject = new Object();
	myObject.userTypeId = $('#userType').val();
	myObject.state = $('#states').val();
	myObject.city = $('#citiesforstate').val();
	var categories = new Array();
	categories = $('#categories').val();
	myObject.categories = categories;
	var subcategories = new Array();
	subcategories = $('#subcategories').val();
	myObject.subcategories = subcategories;
	myObject.pincode = $('#pincode').val();
	myObject.pageNumber = pageNumber;
	myObject.pageNumber = pageNumber - 1;

	$.ajax({
		type : "POST",
		url : "./search-users",
		data : JSON.stringify(myObject),
		contentType : 'application/json',

		beforeSend : function() {

		},
		success : function(result) {
			$("#page").load("./user-search-result", myObject);

			/*
			 * if (response == "login-fail-nouser" || response ==
			 * "login-fail-usernoexist") { alert("Invalid user. Please try
			 * again"); } if (response == "login-fail-nopassword") {
			 * alert("Password not entered. Please try again"); }
			 */

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
	myObject.userTypeId = $('#userType').val();
	myObject.state = $('#states').val();
	myObject.city = $('#citiesforstate').val();
	var categories = new Array();
	categories = $('#categories').val();
	myObject.categories = categories;
	var subcategories = new Array();
	subcategories = $('#subcategories').val();
	myObject.subcategories = subcategories;
	myObject.pincode = $('#pincode').val();
	myObject.pageNumber = pageNumber + 1;

	$.ajax({
		type : "POST",
		url : "./search-users",
		data : JSON.stringify(myObject),
		contentType : 'application/json',

		beforeSend : function() {

		},
		success : function(result) {
			$("#page").load("./user-search-result", myObject);

			/*
			 * if (response == "login-fail-nouser" || response ==
			 * "login-fail-usernoexist") { alert("Invalid user. Please try
			 * again"); } if (response == "login-fail-nopassword") {
			 * alert("Password not entered. Please try again"); }
			 */

		},
		complete : function() {

		},
		error : function(errorThrown) {
			console.log(errorThrown);

		}
	});
}