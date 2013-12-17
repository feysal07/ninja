﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="HouseNinja.Webpages.CustomControls.Header" %>
<div id="navContainer" class="">
   <div id="navHeader" class="unsigned  ">
      <div class="navbar navbar-inverse container">
         <div class="navbar-inner">
            <a id="navHome" class="brand" href="">
            <img src="./resources/spacer.gif" width="2" height="2">
            </a>
            <ul id="navTabs" class="nav">
               
               <li id="navProfessionals" class="navBlock">
                  <a href="aboutUs.aspx" class="tabOff">
                     <div class="tabBody"><span class="tabTitle">HOME</span></div>
                  </a>
               </li>
                <li id="navBrowse" class="navBlockExpandable navBlock">
                  <a href="photos" class="tabOff">
                     <div class="tabBody"><span class="tabTitle">LOOKING FOR</span></div>
                  </a>
                  <div id="navBrowseExp" class="navExpandedMenuWrapper">
                     <div class="navExpandedMenu navRoundedBottomBorder">
                        <div id="topicHomeContainer">
                           <table id="topicHomeMenu" cellpadding="0" cellspacing="0" border="0">
                              <tbody>
                                 <tr valign="top">
                                    <td>
                                       <ul class="topicHomeMenuMain">
                                          <li class="navigationItemMoreRoomsLi"><span class="navigationItem homeMenuTopicLine navigationItemAllRooms navigationExpandedItem" href="/photos" menuname="menu_allRooms" topicnamespace="navigation">All Rooms &amp; Styles</span></li>
                                          <li><span class="navigationItem homeMenuTopicLine" href="/photos/kitchen" menuname="menu_708" topicnamespace="navigation" lidx="">Kitchen</span></li>
                                          <li><span class="navigationItem homeMenuTopicLine" href="/photos/bath" menuname="menu_70" topicnamespace="navigation" lidx="2">Bath</span></li>
                                          <li><span class="navigationItem homeMenuTopicLine" href="/photos/bedroom" menuname="menu_74" topicnamespace="navigation" lidx="3">Bedroom</span></li>
                                          <li><span class="navigationItem homeMenuTopicLine" href="/photos/living" menuname="menu_76" topicnamespace="navigation" lidx="4">Living</span></li>
                                          <li><span class="navigationItem homeMenuTopicLine" href="/photos/dining" menuname="menu_72" topicnamespace="navigation" lidx="5">Dining</span></li>
                                          <li><span class="navigationItem homeMenuTopicLine" href="/photos/outdoor" menuname="menu_723" topicnamespace="navigation" lidx="6">Outdoor</span></li>
                                          <li><span class="navigationItem homeMenuTopicLine" href="/photos/kids" menuname="menu_729" topicnamespace="navigation" lidx="7">Kids</span></li>
                                          <li><span class="navigationItem homeMenuTopicLine" href="/photos/home-office" menuname="menu_73" topicnamespace="navigation" lidx="8">Home Office</span></li>
                                          <li><span class="navigationItem homeMenuTopicLine" href="/photos/closet" menuname="menu_733" topicnamespace="navigation" lidx="9">Storage &amp; Closets</span></li>
                                          <li><span class="navigationItem homeMenuTopicLine" href="/photos/exterior" menuname="menu_735" topicnamespace="navigation" lidx="0">Exterior</span></li>
                                          <li class="navigationItemMoreRoomsLi"><span class="navigationItem homeMenuTopicLine navigationItemMoreRooms" menuname="topicPaneMoreRooms" topicnamespace="navigation">More Rooms 	…</span></li>
                                          <li><span class="navigationItem homeMenuTopicLine" href="/photos/lighting" menuname="menu_737" topicnamespace="navigation" lidx="2">Lighting</span></li>
                                          <li><span class="navigationItem homeMenuTopicLine" href="/photos/accessories-and-decor" menuname="menu_738" topicnamespace="navigation" lidx="3">Accessories &amp; Decor</span></li>
                                          <li><span class="navigationItem homeMenuTopicLine" href="/photos/floors-windows-and-doors" menuname="menu_739" topicnamespace="navigation" lidx="4">Windows &amp; Doors</span></li>
                                       </ul>
                                    </td>
                                    <td id="topicNavigationSideMenuContainer">
                                       <div id="topicNavigationSideMenu">
                                          <div id="menu_allRooms" class="topicNavigationSideMenu" style="">
                                             <table class="topicNavigationSideMenuTable" cellpadding="0" cellspacing="0" border="0">
                                                <colgroup>
                                                   <col width="70">
                                                   <col width="70">
                                                </colgroup>
                                                <tbody>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos">All Photos <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/contemporary">Contemporary</span><span class="topicItem" href="/photos/eclectic">Eclectic</span><span class="topicItem" href="/photos/modern">Modern</span><span class="topicItem" href="/photos/traditional">Traditional</span><span class="topicItem" href="/photos/asian">Asian</span><span class="topicItem" href="/photos/beach-style">Beach Style</span><span class="topicItem" href="/photos/craftsman">Craftsman</span></td>
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/farmhouse">Farmhouse</span><span class="topicItem" href="/photos/industrial">Industrial</span><span class="topicItem" href="/photos/mediterranean">Mediterranean</span><span class="topicItem" href="/photos/midcentury">Midcentury</span><span class="topicItem" href="/photos/rustic">Rustic</span><span class="topicItem" href="/photos/transitional">Transitional</span><span class="topicItem" href="/photos/tropical">Tropical</span></td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos/products">All Products <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/contemporary/products">Contemporary</span><span class="topicItem" href="/photos/eclectic/products">Eclectic</span><span class="topicItem" href="/photos/modern/products">Modern</span><span class="topicItem" href="/photos/traditional/products">Traditional</span></td>
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/asian/products">Asian</span><span class="topicItem" href="/photos/mediterranean/products">Mediterranean</span><span class="topicItem" href="/photos/tropical/products">Tropical</span></td>
                                                   </tr>
                                                </tbody>
                                             </table>
                                          </div>
                                          <div id="menu_708" class="topicNavigationSideMenu" style="display: none; position: absolute;">
                                             <table class="topicNavigationSideMenuTable" cellpadding="0" cellspacing="0" border="0">
                                                <colgroup>
                                                   <col width="70">
                                                   <col width="70">
                                                </colgroup>
                                                <tbody>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos/kitchen">Kitchen Photos <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup" colspan="2"><span class="topicItem" href="/photos/kitchen">Browse all Kitchen Photos</span></td>
                                                      <td class="topicItemsGroup"></td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos/kitchen-products">Kitchen Products <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/cookware-and-bakeware">Cookware and Bakeware</span><span class="topicItem" href="/photos/kitchen-tools-and-knives">Kitchen Tools and Knives</span><span class="topicItem" href="/photos/kitchen-accessories">Kitchen Accessories</span><span class="topicItem" href="/photos/kitchen-islands--carts-and-pantry-furniture">Kitchen Islands, Carts and Pantry Furniture</span><span class="topicItem" href="/photos/bar-stools-and-counter-stools">Bar Stools and Counter Stools</span><span class="topicItem" href="/photos/dining-tables">Dining Tables</span><span class="topicItem" href="/photos/dining-chairs-and-benches">Dining Chairs and Benches</span><span class="topicItem" href="/photos/tabletop">Tabletop</span></td>
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/kitchen-countertops">Kitchen Countertops</span><span class="topicItem" href="/photos/kitchen-cabinets">Kitchen Cabinets</span><span class="topicItem" href="/photos/small-kitchen-appliances">Small Kitchen Appliances</span><span class="topicItem" href="/photos/major-kitchen-appliances">Major Kitchen Appliances</span><span class="topicItem" href="/photos/kitchen-sinks-and-faucets">Kitchen Sinks and Faucets</span><span class="topicItem" href="/photos/kitchen-tile">Kitchen Tile</span><span class="topicItem" href="/photos/kitchen-lighting-and-cabinet-lighting">Kitchen Lighting and Cabinet Lighting</span><span class="topicItem" href="/photos/hardware">Hardware</span></td>
                                                   </tr>
                                                </tbody>
                                             </table>
                                          </div>
                                          <div id="menu_70" class="topicNavigationSideMenu" style="display: none; position: absolute;">
                                             <table class="topicNavigationSideMenuTable" cellpadding="0" cellspacing="0" border="0">
                                                <colgroup>
                                                   <col width="70">
                                                   <col width="70">
                                                </colgroup>
                                                <tbody>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos/bath">Bath Photos <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/bathroom">Bathroom</span></td>
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/powder-room">Powder Room</span></td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos/bath-products">Bath Products <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/bath-and-spa-accessories">Bath and Spa Accessories</span><span class="topicItem" href="/photos/bath-linens">Bath Linens</span><span class="topicItem" href="/photos/bathroom-storage-and-vanities">Bathroom Storage and Vanities</span><span class="topicItem" href="/photos/bathtubs">Bathtubs</span><span class="topicItem" href="/photos/showers">Showers</span><span class="topicItem" href="/photos/toilets">Toilets</span><span class="topicItem" href="/photos/bathroom-sinks">Bathroom Sinks</span><span class="topicItem" href="/photos/bathroom-faucets">Bathroom Faucets</span></td>
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/bathroom-lighting-and-vanity-lighting">Bathroom Lighting and Vanity Lighting</span><span class="topicItem" href="/photos/bathroom-countertops">Bathroom Countertops</span><span class="topicItem" href="/photos/bathroom-tile">Bathroom Tile</span><span class="topicItem" href="/photos/medicine-cabinets">Medicine Cabinets</span><span class="topicItem" href="/photos/makeup-mirrors">Makeup Mirrors</span><span class="topicItem" href="/photos/hardware">Hardware</span><span class="topicItem" href="/photos/hooks-and-hangers">Hooks and Hangers</span></td>
                                                   </tr>
                                                </tbody>
                                             </table>
                                          </div>
                                          <div id="menu_74" class="topicNavigationSideMenu" style="display: none; position: absolute;">
                                             <table class="topicNavigationSideMenuTable" cellpadding="0" cellspacing="0" border="0">
                                                <colgroup>
                                                   <col width="70">
                                                   <col width="70">
                                                </colgroup>
                                                <tbody>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos/bedroom">Bedroom Photos <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup" colspan="2"><span class="topicItem" href="/photos/bedroom">Browse all Bedroom Photos</span></td>
                                                      <td class="topicItemsGroup"></td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos/bedroom-products">Bedroom Products <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/bedding">Bedding</span><span class="topicItem" href="/photos/beds-and-headboards">Beds and Headboards</span><span class="topicItem" href="/photos/nightstands-and-bedside-tables">Nightstands and Bedside Tables</span><span class="topicItem" href="/photos/dressers-chests-and-bedroom-armoires">Dressers Chests and Bedroom Armoires</span><span class="topicItem" href="/photos/bedroom-benches">Bedroom Benches</span></td>
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/table-lamps">Table Lamps</span><span class="topicItem" href="/photos/chandeliers">Chandeliers</span><span class="topicItem" href="/photos/sofa-beds">Sofa Beds</span><span class="topicItem" href="/photos/makeup-mirrors">Makeup Mirrors</span><span class="topicItem" href="/photos/upholstery-fabric">Upholstery Fabric</span></td>
                                                   </tr>
                                                </tbody>
                                             </table>
                                          </div>
                                          <div id="menu_76" class="topicNavigationSideMenu" style="display: none; position: absolute;">
                                             <table class="topicNavigationSideMenuTable" cellpadding="0" cellspacing="0" border="0">
                                                <colgroup>
                                                   <col width="70">
                                                   <col width="70">
                                                </colgroup>
                                                <tbody>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos/living">Living Photos <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/living-room">Living Room</span><span class="topicItem" href="/photos/media-room">Media Room</span></td>
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/family-room">Family Room</span></td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos/living-products">Living Products <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/sofas">Sofas</span><span class="topicItem" href="/photos/sofa-beds">Sofa Beds</span><span class="topicItem" href="/photos/media-storage">Media Storage</span><span class="topicItem" href="/photos/bookcases--cabinets-and-computer-armoires">Bookcases, Cabinets and Computer Armoires</span><span class="topicItem" href="/photos/coffee-and-accent-tables">Coffee and Accent Tables</span><span class="topicItem" href="/photos/ottomans-and-cubes">Ottomans and Cubes</span><span class="topicItem" href="/photos/bar-carts">Bar Carts</span><span class="topicItem" href="/photos/rugs">Rugs</span></td>
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/chairs">Chairs</span><span class="topicItem" href="/photos/day-beds-and-chaises">Day Beds and Chaises</span><span class="topicItem" href="/photos/benches">Benches</span><span class="topicItem" href="/photos/accessories-and-decor">Accessories &amp; Decor Products</span><span class="topicItem" href="/photos/lighting">Lighting Products</span><span class="topicItem" href="/photos/artwork">Artwork</span><span class="topicItem" href="/photos/curtains">Curtains</span><span class="topicItem" href="/photos/fireplace-products">Fireplace Products</span></td>
                                                   </tr>
                                                </tbody>
                                             </table>
                                          </div>
                                          <div id="menu_72" class="topicNavigationSideMenu" style="display: none; position: absolute;">
                                             <table class="topicNavigationSideMenuTable" cellpadding="0" cellspacing="0" border="0">
                                                <colgroup>
                                                   <col width="70">
                                                   <col width="70">
                                                </colgroup>
                                                <tbody>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos/dining">Dining Photos <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup" colspan="2"><span class="topicItem" href="/photos/dining">Browse all Dining Photos</span></td>
                                                      <td class="topicItemsGroup"></td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos/dining-products">Dining Products <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/dining-tables">Dining Tables</span><span class="topicItem" href="/photos/dining-chairs-and-benches">Dining Chairs and Benches</span><span class="topicItem" href="/photos/buffets-and-sideboards">Buffets and Sideboards</span><span class="topicItem" href="/photos/table-linens">Table Linens</span><span class="topicItem" href="/photos/candles-and-candle-holders">Candles and Candle Holders</span><span class="topicItem" href="/photos/vases">Vases</span><span class="topicItem" href="/photos/upholstery-fabric">Upholstery Fabric</span></td>
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/dinnerware">Dinnerware</span><span class="topicItem" href="/photos/flatware">Flatware</span><span class="topicItem" href="/photos/cups-and-glassware">Cups and Glassware</span><span class="topicItem" href="/photos/serveware">Serveware</span><span class="topicItem" href="/photos/barware">Barware</span><span class="topicItem" href="/photos/wine-racks">Wine Racks</span></td>
                                                   </tr>
                                                </tbody>
                                             </table>
                                          </div>
                                          <div id="menu_723" class="topicNavigationSideMenu" style="display: none; position: absolute;">
                                             <table class="topicNavigationSideMenuTable" cellpadding="0" cellspacing="0" border="0">
                                                <colgroup>
                                                   <col width="70">
                                                   <col width="70">
                                                </colgroup>
                                                <tbody>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos/outdoor">Outdoor Photos <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/deck">Deck</span><span class="topicItem" href="/photos/landscape">Landscape</span><span class="topicItem" href="/photos/patio">Patio</span></td>
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/porch">Porch</span><span class="topicItem" href="/photos/pool">Pool</span></td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos/outdoor-products">Outdoor Products <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/outdoor-accessories">Outdoor Accessories</span><span class="topicItem" href="/photos/outdoor-furniture">Outdoor Furniture</span><span class="topicItem" href="/photos/outdoor-fabric">Outdoor Fabric</span><span class="topicItem" href="/photos/garden-decor">Garden Decor</span><span class="topicItem" href="/photos/gardening-and-irrigation">Gardening and Irrigation</span><span class="topicItem" href="/photos/grills">Grills</span><span class="topicItem" href="/photos/firepits">Firepits</span></td>
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/outdoor-lighting">Outdoor Lighting</span><span class="topicItem" href="/photos/sheds-and-studios">Sheds and Studios</span><span class="topicItem" href="/photos/gazebos-and-greenhouses">Gazebos and Greenhouses</span><span class="topicItem" href="/photos/swingsets-and-playsets">Swingsets and Playsets</span><span class="topicItem" href="/photos/swimming-pools-and-spas">Swimming Pools and Spas</span><span class="topicItem" href="/photos/fencing-and-retainer-walls">Fencing and Retainer Walls</span></td>
                                                   </tr>
                                                </tbody>
                                             </table>
                                          </div>
                                          <div id="menu_729" class="topicNavigationSideMenu" style="display: none; position: absolute;">
                                             <table class="topicNavigationSideMenuTable" cellpadding="0" cellspacing="0" border="0">
                                                <colgroup>
                                                   <col width="70">
                                                   <col width="70">
                                                </colgroup>
                                                <tbody>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos/kids">Kids Photos <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup" colspan="2"><span class="topicItem" href="/photos/kids">Browse all Kids Photos</span></td>
                                                      <td class="topicItemsGroup"></td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos/kids-products">Kids Products <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/kids-furniture">Kids Furniture</span><span class="topicItem" href="/photos/nursery-furniture">Nursery Furniture</span><span class="topicItem" href="/photos/cribs-and-beds">Cribs and Beds</span><span class="topicItem" href="/photos/rocking-chairs-and-gliders">Rocking Chairs and Gliders</span><span class="topicItem" href="/photos/kids-lighting">Kids Lighting</span><span class="topicItem" href="/photos/toy-storage">Toy Storage</span><span class="topicItem" href="/photos/toys">Toys</span></td>
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/kids-bedding">Kids Bedding</span><span class="topicItem" href="/photos/baby-bedding">Baby Bedding</span><span class="topicItem" href="/photos/crib-accessories">Crib Accessories</span><span class="topicItem" href="/photos/kids-decor">Kids Decor</span><span class="topicItem" href="/photos/kids-rugs">Kids Rugs</span><span class="topicItem" href="/photos/upholstery-fabric">Upholstery Fabric</span></td>
                                                   </tr>
                                                </tbody>
                                             </table>
                                          </div>
                                          <div id="menu_73" class="topicNavigationSideMenu" style="display: none; position: absolute;">
                                             <table class="topicNavigationSideMenuTable" cellpadding="0" cellspacing="0" border="0">
                                                <colgroup>
                                                   <col width="70">
                                                   <col width="70">
                                                </colgroup>
                                                <tbody>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos/home-office">Home Office Photos <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup" colspan="2"><span class="topicItem" href="/photos/home-office">Browse all Home Office Photos</span></td>
                                                      <td class="topicItemsGroup"></td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos/home-office-products">Home Office Products <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/desks">Desks</span><span class="topicItem" href="/photos/task-chairs">Task Chairs</span><span class="topicItem" href="/photos/filing-cabinets-and-carts">Filing Cabinets and Carts</span><span class="topicItem" href="/photos/bookcases--cabinets-and-computer-armoires">Bookcases, Cabinets and Computer Armoires</span></td>
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/desk-accessories">Desk Accessories</span><span class="topicItem" href="/photos/cable-management">Cable Management</span><span class="topicItem" href="/photos/bulletin-board">Bulletin Board</span><span class="topicItem" href="/photos/waste-baskets">Waste Baskets</span></td>
                                                   </tr>
                                                </tbody>
                                             </table>
                                          </div>
                                          <div id="menu_733" class="topicNavigationSideMenu" style="display: none; position: absolute;">
                                             <table class="topicNavigationSideMenuTable" cellpadding="0" cellspacing="0" border="0">
                                                <colgroup>
                                                   <col width="70">
                                                   <col width="70">
                                                </colgroup>
                                                <tbody>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos/closet">Storage &amp; Closets Photos <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup" colspan="2"><span class="topicItem" href="/photos/closet">Browse all Storage &amp; Closets Photos</span></td>
                                                      <td class="topicItemsGroup"></td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos/storage-and-closets-products">Storage &amp; Closets Products <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/closet-organizers">Closet Organizers</span><span class="topicItem" href="/photos/clothes-and-shoes-organizers">Clothes and Shoes Organizers</span><span class="topicItem" href="/photos/clothes-racks">Clothes Racks</span></td>
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/hooks-and-hangers">Hooks and Hangers</span><span class="topicItem" href="/photos/storage-boxes">Storage Boxes</span><span class="topicItem" href="/photos/baskets">Baskets</span></td>
                                                   </tr>
                                                </tbody>
                                             </table>
                                          </div>
                                          <div id="menu_735" class="topicNavigationSideMenu" style="display: none; position: absolute;">
                                             <table class="topicNavigationSideMenuTable" cellpadding="0" cellspacing="0" border="0">
                                                <colgroup>
                                                   <col width="70">
                                                   <col width="70">
                                                </colgroup>
                                                <tbody>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos/exterior">Exterior Photos <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup" colspan="2"><span class="topicItem" href="/photos/exterior">Browse all Exterior Photos</span></td>
                                                      <td class="topicItemsGroup"></td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos/exterior-products">Exterior Products <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/doormats">Doormats</span><span class="topicItem" href="/photos/house-numbers">House Numbers</span><span class="topicItem" href="/photos/holiday-outdoor-decorations">Holiday Outdoor Decorations</span></td>
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/mailboxes">Mailboxes</span><span class="topicItem" href="/photos/outdoor-lighting">Outdoor Lighting</span></td>
                                                   </tr>
                                                </tbody>
                                             </table>
                                          </div>
                                          <div id="menu_737" class="topicNavigationSideMenu" style="display: none; position: absolute;">
                                             <table class="topicNavigationSideMenuTable" cellpadding="0" cellspacing="0" border="0">
                                                <colgroup>
                                                   <col width="70">
                                                   <col width="70">
                                                </colgroup>
                                                <tbody>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos/lighting">Lighting Products <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/pendant-lighting">Pendant Lighting</span><span class="topicItem" href="/photos/wall-sconces">Wall Sconces</span><span class="topicItem" href="/photos/chandeliers">Chandeliers</span><span class="topicItem" href="/photos/ceiling-lighting">Ceiling Lighting</span><span class="topicItem" href="/photos/track-lighting">Track Lighting</span><span class="topicItem" href="/photos/recessed-lighting">Recessed Lighting</span><span class="topicItem" href="/photos/ceiling-fans">Ceiling Fans</span><span class="topicItem" href="/photos/light-bulbs">Light Bulbs</span></td>
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/table-lamps">Table Lamps</span><span class="topicItem" href="/photos/floor-lamps">Floor Lamps</span><span class="topicItem" href="/photos/lamp-shades">Lamp Shades</span><span class="topicItem" href="/photos/kitchen-lighting-and-cabinet-lighting">Kitchen Lighting and Cabinet Lighting</span><span class="topicItem" href="/photos/bathroom-lighting-and-vanity-lighting">Bathroom Lighting and Vanity Lighting</span><span class="topicItem" href="/photos/kids-lighting">Kids Lighting</span><span class="topicItem" href="/photos/outdoor-lighting">Outdoor Lighting</span></td>
                                                   </tr>
                                                </tbody>
                                             </table>
                                          </div>
                                          <div id="menu_738" class="topicNavigationSideMenu" style="display: none; position: absolute;">
                                             <table class="topicNavigationSideMenuTable" cellpadding="0" cellspacing="0" border="0">
                                                <colgroup>
                                                   <col width="70">
                                                   <col width="70">
                                                </colgroup>
                                                <tbody>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos/accessories-and-decor">Accessories &amp; Decor Products <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/pillows-and-throws">Pillows and Throws</span><span class="topicItem" href="/photos/artwork">Artwork</span><span class="topicItem" href="/photos/frames">Frames</span><span class="topicItem" href="/photos/mirrors">Mirrors</span><span class="topicItem" href="/photos/home-electronics">Home Electronics</span><span class="topicItem" href="/photos/clocks">Clocks</span><span class="topicItem" href="/photos/candles-and-home-fragrances">Candles and Home Fragrances</span><span class="topicItem" href="/photos/wall-shelves">Wall Shelves</span><span class="topicItem" href="/photos/wall-treatments">Wall Treatments</span><span class="topicItem" href="/photos/paints-stains-and-glazes">Paints Stains and Glazes</span></td>
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/rugs">Rugs</span><span class="topicItem" href="/photos/vases">Vases</span><span class="topicItem" href="/photos/books">Books</span><span class="topicItem" href="/photos/magazine-racks">Magazine Racks</span><span class="topicItem" href="/photos/plants--pots-and-indoor-fountains">Plants, Pots and Indoor Fountains</span><span class="topicItem" href="/photos/pet-accessories">Pet Accessories</span><span class="topicItem" href="/photos/fireplace-products">Fireplace Products</span><span class="topicItem" href="/photos/screens-and-wall-dividers">Screens and Wall Dividers</span><span class="topicItem" href="/photos/upholstery-fabric">Upholstery Fabric</span><span class="topicItem" href="/photos/holiday-decorations">Holiday Decorations</span></td>
                                                   </tr>
                                                </tbody>
                                             </table>
                                          </div>
                                          <div id="menu_739" class="topicNavigationSideMenu" style="display: none; position: absolute;">
                                             <table class="topicNavigationSideMenuTable" cellpadding="0" cellspacing="0" border="0">
                                                <colgroup>
                                                   <col width="70">
                                                   <col width="70">
                                                </colgroup>
                                                <tbody>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><a href="photos/floors-windows-and-doors">Floors, Windows &amp; Doors Products <span class="more-icon"></span></a></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/windows">Windows</span><span class="topicItem" href="/photos/skylights">Skylights</span><span class="topicItem" href="/photos/doors">Doors</span><span class="topicItem" href="/photos/knobs">Knobs</span><span class="topicItem" href="/photos/floors">Floors</span></td>
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/curtains">Curtains</span><span class="topicItem" href="/photos/curtain-rods">Curtain Rods</span><span class="topicItem" href="/photos/blinds">Blinds</span><span class="topicItem" href="/photos/cellular-shades">Cellular Shades</span></td>
                                                   </tr>
                                                </tbody>
                                             </table>
                                          </div>
                                          <div id="topicPaneMoreRooms" class="topicNavigationSideMenu" style="display: none;">
                                             <table class="topicNavigationSideMenuTable" cellpadding="0" cellspacing="0" border="0">
                                                <colgroup>
                                                   <col width="70">
                                                   <col width="70">
                                                </colgroup>
                                                <tbody>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><span class="noLinkTopicTitle">More Photos by Room</span></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/basement">Basement</span><span class="topicItem" href="/photos/entry">Entry</span><span class="topicItem" href="/photos/garage-and-shed">Garage and Shed</span><span class="topicItem" href="/photos/home-gym">Gym</span></td>
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/hall">Hall</span><span class="topicItem" href="/photos/laundry-room">Laundry</span><span class="topicItem" href="/photos/staircase">Staircase</span><span class="topicItem" href="/photos/wine-cellar">Wine Cellar</span></td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td colspan="2">
                                                         <div class="topicTitle"><span class="noLinkTopicTitle">More Products by Room</span></div>
                                                      </td>
                                                   </tr>
                                                   <tr valign="top">
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/entry-products">Entry</span><span class="topicItem" href="/photos/garage-and-shed-products">Garage and Shed</span><span class="topicItem" href="/photos/hall-products">Hall</span></td>
                                                      <td class="topicItemsGroup"><span class="topicItem" href="/photos/laundry-products">Laundry</span><span class="topicItem" href="/photos/wine-cellar-products">Wine Cellar</span></td>
                                                   </tr>
                                                </tbody>
                                             </table>
                                          </div>
                                       </div>
                                       <div id="topicHomeImage" style="background-position: 0px 50%;"></div>
                                    </td>
                                 </tr>
                              </tbody>
                           </table>
                        </div>
                        
                     </div>
                  </div>
               </li>
               <li id="navIdeabooks" class="navBlock">
                  <a href="blogs.aspx" class="tabOff">
                     <div class="tabBody"><span class="tabTitle">BLOGS</span></div>
                  </a>
               </li>
               <li id="navDiscussions" class="navBlock">
                  <a href="contactUs.aspx" class="tabOff">
                     <div class="tabBody"><span class="tabTitle">CONTACT US</span></div>
                  </a>
               </li>
               <%--<li id="navSearch" class="navBlock searchMid">
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
               </li>--%>
               <li id="navReg" class="navBlock navBlockDouble">
                  <a href="javascript:void(0);" class="tabOff" onclick="vpb_show_sign_up_box();">
                     <div class="tabBody">
                        <span class="tabTitle">Register&nbsp;&nbsp;&nbsp;</span>
                     </div>
                  </a>
               </li>
               <li id="navLogin" class="navBlock">
                  <a rel="nofollow" class="tabOff" id="headerSignIn" href="javascript:void(0);" onclick="vpb_show_login_box();">
                     <div class="tabBody">
                        <span class="tabTitle">Sign In</span>
                     </div>
                  </a>
               </li>
            </ul>
         </div>
      </div>
   </div>
   <!-- <div class="signUpPromoContainer signUpPromoVersion_vis bs2">
      <div class="hider"></div>
      <div class="promoImage"></div>
      <div class="text">
       <div class="line ms500">Houzz is the new way to design your home.</div>
       <div class="line2"></div>
      </div>
      <div id="btnBs2" class="button">
                   <a class="hzBtn primary" href="javascript:;" onclick="HZ.auth.Manager.signup(74);" style="font-size:20px;line-height: 30px;">Sign Up <span class="more-icon"></span></a>			        </div>
       </div>-->
