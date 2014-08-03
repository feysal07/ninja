/**
 * 
 */

function doValidateAndSendEmail() {
		var myObject = new Object();
		myObject.userName = $('#Username').val();

		$.ajax({
			type : "POST",
			url : "./sendForgotPassword",
			data : JSON.stringify(myObject),
			contentType : 'application/json',

			beforeSend : function() {

			},
			success : function(response) {
				if (response == "user-doesnot-exist") {
					alert("Invalid user. Please try again");
				}

				if (response == "home") {
					location.href = "${pageContext.request.contextPath}/home";
				} 

			},
			complete : function() {

			},
			error : function(errorThrown) {
				console.log(errorThrown);

			}
		});
	}