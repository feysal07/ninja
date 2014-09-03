
function closeErrorBox() {
	$alertError = $("#alertError");
	$alertError.hide();

}

function closeSuccessBox() {
	$alertSuccess = $("#alertSuccess");
	$alertSuccess.hide();

}

function isValid(myObject){
	var validation="true";
	if (myObject == "") {
		$alertError = $("#alertError");
		jQuery("label[for='myalue']").html('<i class="icon-warning-sign"></i>&nbsp; Please enter email');
		$alertError.show();
		validation = "false";
	}
	return validation;
}

function doValidateAndSendEmail() {
		closeErrorBox();
		closeSuccessBox();
		var myObject =$('#Username').val();
		var flag=isValid(myObject);
		
		if(flag== "true"){
		$.ajax({
			type : "POST",
			url : "./sendForgotPassword",
			data : myObject,
			contentType : 'application/json',

			beforeSend : function() {

			},
			success : function(response) {
				if (response == "user-doesnot-exist") {
					$alertError = $("#alertError");
					jQuery("label[for='myalue']").html('<i class="icon-warning-sign"></i>&nbsp; Invalid user!');
					$alertError.show();
					
				}
				if (response == "password-reset") {
					$alertSuccess = $("#alertSuccess");
					$alertSuccess.show();
				
				} 

			},
			complete : function() {

			},
			error : function(errorThrown) {
				console.log(errorThrown);

			}
		});
	}
	}