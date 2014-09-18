function isValid(myObject){
	var validateReg1 = "true";
	var errorMessage='';
	if (myObject.oldPassword == "") {
		errorMessage += 'Please enter old password! <br>';
		validateReg1 = "false";
	}
	if (myObject.newPassword == "") {
		errorMessage += 'Please enter new password! <br>';
		validateReg1 = "false";
	}
	if (myObject.confirmPassword=="") {
		errorMessage += 'Please enter confirm password! <br>';
		validateReg1 = "false";
	}
	if (myObject.confirmPassword!=myObject.newPassword) {
		errorMessage += 'mismatch in confirm password! <br>';
		validateReg1 = "false";
	}
	if (validateReg1 == "false") {
		$alertError = $("#alertError");
		jQuery("label[for='myalue']").html(errorMessage);
		$alertError.show();
		$('#loader-img').hide();
	}
	
	return validateReg1;
}



function changePassword() {
	closeErrorBox();
	closeSuccessBox();
	$('#loader-img').show();
	var myObject = new Object();
	myObject.oldPassword = $('#oldPassword').val();
	myObject.newPassword = $('#newPassword').val();
	myObject.confirmPassword = $('#confirmPassword').val();
	var flag = isValid(myObject);
	if (flag == "true") {
		$('#changePasswordForm').submit();
	}

}

function closeErrorBox() {
	$alertError = $("#alertError");
	$alertError.hide();

}

function closeSuccessBox() {
	$alertSuccess = $("#alertSuccess");
	$alertSuccess.hide();

}

