/**
 * 
 */

function closeErrorBox() {
	$alertError = $("#alertError");
	$alertError.hide();
}

function showErrorUserExitsBox() {
	$alertError = $("#alertError");
	jQuery("label[for='myalue']").html("The user name already exits");
	$alertError.show();
}


function showErrorFailAddUserBox() {
	$alertError = $("#alertError");
	jQuery("label[for='myalue']").html("Failed to add user");
	$alertError.show();
}



function doRegister() {
	/*validate email Id%/
	 * 
	 */
	var validateReg1 = "true";
	var userEmailId = $("#email").val();
	var errorMessage = '';
	if (userEmailId == "") {
/*		$alertError = $("#alertError3");
		$alertError.show();*/
		errorMessage = 'Invalid Email address <br>';
		validateReg1 = "false";
	}

	var atpos = userEmailId.indexOf("@");
	var dotpos = userEmailId.lastIndexOf(".");
	if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= userEmailId.length) {
/*		$alertError = $("#alertError3");
		$alertError.show();*/
		errorMessage = 'Invalid Email address <br>';
		validateReg1 = "false";
	}	
	
	var password =  $("#password").val();
	var confirmPassword = $("#cnfrmPassword").val();
	if (password == ""){
/*		$alertError = $("#alertError4");
		$alertError.show();*/
		errorMessage += 'Please enter password! <br>';
		validateReg1 = "false";
	}
	
	if (confirmPassword == ""){
/*		$alertError = $("#alertError5");
		$alertError.show();*/
		errorMessage += 'Please enter confirm password! <br>';
		validateReg1 = "false";
	}
	
	if (password != confirmPassword){
/*		$alertError = $("#alertError6");
		$alertError.show();*/
		errorMessage += 'Confirm password does not match the entered password! <br>';
		validateReg1 = "false";
	}
	
	if (validateReg1 == "false") {
		$alertError = $("#alertError");
		jQuery("label[for='myalue']").html(errorMessage);
		$alertError.show();
	}
	
	if (validateReg1 == "true") {
		$("#registerpage1").submit();
	}

	
}