</div>
<center>
   <div id="vpb_pop_up_background"></div>
   <!-- General Pop-up Background -->
   <!-- Sign Up Box Starts Here -->
   <div id="vpb_signup_pop_up_box">
      <div align="left" style="font-family:proxima-nova; font-size:6px; font-weight:bold;">Register</div>
      <br clear="all">
      <!--<div align="left" style="font-family:proxima-nova; font-size:px;">To exit this sign-up box, click on the cancel button or outside this box..</div><br clear="all"><br clear="all">-->
      <!--<div style="width:00px; padding-top:0px;margin-left:0px;float:left;" align="left">Your Fullname:</div>
         <div style="width:300px;float:left;" align="left"><input type="text" id="fullnames" name="fullnames" value="" class="vpb_textAreaBoxInputs"></div><br clear="all"><br clear="all">-->
      <div style="width:00px; padding-top:0px;margin-left:0px;float:left;" align="left">Register As:</div>
      <div style="width:300px;float:left;" align="left">
         <!--<input type="text" id="usernames" name="usernames" value="" class="vpb_textAreaBoxInputs">-->
         <asp:DropDownList ID="rdUserType" runat="server"  RepeatDirection="Horizontal" Font-Size="Small" >
            <asp:ListItem Value="1">Designer</asp:ListItem>
            <asp:ListItem Value="2">Contractor</asp:ListItem>
            <asp:ListItem Value="3">Supplier</asp:ListItem>
         </asp:DropDownList>
      </div>
      <br clear="all"><br clear="all">
      <div style="width:00px; padding-top:0px;margin-left:0px;float:left;" align="left">Email</div>
      <div style="width:300px;float:left;" align="left"><input type="text" id="emails" name="emails" value="" class="vpb_textAreaBoxInputs" runat="server"></div>
      <br clear="all"><br clear="all">
      <div style="width:00px; padding-top:0px;margin-left:0px;float:left;" align="left">Password:</div>
      <div style="width:300px;float:left;" align="left"><input type="password" id="passs" name="passs" value="" class="vpb_textAreaBoxInputs" runat="server"></div>
      <br clear="all"><br clear="all">
      <div style="width:00px; padding-top:0px;margin-left:0px;float:left;" align="left">Confirm Password:</div>
      <div style="width:300px;float:left;" align="left"><input type="password" id="confirmPass" name="confirmPass" value="" class="vpb_textAreaBoxInputs" runat="server"></div>
      <br clear="all"><br clear="all">
      <div style="width:00px; padding-top:0px;margin-left:0px;float:left;" align="left">&nbsp;</div>
      <div style="width:300px;float:left;" align="left">
         <!--<a href="javascript:void(0);" class="vpb_general_button" onClick="alert('Hello There!\n\n There is no functionality associated with the button you have just clicked. \n\nThis is just a demonstration of Pop-up Boxes and that\'s all.\n\nThanks.');">Submit</a>
            <a href="javascript:void(0);" class="vpb_general_button" onClick="vpb_hide_popup_boxes();">Cancel</a>-->
         <asp:Button ID="Button"  class="vpb_general_button" Text="Register" runat="server"  OnClick="Register_Click"/>
         <asp:Button ID="Button2" class="vpb_general_button" Text="Cancel" runat="server" OnClientClick="vpb_hide_popup_boxes();" />
      </div>
      <br clear="all"><br clear="all">
       
   </div>
   <!-- Sign Up Box Ends Here -->
   <!-- Login Box Starts Here -->
   <div id="vpb_login_pop_up_box" class="vpb_signup_pop_up_box">
      <div align="left" style="font-family:proxima-nova; font-size:6px; font-weight:bold;">Sign In</div>
      <br clear="all">
      <!--<div align="left" style="font-family:proxima-nova; font-size:px;">To exit this login box, click on the cancel button or outside this box..</div><br clear="all"><br clear="all">-->
      <div style="width:00px; padding-top:0px;margin-left:0px;float:left;" align="left">Your Username:</div>
      <div style="width:300px;float:left;" align="left"><input type="text" id="txtUserName" name="usernames" value="" class="vpb_textAreaBoxInputs" runat="server"></div>
      <br clear="all"><br clear="all">
      <div style="width:00px; padding-top:0px;margin-left:0px;float:left;" align="left">Your Password:</div>
      <div style="width:300px;float:left;" align="left"><input type="password" id="txtPassword" name="passs" value="" class="vpb_textAreaBoxInputs" runat="server"></div>
      <br clear="all"><br clear="all">
      <div align="left" style="width:300px;float:right; margin-right: 37px;margin-top: -47px;">
         <div id="signinCenterCol" style="width:00px; padding-top:0px;margin-left:0px;float:right;">	
            <img src="../../resources/images/partition.png" />
         </div>
         <div style="min-width:0px"><asp:Button ID="btnLogin" runat="server" Text="Login with FaceBook" OnClick="Login" /></div>
      </div>
      <div style="width:00px; padding-top:0px;margin-left:0px;float:left;" align="left">&nbsp;</div>
      <div style="width:300px;float:left;margin-top: -47px;" align="left">
         <!--<a href="javascript:void(0);" class="vpb_general_button" onClick="alert(hi);">Sign In</a> 
            <a href="javascript:void(0);" class="vpb_general_button" onClick="vpb_hide_popup_boxes();">Cancel</a>-->
         <asp:Button ID="Button1" class="vpb_general_button" Text="Sign In" runat="server" OnClick="Login_Click"/>
         <asp:Button ID="Button3" class="vpb_general_button" Text="Cancel" runat="server" OnClientClick="vpb_hide_popup_boxes();" />
      </div>
   </div>
   <!-- Login Box Ends Here -->
   <!-- Code Ends -->
   <p style="margin-bottom:500px;"></p>
</center>