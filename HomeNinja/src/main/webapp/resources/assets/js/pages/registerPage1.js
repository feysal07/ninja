/**
 * 
 */

function closeError1Box() {
	$alertError = $("#alertError1");
	$alertError.hide();

}

function closeError2Box() {
	$alertSuccess = $("#alertError2");
	$alertSuccess.hide();

}

function closeError3Box() {
	$alertError = $("#alertError3");
	$alertError.hide();

}

function closeError4Box() {
	$alertError = $("#alertError4");
	$alertError.hide();

}

function closeError5Box() {
	$alertError = $("#alertError5");
	$alertError.hide();

}

function closeError6Box() {
	$alertError = $("#alertError6");
	$alertError.hide();

}

function doRegister() {
	/*validate email Id%/
	 * 
	 */
	var validateReg1 = "true";
	var userEmailId = $("#email").val();
	if (userEmailId == "") {
		$alertError = $("#alertError3");
		$alertError.show();
		validateReg1 = "false";
	}

	var atpos = userEmailId.indexOf("@");
	var dotpos = userEmailId.lastIndexOf(".");
	if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= userEmailId.length) {
		$alertError = $("#alertError3");
		$alertError.show();
		validateReg1 = "false";
	}	
	
	var password =  $("#password").val();
	var confirmPassword = $("#cnfrmPassword").val();
	if (password == ""){
		$alertError = $("#alertError4");
		$alertError.show();
		validateReg1 = "false";
	}
	
	if (confirmPassword == ""){
		$alertError = $("#alertError5");
		$alertError.show();
		validateReg1 = "false";
	}
	
	if (password != confirmPassword){
		$alertError = $("#alertError6");
		$alertError.show();
		validateReg1 = "false";
	}
	
	
	if (validateReg1 == "true") {
		$("#registerpage1").submit();
	}

	
}
