/**
 * 
 */

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
					alert("Invalid user. Please try again");
				}
				if (response == "login-fail-nopassword") {
					alert("Password not entered. Please try again");
				}

				if (response == "home") {
					location.href = ".home";
				} else {
					location.href = "./login";
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