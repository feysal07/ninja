$(function() {
	$("#next-page3").click(function() {
		var url = './RegisterPage3';
		$(location).attr('href', url);
	});
});

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
				str += ' id ="';
				str += result.advanceSetting.id;
				str += '"';
				if (result.advanceSettingValue == 1) {
					str += 'checked';
				}
				str += ' >';
				str += result.advanceSetting.fieldName;
				str += '</label><br>';

			});
			$('#advancemapcheckboxes').append(str);
		}
	});
});

$(document).ready(
		function() {
			$.getJSON('./states', {
				ajax : 'true'
			}, function(data) {
				var html = '<option value="">Select</option>';
				var len = data.length;
				for (var i = 0; i < len; i++) {
					html += '<option value="' + data[i].stateOrderId + '">'
							+ data[i].name + '</option>';
				}
				html += '</option>';
				//now that we have our options, give them to our select
				$('#states').html(html);
			});
		});

function getCitiesforState() {
	$.getJSON('./citiesforStates', {
		ajax : 'true',
		stateOrderId : $('#states').val(),
	}, function(data) {
		var html = '<option value="">Select</option>';
		var len = data.length;
		for (var i = 0; i < len; i++) {
			html += '<option value="' + data[i].masterDataId + '">'
					+ data[i].name + '</option>';
		}
		html += '</option>';
		//now that we have our options, give them to our select
		$('#citiesforstate').html(html);
	});
}

function saveSection1() {
	var myObject = new Object();
	myObject.userId = $('#siteUserid').val();
	myObject.firstName = $('#firstName').val();
	myObject.lastName = $('#lastName').val();
	myObject.loginEmail = $('#loginEmail').val();
	myObject.phoneNumber = $('#phoneNumber').val();
	myObject.aboutMe = $('#aboutMe').val();

	$.ajax({
		type : "POST",
		url : "./saveSection1",
		data : JSON.stringify(myObject),
		contentType : 'application/json',

		beforeSend : function() {

		},
		success : function(response) {
			if (response == "login-fail-nouser"
					|| response == "login-fail-usernoexist") {
				alert("Invalid user. Please try again");
			}
			if (response == "login-fail-nopassword") {
				alert("Password not entered. Please try again");
			}

		},
		complete : function() {

		},
		error : function(errorThrown) {
			console.log(errorThrown);

		}
	});
}

function saveSection2() {
	var myObject = new Object();
	myObject.userId = $('#siteUserid').val();
	myObject.address = new Object();
	myObject.address.state = $("#states").val();
	myObject.address.city = $('#citiesforstate').val();
	myObject.address.pincode = $('#pincode').val();

	$.ajax({
		type : "POST",
		url : "./saveSection2",
		data : JSON.stringify(myObject),
		contentType : 'application/json',

		beforeSend : function() {

		},
		success : function(response) {
		},
		complete : function() {

		},
		error : function(errorThrown) {
			console.log(errorThrown);

		}
	});
}

function saveSection3() {
	var myObject = new Array();
	var myObject1 = new Object();
	if ($('#1').attr('checked')) {
		alert($('#1').attr('checked'));
		myObject1.advanceSettingValue = 1;
	} else {
		myObject1.advanceSettingValue = 0;
	}
	myObject1.userId = $('#siteUserid').val();
	myObject1.advanceSetting = new Object();
	myObject1.advanceSetting.id = 1;
	myObject[0] = myObject1;

	var myObject2 = new Object();
	if ($('#2').attr('checked')) {
		alert($('#2').attr('checked'));
		myObject2.advanceSettingValue = 1;
	} else {
		myObject2.advanceSettingValue = 0;
	}
	myObject2.userId = $('#siteUserid').val();
	myObject2.advanceSetting = new Object();
	myObject2.advanceSetting.id = 1;
	myObject[1] = myObject2;

	var myObject3 = new Object();
	if ($('#3').attr('checked')) {
		alert($('#3').attr('id'));
		myObject3.advanceSettingValue = 1;
	} else {
		myObject3.advanceSettingValue = 0;
	}
	myObject3.userId = $('#siteUserid').val();
	myObject3.advanceSetting = new Object();
	myObject3.advanceSetting.id = 1;
	myObject[2] = myObject3;

	$.ajax({
		type : "POST",
		url : "./saveSection3",
		data : JSON.stringify(myObject),
		contentType : 'application/json',

		beforeSend : function() {

		},
		success : function(response) {
		},
		complete : function() {

		},
		error : function(errorThrown) {
			console.log(errorThrown);

		}
	});
}

