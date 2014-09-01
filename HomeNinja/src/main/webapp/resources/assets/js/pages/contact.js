
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
	if (myObject.name == "") {
		$alertError = $("#alertError");
		jQuery("label[for='myalue']").html("Please enter name");
		$alertError.show();
		validation = "false";
	}

	else if (myObject.email == "") {
		$alertError = $("#alertError");
		jQuery("label[for='myalue']").html("Please enter email");
		$alertError.show();
		validation = "false";
	}
	
	else if (myObject.subject == "") {
		$alertError = $("#alertError");
		jQuery("label[for='myalue']").html("Please enter subject");
		$alertError.show();
		validation = "false";
	}
	else if (myObject.message == "") {
		$alertError = $("#alertError");
		jQuery("label[for='myalue']").html("Please enter message");
		$alertError.show();
		validation = "false";
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
			url : "./submitQuery",
			data : JSON.stringify(myObject),
			contentType: 'application/json',

			beforeSend : function() {
				
			},
			success : function(response) {
				if("${status}"){
			  	$alertSuccess = $("#alertSuccess");
				$alertSuccess.show();
			 }else{
				 alert("not-submitted");
				 }
			},
			complete : function() {
			
			},
			error : function(e) {
				
			}
		});
	}
		
}

$(document).ready(
		function() {
			$.getJSON('./getContactPurpose', {
				ajax : 'true'
			}, function(data) {
				var html = '<option value="0">--Select--</option>';
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