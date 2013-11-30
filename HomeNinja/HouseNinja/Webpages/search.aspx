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
		<h class="large-header top">2,237,328 Home Improvement Professionals</h><div class="pageDescription pageDescriptionHeader">Even if you're the kind of person who makes everything a DIY project, there's always a point when a home remodeling or decorating project could use a professional set of eyes. Whether you are redoing your backyard, need some help planning your living room or can't figure out where to put the kitchen sink, a quality home professional can help you do it right. Hiring a qualified home professional puts their years of schooling, certifications, training and experience right at your fingertips. <a class="colorLink" href="javascript:HZ.ui.Utils.scrollTo(".pageDescriptionFooter");">More&nbsp;<span class="downChevron">&nbsp;&nbsp;</span></a></div></div>
			<div class="proSearchBar">
		<ul class="proSearch form-inline">
			<li>
				<input id="proKeywordSearch" type="text" placeholder="architect, ABC Contractor..." value="">
				<div id="searchProsAutoSuggContainer" class="autoSuggContainer" style="display:none;"></div>
			</li>			
			<li>
				<label class="help-inline">near</label><input id="proLocationSearch" type="text" placeholder="city, state, zip, metro area..." value="">
				<div id="searchProsLocationAutoSuggContainer" class="autoSuggContainer" style="display:none;"></div>
			</li>			
			<li>
				<label class="help-inline">within</label>
				<span class="dropdown-wrapper">
					<select id="proDistanceFilter" class="dropdown" >
						<option value="" selected="">Anywhere</option>
						<option value="00">00 miles</option>
						<option value="50">50 miles</option>
						<option value="25">25 miles</option>
						<option value="0">0 miles</option>
					</select>
					<i></i>
				</span>
			</li>			
			<li>
				<label class="help-inline">sort&nbsp;by</label>
				<span class="dropdown-wrapper">
					<select id="proSortFilter" class="dropdown">
							<option value="default">Best Match</option>
							<option value="sortReviews">Most Reviewed</option>
							<option value="sortRecentReviews">Recently Reviewed</option>
					</select>
					<i></i>
				</span>
			</li>
			<li>
						<input id="proSearchBtn" type="button" class="hzBtn primary proSearchBtn" value="Search" onclick="HZ.browseProfessionals.Page.search()">
					</li>			
		</ul>
	</div>				
        <div class="browseListBody reloadMe rimg" data-f-w="4" data-f-h="222" data-s-w="380" data-s-h="206" data-img-path=".whiteCard img.proImage">
		<div class="whiteCard ppdb pro-card even">
			<div class="pro-cover-photos"><a href="http://www.houzz.com/pro/james-crisp/crisp-architects"><img src="./resources/c7632000de976a_454-w4-h222-b0-p0--farmhouse-exterior.jpg" class="proImage reloadable" width="4" height="222" sids="84665,88946,607038,93098,35306"></a></div>
			<div class="vcard">
				<div class="pro-header">
			        <img class="pro-thumb" src="./resources/james_crisp.jpg" width="40" height="40">
			        <a class="pro-title" href="http://www.houzz.com/pro/james-crisp/crisp-architects">Crisp Architects</a>
			        <span itemprop="aggregateRating" itemscope="" itemtype="http://schema.org/AggregateRating"><div class="pro-rating"><a class="review-star-link colorLink" href="http://www.houzz.com/browseReviews/james_crisp/crisp-architects"><div class="classification"><div class="cover"></div><div class="progress" style="width:00%;"></div></div><span class="pro-review-string"><span itemprop="reviewcount">32</span>&nbsp;Reviews</span></a><meta itemprop="ratingValue" content="5"></div></span>					<span class="pro-phone small-text">(845) 677-8256</span>
			    </div>
				<div class="pro-info">
					<div class="pro-meta"><span class="adr"><span class="locality">Millbrook</span>, <span class="region">NY</span>, <span class="country-name">US</span> <span class="postal-code">2545</span></span></div>
					<div class="pro-description">We design new homes, additions, and renovations, and provide green solutions in New York, Massachusetts, Connecticut and beyond. 