(function($, W, D, undefined) {

	W.JQUERY4U = W.JQUERY4U || {};
	W.JQUERY4U.AJAXIMAGEUPLOAD = {

		name : "jQuery Ajax Image Upload 1.0",

		namespace : "W.JQUERY4U.AJAXIMAGEUPLOAD",

		settings : {
			formId : '#upload-image-form',
			uploadImageUrl : './uploadprofilepicture'
		},

		cache : {
		//runtime data, dom elements etc...
		},

		init : function(settings) {
			this.settings = $.extend({}, this.settings, settings);
			this.cache.$form = $(this.settings.formId);
			/*  this.cache.$imgOriginal = $('#image_original');  */
			this.cache.$imgUploadPic = $('#image-upload-pic');
			this.setupEventHandlers();
		},

		setupEventHandlers : function() {
			var _this = this;

			//capture image upload
			$('#image-upload1').on('click', function(e) {
				e.preventDefault();
				console.log('uploading image...');
				_this.uploadImage();
			});
			//capture image upload
			/*				$('#image-upload').on('change', function(e) {
			 e.preventDefault();
			 console.log('uploading image...');
			 _this.uploadImage();
			 });*/

			//remove image upload
			$('#remove-image-upload').on('click', function(e) {
				e.preventDefault();
				console.log('removing image...');
				_this.removeImage();
			});

			//submit form handler
			this.cache.$form.on('submit', function(e) {
				e.preventDefault();
				console.log('submitting form...');
				_this.submitForm();
			});

		},

		uploadImage : function() {
			var _this = this, $imgInput = $('#image-upload');
			var myObject = new Object();
			myObject.userId = $('#siteUserid').val();

			this.cache.$form.find('.loading').show();
			$('.img-data').remove(); //remove any previous image data

			$.ajaxFileUpload({
				url : _this.settings.uploadImageUrl,
				secureuri : false,
				fileElementId : 'image-upload',
				enctype : "multipart/form-data",
				contentType : "application/json,image/jpg",
				dataType : "text/html",
				data : JSON.stringify(myObject),
				success : function(data) {
					console.log(data);
					_this.cache.$imgUploadPic.attr('src', data);

					$('#image-upload').val(null);
					//show img data
					$('#remove-image-upload').show();

				},
				error : function(xhr, textStatus, errorThrown) {
					console.log(xhr, textStatus, errorThrown + 'error');
					return false;
				},
				complete : function() {
					//hide loading image
					_this.cache.$imgUploadPic.show();
				}

			});

		},

		removeImage : function() {
			this.cache.$imgPreview.attr('src', 'img/350x150.jpg');
			this.cache.$imgOriginal.attr('src', '');
			$('.img-data').remove();
			$('#image-upload').val('');
			$('#remove-image-upload').hide();
			//todo: remove temp file using ajax/php
		},

		submitForm : function() {
		}

	}

	$(D).ready(function() {
		//start up the form events
		W.JQUERY4U.AJAXIMAGEUPLOAD.init();
	});

})(jQuery, window, document);

