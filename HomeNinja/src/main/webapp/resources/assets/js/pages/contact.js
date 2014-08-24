var Contact = function () {

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
function submitQuery(){
	var myObject = new Object();
	myObject.name=$('#name').val();
	myObject.email=$('#email').val();
	myObject.message=$('#message').val();
	myObject.subject=$('#subject').val();
	myObject.contactPurpose=$('select#contactPurpose option:selected').val();
	 $.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/submitQuery",
			data : JSON.stringify(myObject),
			contentType: 'application/json',

			beforeSend : function() {
				
			},
			success : function(response) {
				if("${status}"){
			 alert("submitted");
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

$(document).ready(
		function() {
			$.getJSON('./getContactPurpose', {
				ajax : 'true'
			}, function(data) {
				var html = '<option value="">--Select--</option>';
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