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

function doRegister() {
	/*validate email Id%/
	 * 
	 */
	var validation = true;
	var userEmailId = $("#email").val();
	if (userEmailId == "") {
		validation = false;
		return validation;
	}

	var atpos = userEmailId.indexOf("@");
	var dotpos = userEmailId.lastIndexOf(".");
	if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= userEmailId.length) {
		$alertError = $("#alertError3");
		$alertError.show();
		validation = false;
		return validation;
	}
	if(validation = true){
		$("#registerpage1").submit();
	}

	
}
