/**
 * 
 */

$(document).ready(
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


function searchUsers() {
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

	$.ajax({
		type : "POST",
		url : "./searchUsers",
		data : JSON.stringify(myObject),
		contentType : 'application/json',

		beforeSend : function() {

		},
		success : function(result) {
			$("#page").load("./usersearchresult", myObject);

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