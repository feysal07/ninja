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


function doLogin() {
		var myObject = new Object();
		myObject.userName = $('#Username').val();
		myObject.password = $('#Password').val();

		$.ajax({
			type : "POST",
			url : "./doLogin",
			data : JSON.stringify(myObject),
			contentType : 'application/json',

			beforeSend : function() {

			},
			success : function(response) {
				if (response == "login-fail-nouser"
						|| response == "login-fail-usernoexist") {
					$alertError = $("#alertError");
					jQuery("label[for='myalue']").html("Invalid user. Please try again");
					$alertError.show();
				}
				if (response == "login-fail-nopassword") {
					$alertError = $("#alertError");
					jQuery("label[for='myalue']").html("Password not entered. Please try again");
					$alertError.show();
				}

				if (response == "home") {
					$alertSuccess= $("#alertSuccess")
					$alertSuccess.show();
					location.href = "home";
				}

			},
			complete : function() {

			},
			error : function(errorThrown) {
				console.log(errorThrown);

			}
		});
	}

	function doLoginUsingFacebook() {
		$.ajax({
			type : "GET",
			url : "./doLoginUsingFacebook",
			accept: "text/plain",
			beforeSend : function() {

			},
			success : function(response) {
				if (response == "facebook-login") {
					location.href = "./connect/facebook";
				}
				if (response == "home") {
					location.href = "./home";
				}
				if (response == "register") {
					location.href = "./register";
				}

			},
			complete : function() {
				//alert("Invalid user. Please try again");

			},
			error : function(errorThrown) {
				//alert("Invalid user. Please try again");
				console.log(errorThrown);
			}
		});
	}