Established in 985 and located in the... <a class="colorLink bold-text small-text" href="http://www.houzz.com/pro/james-crisp/crisp-architects">Read&nbsp;More&nbsp;<span class="more-icon"></span></a></div>
			    </div>
							</div>
		</div>
        <div class="whiteCard ppdb pro-card odd">
			<div class="pro-cover-photos"><a href="http://www.houzz.com/pro/oharainteriors/martha-ohara-interiors" id="_h_url_paid_pro" onmousedown="_h_url_click_paid_pro(this);"><img src="./resources/c5eec40efb42b7_4698-w4-h222-b0-p0--transitional-bedroom.jpg" class="proImage reloadable" width="4" height="222" sids="4279,38843,33307,333087,333089"></a></div>
			<div class="vcard">
				<div class="pro-header">
			        <img class="pro-thumb" src="./resources/oharainteriors.jpg" width="40" height="40">
			        <a class="pro-title" href="http://www.houzz.com/pro/oharainteriors/martha-ohara-interiors" id="A" onmousedown="_h_url_click_paid_pro(this);">Martha O'Hara Interiors</a>
			        <span itemprop="aggregateRating" itemscope="" itemtype="http://schema.org/AggregateRating"><div class="pro-rating"><a class="review-star-link colorLink" href="http://www.houzz.com/browseReviews/oharainteriors/martha-ohara-interiors"><div class="classification"><div class="cover"></div><div class="progress" style="width:98%;"></div></div><span class="pro-review-string"><span itemprop="reviewcount">82</span>&nbsp;Reviews</span></a><meta itemprop="ratingValue" content="4.9"></div></span>					<span class="pro-phone small-text">(952) 908-350</span>
			    </div>
				<div class="pro-info">
					<div class="pro-meta"><span class="adr"><span class="locality">Minneapolis</span>, <span class="region">MN</span>, <span class="country-name">US</span> <span class="postal-code">55426</span></span></div>
					<div class="pro-description">With locations in Minnesota and Texas, we work with homeowners and builders to design and furnish homes from coast to coast.  Whether you are building a new home or updating your... <a class="colorLink bold-text small-text" href="http://www.houzz.com/pro/oharainteriors/martha-ohara-interiors" id="A2" onmousedown="_h_url_click_paid_pro(this);">Read&nbsp;More&nbsp;<span class="more-icon"></span></a></div>
			    </div>
							</div>
		</div>
        <div class="whiteCard ppdb pro-card even">
			<div class="pro-cover-photos"><a href="http://www.houzz.com/pro/jkandsons/john-kraemer-sons"><img src="./resources/f6fc520065d809_729-w4-h222-b0-p0--traditional-exterior.jpg" class="proImage reloadable" width="4" height="222" sids="6628,347222,662237,347276,3525"></a></div>
			<div class="vcard">
				<div class="pro-header">
			        <img class="pro-thumb" src="./resources/jkandsons.jpg" width="40" height="40">
			        <a class="pro-title" href="http://www.houzz.com/pro/jkandsons/john-kraemer-sons">John Kraemer &amp; Sons</a>
			        <span itemprop="aggregateRating" itemscope="" itemtype="http://schema.org/AggregateRating"><div class="pro-rating"><a class="review-star-link colorLink" href="http://www.houzz.com/browseReviews/jkandsons/john-kraemer-sons"><div class="classification"><div class="cover"></div><div class="progress" style="width:00%;"></div></div><span class="pro-review-string"><span itemprop="reviewcount">26</span>&nbsp;Reviews</span></a><meta itemprop="ratingValue" content="5"></div></span>					<span class="pro-phone small-text">(952) 935-900</span>
			    </div>
				<div class="pro-info">
					<div class="pro-meta"><span class="adr"><span class="locality">Edina</span>, <span class="region">MN</span>, <span class="country-name">US</span> <span class="postal-code">55436</span></span></div>
					<div class="pro-description">John Kraemer &amp; Sons, Inc. is a luxury residential builder and remodeler, based out of Edina, Minnesota. 

