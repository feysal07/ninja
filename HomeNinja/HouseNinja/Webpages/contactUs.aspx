<%@ Page Title="" Language="C#" MasterPageFile="~/Webpages/MasterPage/Site.Master" AutoEventWireup="true" CodeBehind="contactUs.aspx.cs" Inherits="HouseNinja.Webpages.contactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="mainArea">
        <div id="mainContent">
            <div class="middleContent">
				<div id="profileErrors" style="display: none;"></div>
			<div class="form-horizontal">
			
		<div class="editProfileSection">
		<div class="small-header light-rule">Contact Us</div>
		<dl>
			<div class="control-group">
			<label class="control-label" for="firstName">First name</label>
			<div class="controls">
				<input type="text" id="txtName" name="Name" value="" class="short"><br>			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="lastName">Email</label>
			<div class="controls">
				<input type="text" id="txtemail" name="lastName" value="" class="short"><br></div>
		</div>
				</dl>
				<dl>
				
		<script language="javascript" type="text/javascript" src="./resources/countryState.js"></script><a name="addressDetails"></a><div class="control-group">
			<label class="control-label" for="city">Contact</label>
			<div class="controls">
				<input type="text" id="city" name="city" value="">			</div>
		</div>
		
						</dl>
		
				<dl>
		<div class="control-group">
			<label class="control-label" for="aboutMe">Your Message</label>
			<div class="controls">
				<textarea id="aboutMe" name="aboutMe"></textarea>			</div>
		</div>
			</dl>
		<div class="editProfileSectionClear"></div>
	</div>
				
	
		
	
			<div class="editProfileSection">
					<input id="updateBtn" type="submit" class="hzBtn primary " value="Send">
				</div>
			</div>
		</div>
	<div class="rightSideBar">
			</div>
</div>
	
		
	  <div id="mainContentSeparator"></div>
			</div>
		<div id="hzHoverCardContainer"></div>
		<img src="./resources/log" style="position: absolute; left: -100px; top: -100px;">

</asp:Content>
