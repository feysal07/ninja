function isValid(myObject){
	var validateReg1 = "true";
	var errorMessage='';
	if (myObject.oldPassword == "") {
		errorMessage += '<i class="icon-warning-sign"></i>&nbsp; Please enter old password! <br>';
		validateReg1 = "false";
	}
	if (myObject.newPassword == "") {
		errorMessage += '<i class="icon-warning-sign"></i>&nbsp; Please enter new password! <br>';
		validateReg1 = "false";
	}
	if (myObject.confirmPassword=="") {
		errorMessage += '<i class="icon-warning-sign"></i>&nbsp; Please enter confirm password! <br>';
		validateReg1 = "false";
	}
	if (myObject.confirmPassword!=myObject.newPassword) {
		errorMessage += '<i class="icon-warning-sign"></i>&nbsp; mismatch in confirm password! <br>';
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




function changePassword(){
	closeErrorBox();
	closeSuccessBox();
	var myObject = new Object();
	myObject.oldPassword = $('#oldPassword').val();
	myObject.newPassword = $('#newPassword').val();
	myObject.confirmPassword = $('#confirmPassword').val();
	var flag = isValid(myObject);
	
	if(flag== "true"){
	$.ajax({
			type : "POST",
			url : "./changePassword",
			data : JSON.stringify(myObject),
			contentType: 'application/json',

			beforeSend : function() {
               $('#loader-img').removeAttr('hidden');				
			},
			success : function(response) {
				if("${status}"){
			  	$alertSuccess = $("#alertSuccess");
				$alertSuccess.show();
			 }else{
				 $alertError = $("#alertError");
					jQuery("label[for='myalue']").html('<i class="icon-warning-sign"></i>&nbsp; Something went wrong try again!');
					$alertError.show();
				 
				 }
			},
			complete : function() {
				$('#loader-img').attr('hidden','hidden');
				$('#topcontrol').click();
				
			},
			error : function(e) {
				
			}
		});
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

