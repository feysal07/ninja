
function closeErrorBox() {
	$alertError = $("#alertError");
	$alertError.hide();

}

function closeSuccessBox() {
	$alertSuccess = $("#alertSuccess");
	$alertSuccess.hide();

}

function isValid(myObject){
	closeErrorBox();
	closeSuccessBox();
	var atpos = myObject.indexOf("@");
	var dotpos = myObject.lastIndexOf(".");
	var validation="true";
	var errorMessage='';
	if (myObject == "") {
		errorMessage ='<i class="icon-warning-sign"></i>&nbsp; Please enter email';
		validation = "false";
	}else{
		if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= myObject.length) {
			errorMessage = '<i class="icon-warning-sign"></i>&nbsp; Invalid Email address';
			validation = "false";
		}
	}
	
	if(validation=='false'){
		$alertError = $("#alertError");
		jQuery("label[for='myalue']").html(errorMessage);
		$alertError.show();
	}
	
	return validation;
}

function doValidateAndSendEmail() {
	
	    var myObject =$('#userName').val();
		var flag=isValid(myObject);
		
		if(flag== "true"){
		$.ajax({
			type : "POST",
			url : "./sendForgotPassword",
			data : myObject,
			contentType : 'application/json',

			beforeSend : function() {
				$('#loader-img').removeAttr('hidden');
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
				$('#loader-img').attr('hidden','hidden');
			},
			error : function(errorThrown) {
				console.log(errorThrown);

			}
		});
	}
	}