<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Search.ascx.cs" Inherits="HouseNinja.Webpages.CustomControls.Search" %>

<%--<center>
<div id="navSearch" class="navBlock searchMid">
                  <div class="navInputs">
                     <div class="navSearchInputShell"></div>
                     <input id="navSearchInput" value="" name="search" placeholder="Search professionals..." class="" style="">
                     <div id="navSearchType">
                        <select id="navSearchTypeSelect">
                           <option value="0">Photos</option>
                           <option value="">Products</option>
                           <option value="2">Ideabooks</option>
                           <option value="3">BLOGS</option>
                           <option value="4">Professionals</option>
                           <option value="5">Users</option>
                        </select>
                        <div id="navSearchTypeButton" etype="0"><span class="">Professionals</span></div>
                     </div>
                     <input id="navSearchSubmitButton" type="button" class="hzBtn primary " value="Search" onclick="">
                     <input class="navSearchSubmit" type="submit">
                  </div>
                  <div id="navSearchAutoSuggestContainer" class="autoSuggContainer" style="display: none;"></div>
</div>
    </center>--%>


<style>


</style>
<%--<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>--%>
<script type="text/javascript">
    jQuery(document).ready(function () {

        $("#searchDropdownBox").change(function () {
            var Search_Str = $(this).val();
            //replace search str in span value
            $("#nav-search-in-content").text(Search_Str);
        });

        //download script
        jQuery('.s_download').on("click", function (e) {
            var semail = jQuery("#itzurkarthi_email").val();
            if (semail == '') {
                alert('Enter Email');
                return false;
            }
            var str = "sub_email=" + semail
            jQuery.ajax({
                type: "POST",
                url: "download.php",
                data: str,
                cache: false,
                success: function (htmld) {
                    jQuery('#down_update').html(htmld);
                }
            });
        });
    });
</script>
<div class="search_bar">
	<label id="nav-search-label">Search</label>
    		<span class=" nav-facade-active" id="nav-search-in" style="width: auto;">
              <span data-value="search-alias=aps" id="nav-search-in-content" style="width: 60px; overflow: visible;">
                All Books
              </span>
              <span class="nav-down-arrow nav-sprite"></span>
              <select title="Search in" class="searchSelect" id="searchDropdownBox" name="books_category"  style="top: 0px;">
				  <option value="All Books" selected="selected">All Books</option>
				  <option value="Arts & Photography" title="Arts & Photography">Arts & Photography</option>
				  					<option value="Biographies" title="Biographies & Memoirs">Biographies</option>
				  					<option value="Business & Investing" title="Business & Investing">Business & Investing</option>
				  					<option value="Childrens Books" title="Children's Books">Children Books</option>
				  					<option value="Comics & Graphic Novels" title="Comics & Graphic Novels">Comics & Graphic Novels</option>
				  					<option value="Adventure" title="Adventure">Adventure</option>
				  					<option value="Education & Reference" title="Education & Reference">Education & Reference</option>
				  					<option value="Parenting & Relationships" title="Parenting & Relationships">Parenting & Relationships</option>
				  					<option value="Science Fictions" title="Science Fictions">Science Fictions</option>
				  					<option value="Teen & Young Adult" title="Teen & Young Adult">Teen & Young Adult</option>
			  </select>
            </span>
            <div class="nav-searchfield-outer nav-sprite">
              <input type="text" autocomplete="off" name="field-keywords" placeholder="Eg : Author Name, Book Name" title="Search For" id="twotabsearchtextbox" style="padding-right: 1px;">
            </div>
            <div class="nav-submit-button">
              <input type="submit" title="Go" class="nav-submit-input" value="Go">
            </div>
</div>