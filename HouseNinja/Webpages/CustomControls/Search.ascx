<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Search.ascx.cs" Inherits="HouseNinja.Webpages.CustomControls.Search" %>

<center>
<div id="navSearch" class="navBlock searchMid">
                  <div class="navInputs">
                     <div class="navSearchInputShell"></div>
                     <input id="navSearchInput" value="" name="search" placeholder="Search professionals..." class="searchPlaceholder" style="">
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
    </center>