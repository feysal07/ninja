
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
	var errorMessage = '';
	var userEmailId=myObject.email;
	var atpos = userEmailId.indexOf("@");
	var dotpos = userEmailId.lastIndexOf(".");
	if (myObject.name == "") {
		errorMessage+='<i class="icon-warning-sign"></i>&nbsp;  Please enter name <br>';
		validation = "false";
	}

	if (userEmailId == "") {
		errorMessage+='<i class="icon-warning-sign"></i>&nbsp;  Please enter email <br>';
		validation = "false";
	}else{
		if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= userEmailId.length) {
			errorMessage += '<i class="icon-warning-sign"></i>&nbsp; Invalid Email address <br>';
			validation = "false";
		}
	}
	
	if (myObject.subject == "") {
		errorMessage+='<i class="icon-warning-sign"></i>&nbsp;  Please enter subject <br>';
		validation = "false";
	}
	if (myObject.message == "") {
		errorMessage+='<i class="icon-warning-sign"></i>&nbsp;  Please enter message <br>';
		validation = "false";
	}
	if (validation == "false") {
		$alertError = $("#alertError");
		jQuery("label[for='myalue']").html(errorMessage);
		$alertError.show();
	}
	return validation;
}

/*var Contact = function () {
 return {
        
        //Map
        initMap: function () {
			var map;
			$(document).ready(function(){
			  map = new GMaps({
				div: '#map',
				lat: 40.748866,
				lng: -73.988366
			  });
			   var marker = map.addMarker({
					lat: 40.748866,
					lng: -73.988366,
		            title: 'Loop, Inc.'
		        });
			});
        }

    };
}();
*/
function submitQuery(){
	closeErrorBox();
	closeSuccessBox();
	var myObject = new Object();
	myObject.name=$('#name').val();
	myObject.email=$('#email').val();
	myObject.message=$('#message').val();
	myObject.subject=$('#subject').val();
	myObject.contactPurpose=$('select#contactPurpose option:selected').val();
	var flag=isValid(myObject);
	
	if(flag== "true"){
		if(myObject.contactPurpose=="0"){
			myObject.subject=myObject.subject+":"+"other";
		}else{
			myObject.subject=$('#subject').val()+":"+$('select#contactPurpose option:selected').text();
		}
		
	$.ajax({
			type : "POST",
			url : "./submit-query",
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

$(document).ready(
		function() {
			$.getJSON('./contact-purpose', {
				ajax : 'true'
			}, function(data) {
				var html = '<option value="0">Select</option>';
				var len = data.length;
				for (var i = 0; i < len; i++) {
					html += '<option value="' + data[i].id + '">'
							+ data[i].value + '</option>';
				}
				html += '</option>';
				//now that we have our options, give them to our select
				$('#contactPurpose').html(html);
			});
		});