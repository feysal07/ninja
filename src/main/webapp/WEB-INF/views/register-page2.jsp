<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<c:import url="../include.jsp"></c:import>
<c:import url="../header.jsp"></c:import>

<script type="text/javascript">

(function($,W,D,undefined)
{

	  W.JQUERY4U = W.JQUERY4U || {};
    W.JQUERY4U.AJAXIMAGEUPLOAD = {

        name: "jQuery Ajax Image Upload 1.0",

        namespace: "W.JQUERY4U.AJAXIMAGEUPLOAD",

        settings:
        {
            formId: '#upload-image-form',
            uploadImageUrl: './uploadprofilepicture'
        },

        cache:
        {
            //runtime data, dom elements etc...
        },
 
        init: function(settings)
        {
            this.settings = $.extend({}, this.settings, settings);
            this.cache.$form = $(this.settings.formId);
            this.cache.$imgOriginal = $('#image_original'); 
            this.cache.$imgUploadPic = $('#image-upload-pic');
            this.setupEventHandlers();
        },

        setupEventHandlers: function()
        {
            var _this = this;

            //capture image upload
            $('#image-upload').on('change', function(e)
            {
                e.preventDefault();
                console.log('uploading image...');
                _this.uploadImage();
            });

            //remove image upload
            $('#remove-image-upload').on('click', function(e)
            {
                e.preventDefault();
                console.log('removing image...');
                _this.removeImage();
            });

            //submit form handler
            this.cache.$form.on('submit', function(e)
            {
                e.preventDefault();
                console.log('submitting form...');
                _this.submitForm();
            });
        },

        uploadImage: function()
        {
            var _this = this,
                $imgInput = $('#image-upload');

            this.cache.$form.find('.loading').show();
            /* this.cache.$imgPreview.hide();
            this.cache.$imgOriginal.hide(); */
            $('.img-data').remove(); //remove any previous image data

            $.ajaxFileUpload(
            {
                url: _this.settings.uploadImageUrl,
                secureuri: false,
                fileElementId: 'image-upload',
                enctype:"multipart/form-data",
                contentType: "image/jpg",
                dataType: "text",
                success: function(data)
                {
                    console.log(data);
                   _this.cache.$imgUploadPic.attr('src',data);

                    //show img data
                    $('#remove-image-upload').show();

                },
                error: function(xhr, textStatus, errorThrown)
                {
                    console.log(xhr, textStatus, errorThrown + 'error');
                    return false;
                },
                complete: function()
                {
                    //hide loading image
                    _this.cache.$form.find('.loading').hide();
                    _this.cache.$imgOriginal.show(); 
                    _this.cache.$imgUploadPic.show();
                }
                
                
            });

        },

        removeImage: function()
        {
            this.cache.$imgPreview.attr('src','img/350x150.jpg');
            this.cache.$imgOriginal.attr('src','');
            $('.img-data').remove();
            $('#image-upload').val('');
            $('#remove-image-upload').hide();
            //todo: remove temp file using ajax/php
        },

        submitForm: function()
        { 
        }

    }

    $(D).ready( function()
    {
        //start up the form events
        W.JQUERY4U.AJAXIMAGEUPLOAD.init();
    });

})(jQuery,window,document);





