/**
 * 
 */

$(document).ready(function() {
	var myObject = new Object();
	myObject.userId = $('#siteUserid').val();
	$.ajax({
		type : 'POST',
		url : './getAdvanceQuestions',
		data : JSON.stringify(myObject),
		contentType : 'application/json',
		success : function(data) {
			var str = '';
			$.each(data, function(index, result) {
				str += '<label> <input type="checkbox"';
				str += ' id ="' ;
				str += result.advanceSetting.id;
				str += '"';
				if(result.advanceSettingValue == 1){
					str += 'checked' ;
				}
				str += ' >';
				str += result.advanceSetting.fieldName ;
			    str += '</label><br>';
				
			});
			$('#advancemapcheckboxes').append(str);
		}
	});
});