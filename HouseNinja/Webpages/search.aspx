<%@ Page Title="" Language="C#" MasterPageFile="~/Webpages/MasterPage/Site.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="HouseNinja.Webpages.search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="mainArea"><div id="mainContent" class="tallHeader">
		<div class="container">
<div class="leftSideBar">
	
</div>
<div class="rightSideContent">
	<div class="proDirectory newHeader">
		<div class="headerContainer">
		<h class="large-header top">2,237,328 Home Improvement Professionals</h>
            <div class="pageDescription pageDescriptionHeader">Even if you're the kind of person who makes everything a DIY project, there's always a point when a home remodeling or decorating project could use a professional set of eyes. Whether you are redoing your backyard, need some help planning your living room or can't figure out where to put the kitchen sink, a quality home professional can help you do it right. Hiring a qualified home professional puts their years of schooling, certifications, training and experience right at your fingertips. <a class="colorLink" href="javascript:HZ.ui.Utils.scrollTo(".pageDescriptionFooter");">More&nbsp;<span class="downChevron">&nbsp;&nbsp;</span></a></div></div>
			<div class="proSearchBar">
		<ul class="proSearch form-inline">
			<li>
				<input id="txtUserName" type="text" placeholder="architect, ABC Contractor..." value="" runat="server">
				<div id="searchProsAutoSuggContainer" class="autoSuggContainer" style="display:none;"></div>
			</li>			
			<li>
				<label class="help-inline">near</label><input id="txtZipCode" type="text" runat="server" placeholder="city, state, zip, metro area..." value="">
				<div id="searchProsLocationAutoSuggContainer" class="autoSuggContainer" style="display:none;"></div>
			</li>			
			<li>
				<label class="help-inline">State</label>
				<span class="dropdown-wrapper">
                    <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="true" OnSelectedIndexChanged="bindCities">
                    </asp:DropDownList>
					<i></i>
				</span>
			</li>		
			<li>
				<label class="help-inline">City</label>
				<span class="dropdown-wrapper">
                     <asp:DropDownList ID="ddlCity" runat="server" >
                    </asp:DropDownList>
					<i></i>
				</span>
			</li>
			<li>
						<%--<input id="proSearchBtn" type="button" class="hzBtn primary proSearchBtn" value="Search" onclick="">--%>
			<asp:Button runat="server" ID="proSearchBtn" CssClass="hzBtn primary proSearchBtn" Text="Search" OnClick="proSearchBtn_Click"/>		
            </li>			
		</ul>
	</div>				
        <div class="browseListBody reloadMe rimg" data-f-w="4" data-f-h="222" data-s-w="380" data-s-h="206" data-img-path=".whiteCard img.proImage">
		
          <asp:Repeater ID="rptUsers" runat="server">  
              <ItemTemplate>
          <div class="whiteCard ppdb pro-card">
			<div class="pro-cover-photos"><a href="">
                <img src="" class="proImage reloadable" width="4" height="222" sids="84665,88946,607038,93098,35306"></a></div>
			<div class="vcard">
				<div class="pro-header">
			        <img class="pro-thumb" src="./resources/james_crisp.jpg" width="40" height="40">
			        <a id="A1" class="pro-title" href="" runat="server"><%#Eval("userName") %></a>
			        <span itemprop="aggregateRating" itemscope="" itemtype="">
                        <div class="pro-rating"><a class="review-star-link colorLink" href="">
                            <div class="classification"><div class="cover">
                        </div><div class="progress" style="width:00%;"></div></div>
                            <span class="pro-review-string"><span itemprop="reviewcount">32</span>
                                &nbsp;Reviews</span></a><meta itemprop="ratingValue" content="5"></div></span>					
                    <span class="pro-phone small-text"> <%#Eval("contactNo") %></span>
			    </div>
				<div class="pro-info">
					<div class="pro-meta">
                        <span class="adr"><span class="locality"><%#Eval("city") %></span>,
                            <span class="region"> <%#Eval("state") %></span>, <span class="country-name"></span> 
                            <span class="postal-code"> <%#Eval("contactNo") %></span></span></div>
					<div class="pro-description"><%#Eval("description") %> 
                    <a class="colorLink bold-text small-text" href="">Read&nbsp;More&nbsp;<span class="more-icon"></span></a></div>
			    </div>
							</div>
		</div>
                  </ItemTemplate>
              </asp:Repeater>
   		</div>
		<div class="proLearnMore">
          
	</div>
</div><!--End of rightSideContent -->
</div><!-- End of container -->
	  <div id="mainContentSeparator"></div>
			</div></div>
        <asp:Button  runat="server" ID="btnSearch"  ClientIDMode="Static" OnClick="btnSearch_Click"/>
</asp:Content>
