<%@ Page Title="" Language="C#" MasterPageFile="~/Webpages/MasterPage/Site.Master" AutoEventWireup="true" CodeBehind="contactUs.aspx.cs" Inherits="HouseNinja.Webpages.contactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
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
                        <label class="control-label" for="firstName">Name</label>
                        <div class="controls">
                           <input type="text" id="txtName" name="Name" value="" class="short"  runat="server"><br>			
                        </div>
                     </div>
                     <div class="control-group">
                        <label class="control-label" for="lastName">Email</label>
                        <div class="controls">
                           <input type="text" id="txtEmail" name="lastName" value="" class="short" runat="server"><br>
                        </div>
                     </div>
                  </dl>
                  <dl>
                     <a name="addressDetails"></a>
                     <div class="control-group">
                        <label class="control-label" for="city">Subject</label>
                        <div class="controls">
                           <input type="text" id="txtSubject" name="subject" value=""  runat="server">
                        </div>
                     </div>
                  </dl>
                  <dl>
                     <div class="control-group">
                        <label class="control-label" for="aboutMe">Your Message</label>
                        <div class="controls">
                           <textarea id="txtMessage" name="aboutMe" runat="server"></textarea>			
                        </div>
                     </div>
                  </dl>
                  <div class="editProfileSectionClear"></div>
               </div>
               <div class="editProfileSection">
                  <%--<input id="submit" type="submit" class="hzBtn primary " value="Send">--%>
                  <asp:Button ID="submit" runat="server" CssClass="hzBtn primary" Text="Send" OnClick="btnSend_Click" />
               </div>
                <div class="editProfileSection">
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
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