jQuery.extend({

    objToString:function (obj)
    {
        var str = '<p>';
        for (var p in obj) {
            if (obj.hasOwnProperty(p)) {
                str += p + ' = ' + obj[p] + '\n<br/>';
            }
        }
        str += "</p>";
        return str;
    },

    handleError: function(s, xml, status, e)
    {
        //silent ???
        console.log('error occured...');
        console.log(s, xml, status, e);
    },

    createUploadIframe: function(id, uri)
    {
            //create frame
            var frameId = 'jUploadFrame' + id;

            if(window.ActiveXObject) {
                var io = document.createElement('<iframe id="' + frameId + '" name="' + frameId + '" />');
                if(typeof uri== 'boolean'){
                    io.src = 'javascript:false';
                }
                else if(typeof uri== 'string'){
                    io.src = uri;
                }
            }
            else {
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
    createUploadForm: function(id, fileElementId)
    {
        //create form
        var formId = 'jUploadForm' + id;
        var fileId = 'jUploadFile' + id;
        var form = $('<form action="" method="POST" name="' + formId + '" id="' + formId + '" enctype="multipart/form-data"></form>');
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

    ajaxFileUpload: function(s) {
        // TODO introduce global settings, allowing the client to modify them for all requests, not only timeout
        s = jQuery.extend({}, jQuery.ajaxSettings, s);
        var id = new Date().getTime()
        var form = jQuery.createUploadForm(id, s.fileElementId);
        var io = jQuery.createUploadIframe(id, s.secureuri);
        var frameId = 'jUploadFrame' + id;
        var formId = 'jUploadForm' + id;
        // Watch for a new set of requests
        if ( s.global && ! jQuery.active++ )
        {
            jQuery.event.trigger( "ajaxStart" );
        }
        var requestDone = false;
        // Create the request object
        var xml = {}
        if ( s.global )
            jQuery.event.trigger("ajaxSend", [xml, s]);
        // Wait for a response to come back
        var uploadCallback = function(isTimeout)
        {
            var io = document.getElementById(frameId);
            try
            {
                if(io.contentWindow)
                {
                     xml.responseText = io.contentWindow.document.body?io.contentWindow.document.body.innerHTML:null;
                     xml.responseXML = io.contentWindow.document.XMLDocument?io.contentWindow.document.XMLDocument:io.contentWindow.document;

                }else if(io.contentDocument)
                {
                     xml.responseText = io.contentDocument.document.body?io.contentDocument.document.body.innerHTML:null;
                    xml.responseXML = io.contentDocument.document.XMLDocument?io.contentDocument.document.XMLDocument:io.contentDocument.document;
                }
            }catch(e)
            {
                jQuery.handleError(s, xml, null, e);
            }
            if ( xml || isTimeout == "timeout")
            {
                requestDone = true;
                var status;
                try {
                    status = isTimeout != "timeout" ? "success" : "error";
                    // Make sure that the request was successful or notmodified
                    if ( status != "error" )
                    {
                        // process the data (runs the xml through httpData regardless of callback)
                        var data = jQuery.uploadHttpData( xml, s.dataType );
                        // If a local callback was specified, fire it and pass it the data
                        if ( s.success )
                            s.success( data, status );

                        // Fire the global callback
                        if( s.global )
                            jQuery.event.trigger( "ajaxSuccess", [xml, s] );
                    } else
                        jQuery.handleError(s, xml, status);
                } catch(e)
                {
                    status = "error";
                    jQuery.handleError(s, xml, status, e);
                }

                // The request was completed
                if( s.global )
                    jQuery.event.trigger( "ajaxComplete", [xml, s] );

                // Handle the global AJAX counter
                if ( s.global && ! --jQuery.active )
                    jQuery.event.trigger( "ajaxStop" );

                // Process result
                if ( s.complete )
                    s.complete(xml, status);

                jQuery(io).unbind()

                setTimeout(function()
                                    { try
                                        {
                                            $(io).remove();
                                            $(form).remove();

                                        } catch(e)
                                        {
                                            jQuery.handleError(s, xml, null, e);
                                        }

                                    }, 100)

                xml = null

            }
        }
        // Timeout checker
        if ( s.timeout > 0 )
        {
            setTimeout(function(){
                // Check to see if the request is still happening
                if( !requestDone ) uploadCallback( "timeout" );
            }, s.timeout);
        }
        try
        {
           // var io = $('#' + frameId);
            var form = $('#' + formId);
            $(form).attr('action', s.url);
            $(form).attr('method', 'POST');
            $(form).attr('target', frameId);
            if(form.encoding)
            {
                form.encoding = 'multipart/form-data';
            }
            else
            {
                form.enctype = 'multipart/form-data';
            }
            $(form).submit();

        } catch(e)
        {
            jQuery.handleError(s, xml, null, e);
        }
        if(window.attachEvent){
            document.getElementById(frameId).attachEvent('onload', uploadCallback);
        }
        else{
            document.getElementById(frameId).addEventListener('load', uploadCallback, false);
        }
        return {abort: function () {}};

    },

    uploadHttpData: function( r, type ) {
        var data = !type;
        data = type == "xml" || data ? r.responseXML : r.responseText;
        // If the type is "script", eval it in global context
        if ( type == "script" )
            jQuery.globalEval( data );
        // Get the JavaScript object, if JSON is used.
        if ( type == "json" )
            eval( "data = " + data );
        // evaluate scripts within html
        if ( type == "html" )
            jQuery("<div>").html(data).evalScripts();
            //alert($('param', data).each(function(){alert($(this).attr('value'));}));
        return data;
    }
});


function doRegister(){
	  var myObject = new Object();
	  myObject.userId=$('#siteUserid').val();
	  myObject.address = new Object();
	  myObject.address.address=$('#address').val();
	  myObject.address.location=$('#location').val();
	  myObject.address.city=$('#city').val();
	  myObject.address.state=$('#state').val();
	  myObject.address.pincode=$('#pincode').val();
	    
	  alert(JSON.stringify(myObject));
	  $.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/doRegisterPage2",
			data : JSON.stringify(myObject),
			contentType: 'application/json',

			beforeSend : function() {
				
			},
			success : function(response) {
				if(response ==  "register-alreadyexist" ){
					alert("User already exists. Please try again");
				}
				if(response == "register-emailnotentered"){
					alert("Email not entered. Please try again");
				}
				if(response == "register-passwordnotentered"){
					alert("Password not entered. Please try again");
				}
				
				if(response == "home"){
					location.href = "${pageContext.request.contextPath}/home";
				}
				
			
			},
			complete : function() {
			
			},
			error : function(e) {
				
			}
		});
	}
</script>






<!--=== Breadcrumbs ===-->
<div class="breadcrumbs margin-bottom-40">
	<div class="container">
		<h1 class="pull-left">Registration</h1>
		<ul class="pull-right breadcrumb">
			<li><a href="index.html">Home</a></li>
			<li><a href="">Pages</a></li>
			<li class="active">Registration</li>
		</ul>
	</div>
	<!--/container-->
</div>
<!--/breadcrumbs-->
<!--=== End Breadcrumbs ===-->

<!--=== Content Part ===-->
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="reg-page">
				<div class="reg-header">
					<h2>Register a new account</h2>
					<p>
						Already Signed Up? Click <a href="./login" class="color-green">Sign
							In</a> to login your account.
					</p>
				</div>

				<div id="main">


					<form method="post" id="upload-image-form">

						<h2>Upload Image Form</h2>

						<div class="cell">
							<div class="row requiredRow">
								<label id="image-upload-ariaLabel" for="picture"> Select
									Image:</label> <input type="file" size="40" name="image-upload"
									id="image-upload">
								<button id="remove-image-upload">
									<img src="resources/assets/img/user.jpg" id="image-upload-pic" 
									width="199" height="152"/> Remove
								</button>
							</div>
						</div>

						<!-- <div class="cell">
							<h2>Generated Image Thumbnail:</h2>
							<div id="image_preview_wrap">
								<img class="loading" alt="loading..." src="img/loading.gif">
								<img alt="picture" src="img/350x150.jpg" id="image_preview">
							</div>
						</div>

						<div class="cell">
							<h2>Saved Original Image:</h2>
							<div id="image_original_wrap">
								<img class="loading" alt="loading..." src="img/loading.gif">
								<img alt="The original uploaded image will appear here..."
									src="" id="image_original">
							</div>
						</div> -->


						<div class="cell lastcell">
							<input type="submit" value="Submit Form" class="submit-btn">
						</div>

					</form>

				</div>

				<input type="hidden" id="siteUserid" value='<c:out value="${siteUser.userId}"/>'>
				<label>Address</label> <input type="text" id="address"
				value='<c:out value="${userAddress.address}"/>'
					class="form-control margin-bottom-20"> <label>Location</label>
				<input type="text" id="location"
					class="form-control margin-bottom-20"> <label>City
					<span class="color-red">*</span>
				</label> <input type="text" id="city" class="form-control margin-bottom-20">

				<label>State</label> <input type="text" id="state"
					class="form-control margin-bottom-20"> <label>Pincode</label>
				<input type="text" id="pincode"
					class="form-control margin-bottom-20">


				<hr>

				<div class="row">
					<div class="col-lg-6">
						<label class="checkbox"> <input type="checkbox"> I
							read <a href="page_terms.html" class="color-green">Terms and
								Conditions</a>
						</label>
					</div>
					<div class="col-lg-6 text-right">
						<button class="btn-u" onclick="javascript:doRegister()">Save</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--/container-->
<!--=== End Content Part ===-->

<!-- Footer-->
<c:import url="../footer.jsp"></c:import>
