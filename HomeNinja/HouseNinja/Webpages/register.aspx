<%@ Page Title="" Language="C#" MasterPageFile="~/Webpages/MasterPage/Site.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="HouseNinja.Webpages.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <script type="text/javascript">

       $(document).ready(function () {
            $("#uploadProfilPic").click(function () {

                $("#PhotoUpload").click();

            });

            $('input[type=file]').bind('change', function () {
                var str = "";
                str = $(this).val();
                $("#filename").text(str);
            }).change();

        });

    </script>
    <asp:FileUpload runat="server" ID="PhotoUpload" ClientIDMode="Static" CssClass="hide-fields"  />
    <div id="mainArea">
        <div id="mainContent">
            <div class="container">
                <div class="leftSideBar">
                    <div class="profilePic" style="min-height:400px; min-width:200px;">
                       <%-- <a href="user/bharat-verma">--%>
                            <%--<img id="mainUserProfilePic" src="../resources/images/bharat_verma().jpg">--%>
                              <asp:Image runat="server"  ID="mainUserProfilePic" CssClass="mainUserProfilePic" Height="300px" Width="200px"/>
                        <%--</a>--%>
                          
                           <%--<asp:Label ID="Label2" runat="server" Text="Photo upload" />--%>
                               <div style="width:200px">
                                <div style="width:90px;float:left">  <input type="button" class="vpb_general_button" title="upload"  id="uploadProfilPic" value="Upload"/></div> 
                                 <div style="width:90px;float:right"><asp:Button runat="server" OnClick="btnPreview_Click" ID="btnPhotoPreview" CssClass="vpb_general_button" ClientIDMode="Static" Text="Preview" /></div>
                                </div>
                                <label id="filename"></label>
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
                                    <input type="text" id="txtUserName" runat="server" />

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
                                    <input type="text" id="txtEmail" name="email" runat="server" class="short"><br>
                                    <small>(private)</small>
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label" for="gender">Gender</label>
                                <div class="controls">
                                    <asp:RadioButtonList runat="server" ID="rdGender">
                                        <asp:ListItem Text="Male" Value="M"></asp:ListItem>
                                        <asp:ListItem Text="Female" Value="F"></asp:ListItem>

                                    </asp:RadioButtonList>
                                    <small>(private)</small>
                                </div>
                            </div>
                        </div>
                        <div class="editProfileSectionBtns">
                          <%--  <div class="control-group">
                                <label class="control-label"></label>
                                <div class="controls"><a class="btn btn-small" href="" ref="nofollow">Change User Name</a><a class="btn btn-small" id="editLinkBtn" href="" ref="nofollow">Change Password</a></div>
                            </div>--%>
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
                                    <asp:DropDownList ID="ddlState" runat="server" 
                                        OnSelectedIndexChanged="ddlState_SelectedIndexChanged" AutoPostBack="true">
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
                                <label class="control-label" for="city">City</label>
                                <div class="controls">
                                   <input type="text" id="txtPinCode" name="pincode"  runat="server"></div>
                                    
                                </div>
                            </div>

                            <div class="control-group">
                                <label class="control-label" for="country">Contact No</label>
                                <div class="controls">
                                <input type="text" id="txtcontactNo" name="contact" runat="server" class="short"><br>
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
                                    <textarea id="txtaboutNewProj" name="aboutMyHouse" runat="server"></textarea>
                                </div>
                            </div>
                        </dl>
                        <div class="editProfileSectionClear"></div>
                     <div class="editProfileSection">
                        <div class="small-header light-rule">Services</div>
                        <dl>
                            <div class="control-group">
                                <label class="control-label" for="education">Job Types</label>
                                <div class="controls">
                                    <asp:CheckBoxList ID="chkJobCat" runat="server" OnSelectedIndexChanged="chkJobCat_SelectedIndexChanged" 
                                        AutoPostBack="true" RepeatDirection="Horizontal" RepeatColumns="3"></asp:CheckBoxList>
                                </div>
                            </div>
                            
                         </dl>
                         <dl>
                            <div class="control-group">
                                <label class="control-label" for="education">Job Sub Categories</label>
                                <div class="controls">
                                    <asp:CheckBoxList ID="chkJobSubCat" runat="server" 
                                        RepeatDirection="Horizontal" RepeatColumns="3"></asp:CheckBoxList>
                                </div>
                            </div>
                            
                         </dl>
                          <div class="editProfileSectionClear"></div>
                       </div>

                     <div class="editProfileSection">
                        <div class="small-header light-rule">Advance Setting</div>
                        <dl>
                            <div class="control-group">
                                <%--<label class="control-label" for="education">Job Types</label>--%>
                                <div class="controls">
                                 <asp:CheckBoxList ID="chkAdvSettings" runat="server" 
                                        RepeatDirection="Horizontal" RepeatColumns="2"></asp:CheckBoxList>
                                </div>
                            </div>
                            
                         </dl>
                          <div class="editProfileSectionClear"></div>
                       </div>
                       <div class="editProfileSection">
                        <%--<input id="updateBtn" type="submit" class="hzBtn primary " value="Update">--%>
                        <asp:Button runat="server" ID="updateBtn" CssClass="vpb_general_button" Text="Update" OnClick="updateBtn_Click"/>
                        <asp:Button runat="server" ID="btnSkip" CssClass="vpb_general_button" Text="Skip" />
                       <div class="editProfileSectionClear"></div>
                       </div>



                    </div>
                   
                    
                 
                </div>
                <div class="rightSideBar"></div>
            </div>
            <div id="mainContentSeparator"></div>
        </div>
    <asp:HiddenField runat="server" ID="hdnUserType"/>

</asp:Content>
