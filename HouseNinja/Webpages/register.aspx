<%@ Page Title="" Language="C#" MasterPageFile="~/Webpages/MasterPage/Site.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="HouseNinja.Webpages.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="mainArea">
        <div id="mainContent">
            <div class="container">
                <div class="leftSideBar">
                    <div class="profilePic">
                        <a href="user/bharat-verma">
                            <%--<img id="mainUserProfilePic" src="../resources/images/bharat_verma().jpg">--%>
                            
                             <asp:Image runat="server"  ID="mainUserProfilePic" CssClass="mainUserProfilePic" Height="50px" Width="50px"/>
                        </a>
                           <asp:Label ID="Label2" runat="server" Text="Photo upload" />
                                <asp:FileUpload runat="server" ID="PhotoUpload" />
                                <asp:Button runat="server" OnClick="btnPreview_Click" ID="btnPhotoPreview" Text="Preview" />
                        <%--<a class="editProfilePicLink " href="" onclick="">Change picture</a>--%>
                    </div>
                    <!--	<div class="sidebar collapsible"><div class="sidebar-header">Your Houzz					<span class="sidebar-icon collapse-icon toggle"></span>					
				</div><div class="sidebar-body">		<ul id="">
		<li class="sidebar-item">
			<a class="sidebar-item-label" href="user/bharat-verma">Overview</a>
					</li>
		<li class="sidebar-item">
			<a class="sidebar-item-label" href="ideabooks/users/bharat_verma">Ideabooks</a>
					</li>
		<li class="sidebar-item">
			<a class="sidebar-item-label" href="photos/users/bharat_verma">Photos</a>
					</li>
		<li class="sidebar-item">
			<a class="sidebar-item-label" href="messages">Messages</a>
					</li>
		<li class="sidebar-item">
			<a class="sidebar-item-label" href="recommend/bharat_verma">Recommended Photos</a>
					</li>
		<li class="sidebar-item">
			<a class="sidebar-item-label" href="settingsAddresses">Shipping Addresses</a>
					</li>
		<li class="sidebar-item">
			<a class="sidebar-item-label" href="settingsCreditCards">Payment Methods</a>
					</li>
		<li class="sidebar-item">
			<a class="sidebar-item-label" href="browseOrders">Your Purchases</a>
					</li>
				</ul>
		</div>
		</div>-->
                </div>
                <div class="middleContent">
                    <div id="profileErrors" style="display: none;"></div>
                    <div class="editProfileSection">
                        <div class="small-header light-rule">Account Details</div>
                        <div>
                            <div class="control-group">
                                <label class="control-label">User Name</label>
                                <div class="controls">
                                    <!--<label class="plain-text">bharat_verma</label>-->
                                    <input type="text" id="userName" runat="server" />

                                </div>
                            </div>
                            <!--<div class="control-group">
			<label class="control-label">Public profile page</label>
			<div class="controls">
                <label class="plain-text">user/bharat-verma</label>

			</div>
		</div>-->
                            <div class="control-group">
                                <label class="control-label" for="email">Email</label>
                                <div class="controls">
                                    <input type="text" id="txtemail" name="email" runat="server" class="short"><br>
                                    <small>(private)</small>
                                </div>
                            </div>
                        </div>
                        <div class="editProfileSectionBtns">
                            <div class="control-group">
                                <label class="control-label"></label>
                                <div class="controls"><a class="btn btn-small" href="" ref="nofollow">Change User Name</a><a class="btn btn-small" id="editLinkBtn" href="" ref="nofollow">Change Password</a></div>
                            </div>
                        </div>
                        <div class="editProfileSectionClear"></div>
                    </div>
                    <div class="editProfileSection">
                        <div class="small-header light-rule">Profile Information</div>
                        <dl>
                            <div class="control-group">
                                <label class="control-label" for="firstName">First name</label>
                                <div class="controls">
                                    <input type="text" id="txtfirstName" name="firstName" runat="server" class="short"><br>
                                    <small>(publicly displayed)</small>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="lastName">Last name</label>
                                <div class="controls">
                                    <input type="text" id="txtlastName" name="lastName" runat="server" class="short"><br>
                                    <small>(publicly displayed)</small>
                                </div>
                            </div>
                        </dl>
                        <dl>

                            <div class="control-group">
                                <label class="control-label" for="state">State</label>
                                <div class="controls">
                                    <asp:DropDownList ID="ddlState" runat="server" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label" for="city">City</label>
                                <div class="controls">
                                    <!--<input type="text" id="txtcity" name="city"  runat="server"></div>-->
                                    <asp:DropDownList ID="ddlCities" runat="server">
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label" for="country">Country</label>
                                <div class="controls">
                                <label class="plain-text">India</label>
                                </div>
                            </div>

                        </dl>

                        <dl>
                            <div class="control-group">
                                <label class="control-label" for="aboutMe">About me</label>
                                <div class="controls">
                                    <textarea id="txtaboutMe" name="aboutMe" runat="server"></textarea>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="style">My favorite style</label>
                                <div class="controls">
                                    <input type="text" id="style" name="style" value="" runat="server">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="aboutMyHouse">My next house project</label>
                                <div class="controls">
                                    <textarea id="txtaboutMyHouse" name="aboutMyHouse" runat="server"></textarea>
                                </div>
                            </div>
                        </dl>
                        <div class="editProfileSectionClear"></div>
                    </div>
                    <a name="socialLinks"></a>
                    <a name="fbPreferences" style="display: block;"></a>

                    <a name="emailPreferences"></a>
                    <!--<div class="editProfileSection">
		<div class="small-header light-rule">Advanced Settings  <span id="advancedSettingsButton" class="editProfileExpandButton">[ <a href="javascript:;" class="colorLink" onclick="expandDiv(&quot;advancedSettings&quot;)">expand</a> ]</span></div>
		<div id="advancedSettings" style="display:block;">
			<div class="advancedSettingsContainer">
				<div class="control-group pushNotifControlGroup">
			<label class="control-label">Push notification</label>
			<div class="controls"><label class="plain-text" id="pushNotifSection"><span class="notSupported">Please adjust your notification preferences through the Safari preferences -&gt; Notifications pane</span><a id="enablePushNotifLink" href="javascript:;">Enable push notifications for this Mac</a></label></div>
		</div>
				<input type="hidden" name="containsPreferences" value="yes">
		<div class="control-group">
			<label class="control-label">Email notification</label>
			<div class="controls"><label class="checkbox">
	<input name="newsletter" type="checkbox" classname="checkbox" checked="checked" value="2">Subscribe to the Houzz Newsletter.</label>
		<input name="marketing" type="hidden" value="4"><br>Send me an email when:<br><label class="checkbox">
	<input name="notify_ideabook_comment" type="checkbox" checked="checked" value="">someone comments on my ideabook<br></label>
