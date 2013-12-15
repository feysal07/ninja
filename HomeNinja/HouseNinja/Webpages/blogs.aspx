<%@ Page Title="" Language="C#" MasterPageFile="~/Webpages/MasterPage/Site.Master" AutoEventWireup="true" CodeBehind="blogs.aspx.cs" Inherits="HouseNinja.Webpages.blogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="mainArea">
        <div id="mainContent">
            <div class="container">
                <div class="leftSideBar">
                    <div class="sidebar">
                        <div class="sidebar-header">Filter by Topic</div>
                        <div class="sidebar-body">
                            <ul id="">
                                <li class="sidebar-item">
                                    <a href="" class="sidebar-item-label">All Topics</a>
                                </li>
                                <li class="sidebar-item">
                                    <a href="" class="sidebar-item-label">Design Dilemma</a>
                                </li>
                                <li class="sidebar-item">
                                    <a href="" class="sidebar-item-label">Before &amp; After</a>
                                </li>
                                <li class="sidebar-item">
                                    <a href="" class="sidebar-item-label">Photo Questions</a>
                                </li>
                                <li class="sidebar-item selected">
                                    <a href="" class="sidebar-item-label">Using Houzz</a>
                                </li>
                                <li class="sidebar-item">
                                    <a href="" class="sidebar-item-label">Other</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <%--<div class="sidebar"><div class="sidebar-header">Filter by Activity</div><div class="sidebar-body">		<ul id="Ul1">
		<li class="sidebar-item selected">
			<a href="" class="sidebar-item-label">Latest Activity</a>
					</li>
		<li class="sidebar-item">
			<a href="" class="sidebar-item-label">Featured</a>
					</li>
		<li class="sidebar-item">
			<a href="" class="sidebar-item-label">Popular</a>
					</li>
		<li class="sidebar-item">
			<a href="" class="sidebar-item-label">New</a>
					</li>
				</ul>
		</div>
		</div>	--%>
                </div>
                <div class="middleContent">
                    <h2 class="askQuestionTitle large-header top">What are you working on?</h2>
                    <div class="askQuestionSubTitle">Get help for your projects, share your finds and show off your Before and After.</div>
                    <div id="hzQuestionAskForm">
                        <form class="stdForm" method="post" enctype="multipart/form-data" id="editQuestion" name="editQuestion" action="" onsubmit="">

                            <div id="editQuestionMainDiv">
                                <div class="errorMsg" style="display: none;"></div>
                                <div class="editQuestionTopic">
                                    <span class="dropdown-wrapper">
                                      <asp:DropDownList runat="server" ID="ddlPostType">
                                           <%-- <asp:ListItem Value="">Design Dilemma</asp:ListItem>
                                            <asp:ListItem Value="2">Before &amp; After</asp:ListItem>
                                            <asp:ListItem Value="3">Using Houzz</asp:ListItem>
                                            <asp:ListItem Value="4">Other</asp:ListItem>
                                            <asp:ListItem Value="5">Make this a Poll</asp:ListItem>--%>
                                        </asp:DropDownList>
                                        <i></i>
                                    </span>
                                </div>
                                <input id="txtEditQuestionTitle" type="text" runat="server" placeholder="Example title: &quot;Need help for my kitchen&quot; or &quot;Our new patio!&quot;" maxlength="70" name="title" value="">
                                <div class="counter tiny-text">Characters Left <span class="countdown">70</span></div>
                                <div class="editQuestionBodyContainer">
                                    <textarea id="txtEditQuestionBody" runat="server" placeholder="Tell us the details here. If you have them, be sure to attach photos!" name="body" maxlength="3000" style="overflow: hidden; word-wrap: break-word; resize: horizontal; height: 80px;"></textarea>
                                    <div class="generatedPhotoCtn"></div>
                                    <div style="clear: both"></div>
                                    <div class="extraEditQuestion">
                                        <!--		<a id="expandFileInputs" class="colorLink" href="#">Click to attach photos</a>-->
                                        <a class="hzBtn noFrameButton addImageButton  " href="javascript:;" title="Attach images to the question/poll" id="expandFileInputs"><span id="expandFileInputs_icon__" class="whitebuttonIcon  buttonIconAttach"></span><span id="expandFileInputs_label__" class="small-text label colorLink">Attach Images</span></a>
                                        <div class="editQuestionFormSection" id="editQuestionAddPhotoButtonBox" style="display: none">
                                            <input class="editQuestionFileInput" type="file" accept="image/*" name="image">
                                            <input style="display: none" class="editQuestionFileInput" type="file" accept="image/*" name="image2">
                                            <input style="display: none" class="editQuestionFileInput" type="file" accept="image/*" name="image3">
                                            <input style="display: none" class="editQuestionFileInput" type="file" accept="image/*" name="image4">
                                        </div>
                                        <table class="editQuestionFormSection" id="editQuestionAddChoicesContainer" style="display: none; margin-top: 5px">
                                            <thead>
                                                <tr>
                                                    <td colspan="2"><i>Enter text, paste a link to a photo or product page on Houzz or upload an image.</i></td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="choiceLine">
                                                    <td>
                                                        <input type="text" class="optionInput" name="newOption" placeholder="Add option: enter text or paste a Houzz link.">
                                                    </td>
                                                    <td>
                                                        <input type="file" class="optionFileInput" name="newOptionImage">
                                                        <input type="hidden" class="optionHouseIdInput" name="newOptionHouseId">
                                                        <div class="houseThumb">
                                                            <img width="30" height="30"><a href="javascript:;" class="removeThumb"></a></div>
                                                    </td>
                                                </tr>
                                                <tr class="choiceLine">
                                                    <td>
                                                        <input type="text" class="optionInput" name="newOption2" placeholder="Add option: enter text or paste a Houzz link.">
                                                    </td>
                                                    <td>
                                                        <input type="file" class="optionFileInput" name="newOptionImage2">
                                                        <input type="hidden" class="optionHouseIdInput" name="newOptionHouseId2">
                                                        <div class="houseThumb">
                                                            <img width="30" height="30"><a href="javascript:;" class="removeThumb"></a></div>
                                                    </td>
                                                </tr>
                                                <tr class="choiceLine">
                                                    <td>
                                                        <input type="text" class="optionInput" name="newOption3" placeholder="Add option: enter text or paste a Houzz link.">
                                                    </td>
                                                    <td>
                                                        <input type="file" class="optionFileInput" name="newOptionImage3">
                                                        <input type="hidden" class="optionHouseIdInput" name="newOptionHouseId3">
                                                        <div class="houseThumb">
                                                            <img width="30" height="30"><a href="javascript:;" class="removeThumb"></a></div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <%--<input id="editQuestionSubmitBtn" type="submit" class="hzBtn primary " value="Post" >--%>
                                <asp:Button ID="editQuestionSubmitBtn" runat="server" Text="Post" OnClick="editQuestionSubmitBtn_Click" />
                            </div>
                        </form>
                        <div style="clear: both"></div>
                    </div>
                    <h class="questionsIndexInfo">5,536 Discussions</h>
                    <div class="browseListBody">

                        <asp:Repeater ID="rptBlogs" runat="server">
                            <ItemTemplate>
                                <div class="whiteCard questionLine " style="min-height:135px;min-width:100%">
                            <div class="questionPhoto">
                                <a href="">
                                    <img class="questionImg" width="35" height="35" src="./resources/46c29aa50266d428_0702-w35-h35-b0-p0--home-design.jpg">
                                </a>

                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </div>
                            <div class="questionDetails small-text">
                                <div class="question-meta-infos" >
                                    <div class="questionTitle normal-header"><a class="colorLink" href=""> <%# Eval("postTitle") %></a></div>
                                    <div class="questionInfo">
                                        <div class="question-authorship-strip small-text"><a class="hz-username hzHouzzer hzHCUserName " href="" data-type="profile" data-id="diannejay"><%# Eval("postAuthor") %></a> | <span class="hz-date">
                                            <abbr><%# Eval("postDate") %></abbr></span> <span class="question-topic">in <a class="colorLink" href="http://www.houzz.com/discussions/design-dilemma"><%# Eval("postType") %></a></span></div>
                                        <%--<a class="qMetaComment" href="" title="Write a comment">
                                            <img class="questionIcons iconSpeechBubble" src="./resources/spacer.gif">5</a>			
                                        <a class="qMetaBookmark" href="javascript:" title="Add to bookmarks" fop="f" fty="q" fid="698579">
                                                <img class="questionIcons iconBookmark" src="./resources/spacer.gif">0</a>--%>
                                    </div>
                                </div>
                                <div class="question-latest-activity">
                                    <div class="questionUserImageDiv">
                                        <a href="">
                                            <img width="30" height="30" class="hzHouzzer hzHCUserImage" data-type="profile" data-id="cdrdesign" src="./resources/user_0.gif"></a>
                                    </div>
                                    <div class="questionExcerpt">
                                        <%--<a class="hz-username hzHouzzer hzHCUserName qUserName" href="" data-type="profile" data-id="cdrdesign">cdrdesign</a> | <span class="hz-date"></span>--%>
                                        <div>
                                                <a class="qExcerptText" href=""><%# Eval("postContent") %></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="questionSeparator"></div>
                        </div>

                            </ItemTemplate>
                            
                        </asp:Repeater>
                    </div>

                    <div class="rightSideBar"></div>
                </div>
                <!-- end of container-->


                <div id="mainContentSeparator"></div>
            </div>

        </div>
    </div>


    <textarea tabindex="-" style="position: absolute; top: -9999px; left: -9999px; right: auto; bottom: auto; border: 0px; box-sizing: content-box; word-wrap: break-word; overflow: hidden; height: 0px !important; min-height: 0px !important; font-family: proxima-nova, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 4px; font-weight: normal; font-style: normal; letter-spacing: normal; text-transform: none; word-spacing: 0px; text-indent: 0px; line-height: 20px; width: 638px;" class="autosizejs"></textarea><img src="./resources/log" style="position: absolute; left: -00px; top: -00px;">
</asp:Content>
