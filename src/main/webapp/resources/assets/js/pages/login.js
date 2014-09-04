
function isValid(myObject){
	var validation = "true";
	var errorMessage='';
	if (myObject.userName == "") {
		errorMessage +='<i class="icon-warning-sign"></i>&nbsp; Please enter username <br>';
		validation = "false";
	}
	if (myObject.password == "") {
		errorMessage +='<i class="icon-warning-sign"></i>&nbsp; Please enter password <br>';
		validation = "false";
	}
	if(validation =="false"){
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

function doLogin() {
	closeErrorBox();
	closeSuccessBox();
	
	var myObject = new Object();
	myObject.userName = $('#Username').val();
	myObject.password = $('#Password').val();

	var flag=isValid(myObject);

	if (flag == "true") {
		$.ajax({
			type : "POST",
			url : "./doLogin",
			data : JSON.stringify(myObject),
			contentType : 'application/json',

			beforeSend : function() {
				 $('#loader-img').removeAttr('hidden');	
			},
			success : function(response) {
				if (response == "login-fail-nouser"
						|| response == "login-fail-usernoexist") {
					$alertError = $("#alertError");
					jQuery("label[for='myalue']").html('<i class="icon-warning-sign"></i>&nbsp; Invalid user. Please try again');
					$alertError.show();
				}
				if (response == "login-fail-nopassword") {
					$alertError = $("#alertError");
					jQuery("label[for='myalue']").html('<i class="icon-warning-sign"></i>&nbsp; Password not entered. Please try again');
					$alertError.show();
				}

				if (response == "home") {
					$alertSuccess = $("#alertSuccess");
					$alertSuccess.show();
					location.href = ".";
				}

			},
			complete : function() {
				$('#loader-img').attr('hidden','hidden');
				$('#topcontrol').click();
			},
			error : function(errorThrown) {
				console.log(errorThrown);

			}
		});
	}

}

function doLoginUsingFacebook() {
	$.ajax({
		type : "GET",
		url : "./doLoginUsingFacebook",
		accept : "text/plain",
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