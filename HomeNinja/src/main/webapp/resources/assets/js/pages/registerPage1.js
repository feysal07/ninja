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
	var errorMessage = '';
	
	var firstName = $("#fname").val();
	var lastName = $("#lname").val();
	var letters = /^[A-Za-z]+$/;
	if (firstName == "") {
		errorMessage += 'Please enter first name! <br>';
		validateReg1 = "false";
	}
	if (lastName == "") {
		errorMessage += 'Please enter last name! <br>';
		validateReg1 = "false";
	}
	if (firstName != "" && !firstName.match(letters)) {
		errorMessage += 'Invalid first name uses only letters <br>';
		validateReg1 = "false";
	}
	if (lastName != "" && !lastName.match(letters)) {
		errorMessage += 'Invalid last name uses only letters <br>';
		validateReg1 = "false";
	}	
	var userEmailId = $("#email").val();
	
	if (userEmailId == "") {
		errorMessage += 'Invalid Email address <br>';
		validateReg1 = "false";
	}
	else{
		var atpos = userEmailId.indexOf("@");
		var dotpos = userEmailId.lastIndexOf(".");
		if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= userEmailId.length) {
			/*		$alertError = $("#alertError3");
			 $alertError.show();*/
			errorMessage += 'Invalid Email address <br>';
			validateReg1 = "false";
		}
	}


	var phoneno = /^\d{10}$/;
	var phoneNumberInput = $("#phone").val();
	if (phoneNumberInput != null && !phoneNumberInput.match(phoneno)) {
		errorMessage += 'Invalid Phone number <br>';
		validateReg1 = "false";
	}

	var password = $("#password").val();
	var confirmPassword = $("#cnfrmPassword").val();
	if (password == "") {
		/*		$alertError = $("#alertError4");
		 $alertError.show();*/
		errorMessage += 'Please enter password! <br>';
		validateReg1 = "false";
	}

	if (confirmPassword == "") {
		/*		$alertError = $("#alertError5");
		 $alertError.show();*/
		errorMessage += 'Please enter confirm password! <br>';
		validateReg1 = "false";
	}

	if (password != confirmPassword) {
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