<label class="checkbox">
	<input name="notfiy_answers_to_questions" type="checkbox" checked="checked" value="">someone comments on my post<br></label>
<label class="checkbox">
	<input name="notfiy_answers_to_answers" type="checkbox" checked="checked" value="">someone replies to my comment<br></label>
<label class="checkbox">
	<input name="notify_likes_received_on_comment" type="checkbox" checked="checked" value="">someone likes my discussion<br></label>
<label class="checkbox">
	<input name="notify_likes_received_on_galleries" type="checkbox" checked="checked" value="">someone likes my ideabook<br></label>
<label class="checkbox">
	<input name="notify_likes_received_on_reviews" type="checkbox" checked="checked" value="">someone likes a review that I wrote<br></label>
<label class="checkbox">
	<input name="notify_thanks_received_on_comment" type="checkbox" checked="checked" value="">someone thanks me for my comment<br></label>
<label class="checkbox">
	<input name="notfiy_questions_on_pictures" type="checkbox" checked="checked" value="">someone asks a question about one of my photos<br></label>
<label class="checkbox">
	<input name="notfiy_new_followers" type="checkbox" checked="checked" value="">someone follows me<br></label>
<label class="checkbox">
	<input name="nofity_new_badges_received" type="checkbox" checked="checked" value="">I earn a badge<br></label>
<label class="checkbox">
	<input name="notifyMessage" type="checkbox" checked="checked" value="">someone messages me</label>
</div>
		</div>
		<div class="control-group">
			<label class="control-label">My Profile Page</label>
			<div class="controls"><div>The following will be visible on my public profile page, and shared with my followers:</div><label class="checkbox">
		<input name="pp_galleries" type="checkbox" checked="checked" value="">My public ideabooks</label>
	<label class="checkbox">
		<input name="pp_photos" type="checkbox" checked="checked" value="">My uploaded photos and projects</label>
	<label class="checkbox">
		<input name="pp_questions" type="checkbox" checked="checked" value="">My discussions</label>
	<label class="checkbox">
		<input name="pp_social_links" type="checkbox" checked="checked" value="">My social media profiles</label>
	<label class="checkbox">
		<input name="pp_followers" type="checkbox" checked="checked" value="">People who follow me</label>
	<label class="checkbox">
		<input name="pp_followees" type="checkbox" checked="checked" value="">People I follow</label>
	</div>
		</div>
		<div class="control-group">
			<label class="control-label">Privacy settings</label>
			<div class="controls"><label class="checkbox">
		<input name="allowFollow" type="checkbox" classname="checkbox" checked="checked" value="">Allow users to follow my profile
</label></div>
		</div>
		<div class="control-group">
			<label class="control-label">Other Settings</label>
			<div class="controls"><label class="checkbox">
	<input name="addtoibk_confirmdlg" type="checkbox" checked="checked" value="">Enable add to ideabook confirmation</label></div>
		</div>
					</div>
			<div class="deactivateContainer"><a class="deactivateAccountLink colorLink" href="deactivateAccount">Deactivate Account</a></div>		</div>
		<div class="editProfileSectionClear"></div>
	</div>-->
                    <div class="editProfileSection">
                        <%--<input id="updateBtn" type="submit" class="hzBtn primary " value="Update">--%>
                        <asp:Button runat="server" ID="updateBtn" CssClass="hzBtn primary" Text="Update" OnClick="updateBtn_Click"/>
                    </div>

                </div>
                <div class="rightSideBar"></div>
            </div>
            <div id="mainContentSeparator"></div>
        </div>
    </div>

</asp:Content>
