function isBlogValid(myObject){
	closeErrorBox();
	closeSuccessBox();
	var validation="true";
	var errorMessage = '';
	
	if (myObject.title == "") {
		errorMessage='<i class="icon-warning-sign"></i>&nbsp;  Please enter Title <br>';
		validation = "false";
	}
	if (myObject.content == "") {
		errorMessage+='<i class="icon-warning-sign"></i>&nbsp;  Please enter Blog Content <br>';
		validation = "false";
	}
	if (validation == "false") {
		$alertError = $("#alertError");
		jQuery("label[for='myalue']").html(errorMessage);
		$alertError.show();
	}
	
	return validation;
}

function isCommentValid(myObject){
    closeErrorBox();
    closeSuccessBox();
    var validation="true";
    var errorMessage = '';

    if (myObject.message == "") {
        errorMessage='<i class="icon-warning-sign"></i>&nbsp;  Please enter Message <br>';
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
	 
	var flag=isBlogValid(myObject);
	if(flag== "true"){
	 $.post("./post-blog", {title: $('#title').val(), blogContent: $('#blogContent').val(),
         tags: $('#tags :selected').val()}).done(
         function(data){
            switch(data){
                case 'login':
                    post("./login")
                    break;
                case 'blogPost':
                    post('./blogPost');
                    break;
            }
         });
	}
}

function post(path, method) {
    method = method || "get"; // Set method to get by default if not specified.

    // The rest of this code assumes you are not using a library.
    // It can be made less wordy if you use one.
    var form = document.createElement("form");
    form.setAttribute("method", method);
    form.setAttribute("action", path);

    document.body.appendChild(form);
    form.submit();
}

function postComment(){
    var myObject = new Object();

    myObject.message=$('#message').val();
    var flag=isCommentValid(myObject);

    if(flag== "true"){
    $.post("./post-comment", {message: $('#message').val(), blog: $('#blog').val()})
        .done(function(data){
            $('#comments').html(data);
        });}

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