Founded in 978 by Gary Kraemer &amp; his late father John, the firm... <a class="colorLink bold-text small-text" href="http://www.houzz.com/pro/jkandsons/john-kraemer-sons">Read&nbsp;More&nbsp;<span class="more-icon"></span></a></div>
			    </div>
							</div>
		</div>
        <div class="whiteCard ppdb pro-card odd">
			<div class="pro-cover-photos"><a href="http://www.houzz.com/pro/eugenesakai/studio-s-squared-architecture-inc"><img src="./resources/90eb8330d7448c_407-w4-h222-b0-p0--craftsman-exterior.jpg" class="proImage reloadable" width="4" height="222" sids="39005,38985,38859,3380586,379508"></a></div>
			<div class="vcard">
				<div class="pro-header">
			        <img class="pro-thumb" src="./resources/eugenesakai.jpg" width="40" height="40">
			        <a class="pro-title" href="http://www.houzz.com/pro/eugenesakai/studio-s-squared-architecture-inc">Studio S Squared Architecture, Inc.</a>
			        <span itemprop="aggregateRating" itemscope="" itemtype="http://schema.org/AggregateRating"><div class="pro-rating"><a class="review-star-link colorLink" href="http://www.houzz.com/browseReviews/eugenesakai/studio-s-squared-architecture-inc"><div class="classification"><div class="cover"></div><div class="progress" style="width:98%;"></div></div><span class="pro-review-string"><span itemprop="reviewcount">32</span>&nbsp;Reviews</span></a><meta itemprop="ratingValue" content="4.9"></div></span>					<span class="pro-phone small-text">(408) 998-0983</span>
			    </div>
				<div class="pro-info">
					<div class="pro-meta"><span class="adr"><span class="locality">San Jose</span>, <span class="region">CA</span>, <span class="country-name">US</span> <span class="postal-code">953</span></span></div>
					<div class="pro-description">Studio S Squared Architecture, Inc. was founded on the belief that client involvement and a positive relationship is the key to a successful project, and we are committed to a... <a class="colorLink bold-text small-text" href="http://www.houzz.com/pro/eugenesakai/studio-s-squared-architecture-inc">Read&nbsp;More&nbsp;<span class="more-icon"></span></a></div>
			    </div>
							</div>
		</div>
        		</div>
		<div class="proLearnMore">List your business here for free - <a class="colorLink" href="http://www.houzz.com/getStartedProf">Learn&nbsp;More&nbsp;<span class="more-icon"></span></a></div>	
		
