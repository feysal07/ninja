<%@ Page Title="" Language="C#" MasterPageFile="~/Webpages/MasterPage/Site.Master" AutoEventWireup="true" CodeBehind="blogs.aspx.cs" Inherits="HouseNinja.Webpages.blogs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="mainArea"> 
        <div id="mainContent">
		<div class="container">
	<div class="leftSideBar"></div>
	<div class="middleContent">
						<h2 class="askQuestionTitle large-header top">What are you working on?</h2>
				<div class="askQuestionSubTitle">Get help for your projects, share your finds and show off your Before and After.</div>
				<div id="hzQuestionAskForm">
						<form class="stdForm" method="post" enctype="multipart/form-data" id="editQuestion" name="editQuestion" action="" onsubmit="">
					
					<div id="editQuestionMainDiv">
				<div class="errorMsg" style="display:none;"></div>
						<div class="editQuestionTopic">
						<span class="dropdown-wrapper">
			<%--<select class="dropdown" id="editQuestionTopicBox" name="topic">&gt;
			<option value="-">Select your topic</option>
					    	<option value="5" selected="">Design Dilemma</option>
		    			    	<option value="5">Before &amp; After</option>
		    			    	<option value="">Using Houzz</option>
		    			    	<option value="2">Other</option>
		    				<option value="00">Make this a Poll</option>
						</select>
			--%>
                            
            <asp:DropDownList runat="server" ID="ddlPostType">
                <asp:ListItem  Value="">Design Dilemma</asp:ListItem>
                <asp:ListItem  Value="2">Before &amp; After</asp:ListItem>
                <asp:ListItem  Value="3">Using Houzz</asp:ListItem>
                <asp:ListItem  Value="4">Other</asp:ListItem>
                <asp:ListItem  Value="5">Make this a Poll</asp:ListItem>
            </asp:DropDownList>                
            <i></i>
			</span>
					</div>
				<input id="txtEditQuestionTitle" type="text" runat="server" placeholder="Example title: &quot;Need help for my kitchen&quot; or &quot;Our new patio!&quot;" maxlength="70" name="title" value="">
                        <div class="counter tiny-text">Characters Left <span class="countdown">70</span></div>
		<div class="editQuestionBodyContainer">		
            <textarea id="txtEditQuestionBody" runat="server" placeholder="Tell us the details here. If you have them, be sure to attach photos!" name="body" maxlength="3000" style="overflow: hidden; word-wrap: break-word; resize: horizontal; height: 80px;"></textarea>
            <div class="generatedPhotoCtn"></div><div style="clear:both"></div>
		                <div class="extraEditQuestion">	
				<!--		<a id="expandFileInputs" class="colorLink" href="#">Click to attach photos</a>-->
		<a class="hzBtn noFrameButton addImageButton  " href="javascript:;" title="Attach images to the question/poll" id="expandFileInputs"><span id="expandFileInputs_icon__" class="whitebuttonIcon  buttonIconAttach"></span><span id="expandFileInputs_label__" class="small-text label colorLink">Attach Images</span></a>		<div class="editQuestionFormSection" id="editQuestionAddPhotoButtonBox" style="display:none">
			<input class="editQuestionFileInput" type="file" accept="image/*" name="image">
			<input style="display:none" class="editQuestionFileInput" type="file" accept="image/*" name="image2">
			<input style="display:none" class="editQuestionFileInput" type="file" accept="image/*" name="image3">
			<input style="display:none" class="editQuestionFileInput" type="file" accept="image/*" name="image4">
		</div>
								<table class="editQuestionFormSection" id="editQuestionAddChoicesContainer" style="display:none;margin-top:5px">
			<thead><tr>
					<td colspan="2"><i>Enter text, paste a link to a photo or product page on Houzz or upload an image.</i></td>
			</tr></thead>
									<tbody><tr class="choiceLine">
							<td>
								<input type="text" class="optionInput" name="newOption" placeholder="Add option: enter text or paste a Houzz link.">
							</td>
							<td>
								<input type="file" class="optionFileInput" name="newOptionImage">
								<input type="hidden" class="optionHouseIdInput" name="newOptionHouseId">
								<div class="houseThumb"><img width="30" height="30"><a href="javascript:;" class="removeThumb"></a></div>
							</td>
						</tr>
												<tr class="choiceLine">
							<td>
								<input type="text" class="optionInput" name="newOption2" placeholder="Add option: enter text or paste a Houzz link.">
							</td>
							<td>
								<input type="file" class="optionFileInput" name="newOptionImage2">
								<input type="hidden" class="optionHouseIdInput" name="newOptionHouseId2">
								<div class="houseThumb"><img width="30" height="30"><a href="javascript:;" class="removeThumb"></a></div>
							</td>
						</tr>
												<tr class="choiceLine">
							<td>
								<input type="text" class="optionInput" name="newOption3" placeholder="Add option: enter text or paste a Houzz link.">
							</td>
							<td>
								<input type="file" class="optionFileInput" name="newOptionImage3">
								<input type="hidden" class="optionHouseIdInput" name="newOptionHouseId3">
								<div class="houseThumb"><img width="30" height="30"><a href="javascript:;" class="removeThumb"></a></div>
							</td>
						</tr>
												</tbody></table>
		</div>
				</div>		<%--<input id="editQuestionSubmitBtn" type="submit" class="hzBtn primary " value="Post" >--%>
                        <asp:Button id="editQuestionSubmitBtn" runat="server" Text="Post" OnClick="editQuestionSubmitBtn_Click"/>
					</div>		
		</form>
						<div style="clear:both"></div>
				</div>			<h class="questionsIndexInfo">5,536 Discussions</h><a class="noHoverLink rssLink" type="application/rss+xml" rel="alternate" title="Discussions RSS" href="http://www.houzz.com/getQuestions/new/out-rss">
			<img class="rssButton" src="./resources/spacer.gif"><span class="rssText small-text">RSS</span></a>		<div class="browseListBody">
				
				<div class="whiteCard questionLine ">
		<div class="questionPhoto">
					<a href="http://www.houzz.com/discussions/698579/Small-Formal-Living-Room-vs--Large-Sofa">
		<img class="questionImg" width="35" height="35" src="./resources/46c29aa50266d428_0702-w35-h35-b0-p0--home-design.jpg">
		</a>
				
		&nbsp;&nbsp;</div>
		<div class="questionDetails small-text">
			<div class="question-meta-infos">
				<div class="questionTitle normal-header"><a class="colorLink" href="http://www.houzz.com/discussions/698579/Small-Formal-Living-Room-vs--Large-Sofa">Small Formal Living Room vs. Large Sofa</a></div>
												<div class="questionInfo">
					<div class="question-authorship-strip small-text"><a class="hz-username hzHouzzer hzHCUserName " href="http://www.houzz.com/user/diannejay" data-type="profile" data-id="diannejay">Dianne Tarter Briggs</a> | <span class="hz-date"><abbr title="Tuesday, October 22, 203 at 2:38pm" utime="382470700">4 hours ago</abbr></span> <span class="question-topic">in <a class="colorLink" href="http://www.houzz.com/discussions/design-dilemma">Design Dilemma</a></span></div><a class="qMetaComment" href="http://www.houzz.com/discussions/698579/Small-Formal-Living-Room-vs--Large-Sofa#addAnswer" title="Write a comment"><img class="questionIcons iconSpeechBubble" src="./resources/spacer.gif">5</a>			<a class="qMetaBookmark" href="javascript:" title="Add to bookmarks" fop="f" fty="q" fid="698579"><img class="questionIcons iconBookmark" src="./resources/spacer.gif">0</a>				</div>
			</div>
			<div class="question-latest-activity">		<div class="questionUserImageDiv">
			<a href="http://www.houzz.com/user/cdrdesign"><img width="30" height="30" class="hzHouzzer hzHCUserImage" data-type="profile" data-id="cdrdesign" src="./resources/user_0.gif"></a>		</div>
							<div class="questionExcerpt">
						<a class="hz-username hzHouzzer hzHCUserName qUserName" href="http://www.houzz.com/user/cdrdesign" data-type="profile" data-id="cdrdesign">cdrdesign</a> | <span class="hz-date"><abbr title="Wednesday, October 23, 203 at 3:4am" utime="382523268">2 minutes ago</abbr></span><div><a class="qExcerptText" href="http://www.houzz.com/discussions/698579/Small-Formal-Living-Room-vs--Large-Sofa#629763">That is a nice sofa! 