jQuery
		.extend({

			handleError : function(s, xml, status, e) {
				//silent ???
				console.log('error occured...');
				console.log(s, xml, status, e);
			},

			createUploadIframe : function(id, uri) {
				//create frame
				var frameId = 'jUploadFrame' + id;

				if (window.ActiveXObject) {
					var io = document.createElement('<iframe id="' + frameId
							+ '" name="' + frameId + '" />');
					if (typeof uri == 'boolean') {
						io.src = 'javascript:false';
					} else if (typeof uri == 'string') {
						io.src = uri;
					}
				} else {
					var io = document.createElement('iframe');
					io.id = frameId;
					io.name = frameId;
				}
				io.style.position = 'absolute';
				io.style.top = '-1000px';
				io.style.left = '-1000px';

				document.body.appendChild(io);

				return io
			},
			createUploadForm : function(id, fileElementId) {
				//create form
				var formId = 'jUploadForm' + id;
				var fileId = 'jUploadFile' + id;
				var form = $('<form action="" method="POST" name="' + formId
						+ '" id="' + formId
						+ '" enctype="multipart/form-data"></form>');
				var oldElement = $('#' + fileElementId);
				var newElement = $(oldElement).clone();
				$(oldElement).attr('id', fileId);
				$(oldElement).before(newElement);
				$(oldElement).appendTo(form);
				//set attributes
				$(form).css('position', 'absolute');
				$(form).css('top', '-1200px');
				$(form).css('left', '-1200px');
				$(form).appendTo('body');
				return form;
			},

			ajaxFileUpload : function(s) {
				// TODO introduce global settings, allowing the client to modify them for all requests, not only timeout
				s = jQuery.extend({}, jQuery.ajaxSettings, s);
				var id = new Date().getTime();
				var form = jQuery.createUploadForm(id, s.fileElementId);
				var io = jQuery.createUploadIframe(id, s.secureuri);
				var frameId = 'jUploadFrame' + id;
				var formId = 'jUploadForm' + id;
				// Watch for a new set of requests
				if (s.global && !jQuery.active++) {
					jQuery.event.trigger("ajaxStart");
				}
				var requestDone = false;
				// Create the request object
				var xml = {}
				if (s.global)
					jQuery.event.trigger("ajaxSend", [ xml, s ]);
				// Wait for a response to come back
				var uploadCallback = function(isTimeout) {
					var io = document.getElementById(frameId);
					try {
						if (io.contentWindow) {
							xml.responseText = io.contentWindow.document.body ? io.contentWindow.document.body.innerHTML
									: null;
							xml.responseXML = io.contentWindow.document.XMLDocument ? io.contentWindow.document.XMLDocument
									: io.contentWindow.document;

						} else if (io.contentDocument) {
							xml.responseText = io.contentDocument.document.body ? io.contentDocument.document.body.innerHTML
									: null;
							xml.responseXML = io.contentDocument.document.XMLDocument ? io.contentDocument.document.XMLDocument
									: io.contentDocument.document;
						}
					} catch (e) {
						jQuery.handleError(s, xml, null, e);
					}
					if (xml || isTimeout == "timeout") {
						requestDone = true;
						var status;
						try {
							status = isTimeout != "timeout" ? "success"
									: "error";
							// Make sure that the request was successful or notmodified
							if (status != "error") {
								// process the data (runs the xml through httpData regardless of callback)
								var data = jQuery.uploadHttpData(xml,
										s.dataType);
								// If a local callback was specified, fire it and pass it the data
								if (s.success)
									s.success(data, status);

								// Fire the global callback
								if (s.global)
									jQuery.event.trigger("ajaxSuccess", [ xml,
											s ]);
							} else
								jQuery.handleError(s, xml, status);
						} catch (e) {
							status = "error";
							jQuery.handleError(s, xml, status, e);
						}

						// The request was completed
						if (s.global)
							jQuery.event.trigger("ajaxComplete", [ xml, s ]);

						// Handle the global AJAX counter
						if (s.global && !--jQuery.active)
							jQuery.event.trigger("ajaxStop");

						// Process result
						if (s.complete)
							s.complete(xml, status);

						jQuery(io).unbind()

						setTimeout(function() {
							try {
								$(io).remove();
								$(form).remove();

							} catch (e) {
								jQuery.handleError(s, xml, null, e);
							}

						}, 100)

						xml = null

					}
				}
				// Timeout checker
				if (s.timeout > 0) {
					setTimeout(function() {
						// Check to see if the request is still happening
						if (!requestDone)
							uploadCallback("timeout");
					}, s.timeout);
				}
				try {
					// var io = $('#' + frameId);
					var form = $('#' + formId);
					$(form).attr('action', s.url);
					$(form).attr('method', 'POST');
					$(form).attr('target', frameId);
					if (form.encoding) {
						form.encoding = 'multipart/form-data';
					} else {
						form.enctype = 'multipart/form-data';
					}
					$(form).submit();

				} catch (e) {
					jQuery.handleError(s, xml, null, e);
				}
				if (window.attachEvent) {
					document.getElementById(frameId).attachEvent('onload',
							uploadCallback);
				} else {
					document.getElementById(frameId).addEventListener('load',
							uploadCallback, false);
				}
				return {
					abort : function() {
					}
				};

			},

			uploadHttpData : function(r, type) {
				var data = !type;
				data = type == "xml" || data ? r.responseXML : r.responseText;
				// If the type is "script", eval it in global context
				if (type == "script")
					jQuery.globalEval(data);
				// Get the JavaScript object, if JSON is used.
				if (type == "json")
					eval("data = " + data);
				// evaluate scripts within html
				if (type == "html")
					jQuery("<div>").html(data).evalScripts();
				//alert($('param', data).each(function(){alert($(this).attr('value'));}));
				return data;
			}
		});

(function($) {

	$(document).ready(function() {
		//BSA
		setTimeout(function() {
			var close = '<a href="#" class="close_bsap">X</a>';
			$('.bsap .bsa_it').prepend(close);
			$('.close_bsap').on('click', function(e) {
				e.preventDefault();
				$(this).closest('.bsap').hide();
			});
		}, 1500);

	});

})(jQuery);
// usage: log('inside coolFunc', this, arguments);
// paulirish.com/2009/log-a-lightweight-wrapper-for-consolelog/
window.log = function f() {
	log.history = log.history || [];
	log.history.push(arguments);
	if (this.console) {
		var args = arguments, newarr;
		args.callee = args.callee.caller;
		newarr = [].slice.call(args);
		if (typeof console.log === 'object')
			log.apply.call(console.log, console, newarr);
		else
			console.log.apply(console, newarr);
	}
};

// make it safe to use console.log always
(function(a) {
	function b() {
	}
	for (var c = "assert,count,debug,dir,dirxml,error,exception,group,groupCollapsed,groupEnd,info,log,markTimeline,profile,profileEnd,time,timeEnd,trace,warn"
			.split(","), d; !!(d = c.pop());) {
		a[d] = a[d] || b;
	}
})(function() {
	try {
		console.log();
		return window.console;
	} catch (a) {
		return (window.console = {});
	}
}());

// place any jQuery/helper plugins in here, instead of separate, slower script files.