<br>Once you've settled on your project’s priorities, budget and scope, it's time to start researching home design professionals. Don't sell yourself short and settle on the first professional you set your sights on. Make sure that you're working with someone local, who can get to the jobsite easily and efficiently. Look into the person’s reviews, ask to speak with former clients and to see previous jobs in person. Take a good look at their portfolio photos: How similar are these projects to your own? Be honest — that mansion might look beautiful, but it might not have a lot in common with your little bungalow.
<br>
<br>Reach out to multiple professionals — especially for larger projects — and don't settle for the first bid you hear. Comparing multiple  professionals' bids and experiences can help you find the one that’s best for you. Ask a lot of questions now, so you won't have unexpected answers later.
<br>
<br>Find a home design professional on Houzz. Narrow down your search by type of professional and location. Browse  portfolio photos, read client reviews and contact each  professional for more information. Check out the information in the specialized professional sections too for tips on how to hire the right professional for your project. </div><div class="right3ColBox">			<div class="right3ColBoxTitle">Professional Metro Areas</div>
			<div class="popularKeywords">
			<a href="http://www.houzz.com/professionals/adelaide" class="keyword">Adelaide</a> · <a href="http://www.houzz.com/professionals/albuquerque" class="keyword">Albuquerque</a> · <a href="http://www.houzz.com/professionals/amsterdam" class="keyword">Amsterdam</a> · <a href="http://www.houzz.com/professionals/atlanta" class="keyword">Atlanta</a> · <a href="http://www.houzz.com/professionals/auckland" class="keyword">Auckland</a> · <a href="http://www.houzz.com/professionals/austin" class="keyword">Austin</a> · <a href="http://www.houzz.com/professionals/baltimore" class="keyword">Baltimore</a> · <a href="http://www.houzz.com/professionals/birmingham" class="keyword">Birmingham</a> · <a href="http://www.houzz.com/professionals/boise" class="keyword">Boise</a> · <a href="http://www.houzz.com/professionals/boston" class="keyword">Boston</a> · <a href="http://www.houzz.com/professionals/bridgeport" class="keyword">Bridgeport</a> · <a href="http://www.houzz.com/professionals/brisbane" class="keyword">Brisbane</a> · <a href="http://www.houzz.com/professionals/bristol" class="keyword">Bristol</a> · <a href="http://www.houzz.com/professionals/burlington" class="keyword">Burlington</a> · <a href="http://www.houzz.com/professionals/calgary" class="keyword">Calgary</a> · <a href="http://www.houzz.com/professionals/cedar-rapids" class="keyword">Cedar Rapids</a> · <a href="http://www.houzz.com/professionals/charleston" class="keyword">Charleston</a> · <a href="http://www.houzz.com/professionals/charlotte" class="keyword">Charlotte</a> · <a href="http://www.houzz.com/professionals/chicago" class="keyword">Chicago</a> · <a href="http://www.houzz.com/professionals/cincinnati" class="keyword">Cincinnati</a> · <a href="http://www.houzz.com/professionals/cleveland" class="keyword">Cleveland</a> · <a href="http://www.houzz.com/professionals/columbus" class="keyword">Columbus</a> · <a href="http://www.houzz.com/professionals/dallas" class="keyword">Dallas</a> · <a href="http://www.houzz.com/professionals/dc-metro" class="keyword">Dc Metro</a> · <a href="http://www.houzz.com/professionals/denver" class="keyword">Denver</a> · <a href="http://www.houzz.com/professionals/detroit" class="keyword">Detroit</a> · <a href="http://www.houzz.com/professionals/dublin" class="keyword">Dublin</a> · <a href="http://www.houzz.com/professionals/edmonton" class="keyword">Edmonton</a> · <a href="http://www.houzz.com/professionals/glasgow" class="keyword">Glasgow</a> · <a href="http://www.houzz.com/professionals/grand-rapids" class="keyword">Grand Rapids</a> · <a href="http://www.houzz.com/professionals/hawaii" class="keyword">Hawaii</a> · <a href="http://www.houzz.com/professionals/hong-kong" class="keyword">Hong Kong</a> · <a href="http://www.houzz.com/professionals/houston" class="keyword">Houston</a> · <a href="http://www.houzz.com/professionals/huntington" class="keyword">Huntington</a> · <a href="http://www.houzz.com/professionals/indianapolis" class="keyword">Indianapolis</a> · <a href="http://www.houzz.com/professionals/jackson" class="keyword">Jackson</a> · <a href="http://www.houzz.com/professionals/jacksonville" class="keyword">Jacksonville</a> · <a href="http://www.houzz.com/professionals/kansas-city" class="keyword">Kansas City</a> · <a href="http://www.houzz.com/professionals/las-vegas" class="keyword">Las Vegas</a> · <a href="http://www.houzz.com/professionals/little-rock" class="keyword">Little Rock</a> · <a href="http://www.houzz.com/professionals/london" class="keyword">London</a> · <a href="http://www.houzz.com/professionals/los-angeles" class="keyword">Los Angeles</a> · <a href="http://www.houzz.com/professionals/louisville" class="keyword">Louisville</a> · <a href="http://www.houzz.com/professionals/manchester-NH" class="keyword">Manchester NH</a> · <a href="http://www.houzz.com/professionals/manchester-UK" class="keyword">Manchester UK</a> · <a href="http://www.houzz.com/professionals/melbourne" class="keyword">Melbourne</a> · <a href="http://www.houzz.com/professionals/mexico-city" class="keyword">Mexico City</a> · <a href="http://www.houzz.com/professionals/miami" class="keyword">Miami</a> · <a href="http://www.houzz.com/professionals/milwaukee" class="keyword">Milwaukee</a> · <a href="http://www.houzz.com/professionals/minneapolis" class="keyword">Minneapolis</a> · <a href="http://www.houzz.com/professionals/montreal" class="keyword">Montreal</a> · <a href="http://www.houzz.com/professionals/nashville" class="keyword">Nashville</a> · <a href="http://www.houzz.com/professionals/new-orleans" class="keyword">New Orleans</a> · <a href="http://www.houzz.com/professionals/new-york" class="keyword">New York</a> · <a href="http://www.houzz.com/professionals/newark" class="keyword">Newark</a> · <a href="http://www.houzz.com/professionals/oklahoma-city" class="keyword">Oklahoma City</a> · <a href="http://www.houzz.com/professionals/omaha" class="keyword">Omaha</a> · <a href="http://www.houzz.com/professionals/orange-county" class="keyword">Orange County</a> · <a href="http://www.houzz.com/professionals/orlando" class="keyword">Orlando</a> · <a href="http://www.houzz.com/professionals/ottawa" class="keyword">Ottawa</a> · <a href="http://www.houzz.com/professionals/perth" class="keyword">Perth</a> · <a href="http://www.houzz.com/professionals/philadelphia" class="keyword">Philadelphia</a> · <a href="http://www.houzz.com/professionals/phoenix" class="keyword">Phoenix</a> · <a href="http://www.houzz.com/professionals/portland" class="keyword">Portland</a> · <a href="http://www.houzz.com/professionals/portland-maine" class="keyword">Portland Maine</a> · <a href="http://www.houzz.com/professionals/portsmouth" class="keyword">Portsmouth</a> · <a href="http://www.houzz.com/professionals/providence" class="keyword">Providence</a> · <a href="http://www.houzz.com/professionals/raleigh" class="keyword">Raleigh</a> · <a href="http://www.houzz.com/professionals/richmond" class="keyword">Richmond</a> · <a href="http://www.houzz.com/professionals/sacramento" class="keyword">Sacramento</a> · <a href="http://www.houzz.com/professionals/salt-lake-city" class="keyword">Salt Lake City</a> · <a href="http://www.houzz.com/professionals/san-diego" class="keyword">San Diego</a> · <a href="http://www.houzz.com/professionals/san-francisco" class="keyword">San Francisco</a> · <a href="http://www.houzz.com/professionals/san-luis-obispo" class="keyword">San Luis Obispo</a> · <a href="http://www.houzz.com/professionals/santa-barbara" class="keyword">Santa Barbara</a> · <a href="http://www.houzz.com/professionals/seattle" class="keyword">Seattle</a> · <a href="http://www.houzz.com/professionals/st-louis" class="keyword">St Louis</a> · <a href="http://www.houzz.com/professionals/sydney" class="keyword">Sydney</a> · <a href="http://www.houzz.com/professionals/tampa" class="keyword">Tampa</a> · <a href="http://www.houzz.com/professionals/tel-aviv" class="keyword">Tel Aviv</a> · <a href="http://www.houzz.com/professionals/toronto" class="keyword">Toronto</a> · <a href="http://www.houzz.com/professionals/vancouver" class="keyword">Vancouver</a> · <a href="http://www.houzz.com/professionals/wichita" class="keyword">Wichita</a> · <a href="http://www.houzz.com/professionals/wilmington" class="keyword">Wilmington</a> · <a href="http://www.houzz.com/professionals/other-metro" class="keyword">Other Metro</a></div>		<br><div class="right3ColBoxTitle">Find Professional Listings By Name</div>
			
	</div>
</div><!--End of rightSideContent -->
</div><!-- End of container -->
	  <div id="mainContentSeparator"></div>
			</div></div>
</asp:Content>