The general answer is that it is too large. However, I would have...</a></div>					</div>
				</div>
					</div>
		<div class="questionSeparator"></div>
		</div>
				
				
				
				
				<div class="whiteCard pollEntry ">
		<div class="questionPhoto">
						<div class="pollCorner"></div>
					<a class="hzPollImg" href="http://www.houzz.com/discussions/69834/Comment-for-a-chance-to-win--POLL--Favorite">
		<img class="questionImg" width="35" height="35" src="./resources/4522bdc0266a389_8252-w35-h35-b-p0--home-design.jpg">
		</a>
				
		&nbsp;&nbsp;</div>
		<div class="questionDetails small-text">
			<div class="question-meta-infos">
				<div class="questionTitle normal-header"><a class="colorLink" href="http://www.houzz.com/discussions/69834/Comment-for-a-chance-to-win--POLL--Favorite">Comment for a chance to win! POLL: Favorite Cozy Material</a></div>
												<div class="questionInfo">
					<div class="question-authorship-strip small-text"><a class="hz-username hzHouzzer hzHCUserName " href="http://www.houzz.com/user/houzzerpolls" data-type="profile" data-id="houzzerpolls">Houzz Polls</a> | <span class="hz-date"><abbr title="Tuesday, October 22, 203 at 9:0am" utime="38245825">8 hours ago</abbr></span> <span class="question-topic">in <a class="colorLink" href="http://www.houzz.com/discussions/design-dilemma">Design Dilemma</a></span></div><a class="qMetaComment" href="http://www.houzz.com/discussions/69834/Comment-for-a-chance-to-win--POLL--Favorite#addAnswer" title="Write a comment"><img class="questionIcons iconSpeechBubble" src="./resources/spacer.gif">9</a>			<a class="qMetaVote" href="http://www.houzz.com/discussions/69834/Comment-for-a-chance-to-win--POLL--Favorite#pollOptions" title="See options"><img class="questionIcons iconVote" src="./resources/spacer.gif">43</a>			<a class="qMetaBookmark" href="javascript:" title="Add to bookmarks" fop="f" fty="q" fid="69834"><img class="questionIcons iconBookmark" src="./resources/spacer.gif"></a>				</div>
			</div>
			<div class="question-latest-activity">		<div class="questionUserImageDiv">
			<a href="http://www.houzz.com/user/mlx395"><img width="30" height="30" class="hzHouzzer hzHCUserImage" data-type="profile" data-id="mlx395" src="./resources/mlx395.jpg"></a>		</div>
							<div class="questionExcerpt">
						<a class="hz-username hzHouzzer hzHCUserName qUserName" href="http://www.houzz.com/user/mlx395" data-type="profile" data-id="mlx395">mlx395</a> | <span class="hz-date"><abbr title="Wednesday, October 23, 203 at 2:54am" utime="382522049">23 minutes ago</abbr></span><div><a class="qExcerptText" href="http://www.houzz.com/discussions/69834/Comment-for-a-chance-to-win--POLL--Favorite#629754">Favorite cold weather activity - making a snow family (too much snow around here for just one...</a></div>					</div>
				</div>
					</div>
		<div class="questionSeparator"></div>
		</div>	
				</div>		
		
	<div class="rightSideBar"></div>
</div><!-- end of container-->

		
	  <div id="mainContentSeparator"></div>
			</div>

     </div></div>
		
					
		<%--<textarea tabindex="-" style="position: absolute; top: -9999px; left: -9999px; right: auto; bottom: auto; border: 0px; box-sizing: content-box; word-wrap: break-word; overflow: hidden; height: 0px !important; min-height: 0px !important; font-family: proxima-nova, &#39;Helvetica Neue&#39;, Helvetica, Arial, sans-serif; font-size: 4px; font-weight: normal; font-style: normal; letter-spacing: normal; text-transform: none; word-spacing: 0px; text-indent: 0px; line-height: 20px; width: 638px;" class="autosizejs"></textarea><img src="./resources/log" style="position: absolute; left: -00px; top: -00px;">--%>
</asp:Content>
