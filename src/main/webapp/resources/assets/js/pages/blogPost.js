function isValid(myObject){
	closeErrorBox();
	closeSuccessBox();
	var validation="true";
	var errorMessage = '';
	
	if (myObject.title == "") {
		errorMessage='<i class="icon-warning-sign"></i>&nbsp;  Please enter blog title <br>';
		validation = "false";
	}
	if (myObject.blogContent == "") {
		errorMessage+='<i class="icon-warning-sign"></i>&nbsp;  Please enter content <br>';
		validation = "false";
	}
	if (validation == "false") {
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


function blogPost(){
	 var myObject = new Object();
     	 
	 myObject.title=$('#title').val();
	 myObject.content=$('#blogContent').val();
	 myObject.tags=$('#tags :selected').val();
	 
	var flag=isValid(myObject);
	if(flag== "true"){
	 $.ajax({
			type : "POST",
			url : "./postBlog",
			dataType: "json",
            data: JSON.stringify(myObject),
            contentType: "application/json",
            mimeType: "application/json",
            
            success: function(data){
            	console.log("success")
            },
            
            error: function(data){
            	console.log("error")
            }
		});
	}
}

function postComment(){
    $.post("./postComment", {message: $('#message').val(), blog: $('#blog').val()})
        .done(function(data){
            $('#comments').html(data);
        });

}

$(document).ready(
		function() {
			$.getJSON('./tags', {
				ajax : 'true'
			}, function(data) {
				var html = '<option value="">Select</option>';
				var len = data.length;
				for (var i = 0; i < len; i++) {
					html += '<option value="' + data[i][0] + '">'
							+ data[i][1] + '</option>';
				}
				html += '</option>';
				//now that we have our options, give them to our select
				$('#tags').html(html);
			});
		});
