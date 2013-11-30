// <script>
/*
	Country State Drop Downs v..  

	(c) Copyright 2006 by Down Home Consulting, Inc (www.DownHomeConsulting.com)

	Permission is hereby granted, free of charge, to any person obtaining a
	copy of this software and associated documentation files (the "Software"),
	to deal in the Software without restriction, including without limitation
	the rights to use, copy, modify, merge, publish, distribute, sublicense,
	and/or sell copies of the Software, and to permit persons to whom the
	Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included
	in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
	OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	ITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
	FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
	DEALINGS IN THE SOFTWARE.


	To install, add the following to the top of your page paste the html between the 
   form tags from demo2.html or demo.html into your page.

*/


// State table
// 
// To edit the list, just delete a line or add a line.  Order is important.  The order 
// displayed is the order it appears on the drop down.
//
var state = '\
US:AK:Alaska|\
US:AL:Alabama|\
US:AR:Arkansas|\
US:AS:American Samoa|\
US:AZ:Arizona|\
US:CA:California|\
US:CO:Colorado|\
US:CT:Connecticut|\
US:DC:D.C.|\
US:DE:Delaware|\
US:FL:Florida|\
US:FM:Micronesia|\
US:GA:Georgia|\
US:GU:Guam|\
US:HI:Hawaii|\
US:IA:Iowa|\
US:ID:Idaho|\
US:IL:Illinois|\
US:IN:Indiana|\
US:KS:Kansas|\
US:KY:Kentucky|\
US:LA:Louisiana|\
US:MA:Massachusetts|\
US:MD:Maryland|\
US:ME:Maine|\
US:MH:Marshall Islands|\
US:MI:Michigan|\
US:MN:Minnesota|\
US:MO:Missouri|\
US:MP:Marianas|\
US:MS:Mississippi|\
US:MT:Montana|\
US:NC:North Carolina|\
US:ND:North Dakota|\
US:NE:Nebraska|\
US:NH:New Hampshire|\
US:NJ:New Jersey|\
US:NM:New Mexico|\
US:NV:Nevada|\
US:NY:New York|\
US:OH:Ohio|\
US:OK:Oklahoma|\
US:OR:Oregon|\
US:PA:Pennsylvania|\
US:PR:Puerto Rico|\
US:PW:Palau|\
US:RI:Rhode Island|\
US:SC:South Carolina|\
US:SD:South Dakota|\
US:TN:Tennessee|\
US:TX:Texas|\
US:UT:Utah|\
US:VA:Virginia|\
US:VI:Virgin Islands|\
US:VT:Vermont|\
US:WA:Washington|\
US:WI:Wisconsin|\
US:WV:West Virginia|\
US:WY:Wyoming|\
US:AA:Military Americas|\
US:AE:Military Europe/ME/Canada|\
US:AP:Military Pacific|\
CA:AB:Alberta|\
CA:MB:Manitoba|\
CA:AB:Alberta|\
CA:BC:British Columbia|\
CA:MB:Manitoba|\
CA:NB:New Brunswick|\
CA:NL:Newfoundland and Labrador|\
CA:NS:Nova Scotia|\
CA:NT:Northwest Territories|\
CA:NU:Nunavut|\
CA:ON:Ontario|\
CA:PE:Prince Edward Island|\
CA:QC:Quebec|\
CA:SK:Saskatchewan|\
CA:YT:Yukon Territory|\
AU:AAT:Australian Antarctic Territory|\
AU:ACT:Australian Capital Territory|\
AU:NT:Northern Territory|\
AU:NSW:New South Wales|\
AU:QLD:Queensland|\
AU:SA:South Australia|\
AU:TAS:Tasmania|\
AU:VIC:Victoria|\
AU:WA:Western Australia|\
BR:AC:Acre|\
BR:AL:Alagoas|\
BR:AM:Amazonas|\
BR:AP:Amapa|\
BR:BA:Baia|\
BR:CE:Ceara|\
BR:DF:Distrito Federal|\
BR:ES:Espirito Santo|\
BR:FN:Fernando de Noronha|\
BR:GO:Goias|\
BR:MA:Maranhao|\
BR:MG:Minas Gerais|\
BR:MS:Mato Grosso do Sul|\
BR:MT:Mato Grosso|\
BR:PA:Para|\
BR:PB:Paraiba|\
BR:PE:Pernambuco|\
BR:PI:Piaui|\
BR:PR:Parana|\
BR:RJ:Rio de Janeiro|\
BR:RN:Rio Grande do Norte|\
BR:RO:Rondonia|\
BR:RR:Roraima|\
BR:RS:Rio Grande do Sul|\
BR:SC:Santa Catarina|\
BR:SE:Sergipe|\
BR:SP:Sao Paulo|\
BR:TO:Tocatins|\
NL:DR:Drente|\
NL:FL:Flevoland|\
NL:FR:Friesland|\
NL:GL:Gelderland|\
NL:GR:Groningen|\
NL:LB:Limburg|\
NL:NB:Noord Brabant|\
NL:NH:Noord Holland|\
NL:OV:Overijssel|\
NL:UT:Utrecht|\
NL:ZH:Zuid Holland|\
NL:ZL:Zeeland|\
GB:AVON:Avon|\
GB:BEDS:Bedfordshire|\
GB:BERKS:Berkshire|\
GB:BUCKS:Buckinghamshire|\
GB:CAMBS:Cambridgeshire|\
GB:CHESH:Cheshire|\
GB:CLEVE:Cleveland|\
GB:CORN:Cornwall|\
GB:CUMB:Cumbria|\
GB:DERBY:Derbyshire|\
GB:DEVON:Devon|\
GB:DORSET:Dorset|\
GB:DURHAM:Durham|\
GB:ESSEX:Essex|\
GB:GLOUS:Gloucestershire|\
GB:GLONDON:Greater London|\
GB:GMANCH:Greater Manchester|\
GB:HANTS:Hampshire|\
GB:HERWOR:Hereford & Worcestershire|\
GB:HERTS:Hertfordshire|\
GB:HUMBER:Humberside|\
GB:IOM:Isle of Man|\
GB:IOW:Isle of Wight|\
GB:KENT:Kent|\
GB:LANCS:Lancashire|\
GB:LEICS:Leicestershire|\
GB:LINCS:Lincolnshire|\
GB:MERSEY:Merseyside|\
GB:NORF:Norfolk|\
GB:NHANTS:Northamptonshire|\
GB:NTHUMB:Northumberland|\
GB:NOTTS:Nottinghamshire|\
GB:OXON:Oxfordshire|\
GB:SHROPS:Shropshire|\
GB:SOM:Somerset|\
GB:STAFFS:Staffordshire|\
GB:SUFF:Suffolk|\
GB:SURREY:Surrey|\
GB:SUSS:Sussex|\
GB:WARKS:Warwickshire|\
GB:WMID:West Midlands|\
GB:WILTS:Wiltshire|\
GB:YORK:Yorkshire|\
IE:CO ANTRIM:County Antrim|\
IE:CO ARMAGH:County Armagh|\
IE:CO DOWN:County Down|\
IE:CO FERMANAGH:County Fermanagh|\
IE:CO DERRY:County Londonderry|\
IE:CO TYRONE:County Tyrone|\
IE:CO CAVAN:County Cavan|\
IE:CO DONEGAL:County Donegal|\
IE:CO MONAGHAN:County Monaghan|\
IE:CO DUBLIN:County Dublin|\
IE:CO CARLOW:County Carlow|\
IE:CO KILDARE:County Kildare|\
IE:CO KILKENNY:County Kilkenny|\
IE:CO LAOIS:County Laois|\
IE:CO LONGFORD:County Longford|\
IE:CO LOUTH:County Louth|\
IE:CO MEATH:County Meath|\
IE:CO OFFALY:County Offaly|\
IE:CO WESTMEATH:County Westmeath|\
IE:CO WEXFORD:County Wexford|\
IE:CO WICKLOW:County Wicklow|\
IE:CO GALWAY:County Galway|\
IE:CO MAYO:County Mayo|\
IE:CO LEITRIM:County Leitrim|\
IE:CO ROSCOMMON:County Roscommon|\
IE:CO SLIGO:County Sligo|\
IE:CO CLARE:County Clare|\
IE:CO CORK:County Cork|\
IE:CO KERRY:County Kerry|\
IE:CO LIMERICK:County Limerick|\
IE:CO TIPPERARY:County Tipperary|\
IE:CO WATERFORD:County Waterford|\
';

// Country data table
//
// 
// To edit the list, just delete a line or add a line.  Order is important.  The order 
// displayed is the order it appears on the drop down.
//
var country = '\
AF:Afghanistan|\
AL:Albania|\
DZ:Algeria|\
AS:American Samoa|\
AD:Andorra|\
AO:Angola|\
AI:Anguilla|\
AQ:Antarctica|\
AG:Antigua and Barbuda|\
AR:Argentina|\
AM:Armenia|\
AW:Aruba|\
AU:Australia|\
AT:Austria|\
AZ:Azerbaijan|\
AP:Azores|\
BS:Bahamas|\
BH:Bahrain|\
BD:Bangladesh|\
BB:Barbados|\
BY:Belarus|\
BE:Belgium|\
BZ:Belize|\
BJ:Benin|\
BM:Bermuda|\
BT:Bhutan|\
BO:Bolivia|\
BA:Bosnia And Herzegowina|\
BW:Botswana|\
BV:Bouvet Island|\
BR:Brazil|\
IO:British Indian Ocean Territory|\
VG:British Virgin Islands|\
BN:Brunei Darussalam|\
BG:Bulgaria|\
BF:Burkina Faso|\
BI:Burundi|\
KH:Cambodia|\
CM:Cameroon|\
CA:Canada|\
CV:Cape Verde|\
KY:Cayman Islands|\
CF:Central African Republic|\
TD:Chad|\
CL:Chile|\
CN:China|\
CX:Christmas Island|\
CC:Cocos (Keeling) Islands|\
CO:Colombia|\
KM:Comoros|\
CG:Congo|\
CD:Congo, The Democratic Republic O|\
CK:Cook Islands|\
XE:Corsica|\
CR:Costa Rica|\
CI:Cote d`Ivoire (Ivory Coast)|\
HR:Croatia|\
CU:Cuba|\
CY:Cyprus|\
CZ:Czech Republic|\
DK:Denmark|\
DJ:Djibouti|\
DM:Dominica|\
DO:Dominican Republic|\
TP:East Timor|\
EC:Ecuador|\
EG:Egypt|\
SV:El Salvador|\
GQ:Equatorial Guinea|\
ER:Eritrea|\
EE:Estonia|\
ET:Ethiopia|\
FK:Falkland Islands (Malvinas)|\
FO:Faroe Islands|\
FJ:Fiji|\
FI:Finland|\
FR:France|\
GF:French Guiana|\
PF:French Polynesia|\
TF:French Southern Territories|\
GA:Gabon|\
GM:Gambia|\
GE:Georgia|\
DE:Germany|\
GH:Ghana|\
GI:Gibraltar|\
GR:Greece|\
GL:Greenland|\
GD:Grenada|\
GP:Guadeloupe|\
GU:Guam|\
GT:Guatemala|\
GN:Guinea|\
GW:Guinea-Bissau|\
GY:Guyana|\
HT:Haiti|\
HM:Heard And Mc Donald Islands|\
HN:Honduras|\
HK:Hong Kong|\
HU:Hungary|\
IS:Iceland|\
IN:India|\
ID:Indonesia|\
IR:Iran|\
IQ:Iraq|\
IE:Ireland|\
IL:Israel|\
IT:Italy|\
JM:Jamaica|\
JP:Japan|\
JO:Jordan|\
KZ:Kazakhstan|\
KE:Kenya|\
KI:Kiribati|\
KP:Korea, Democratic People\'s Repub|\
KW:Kuwait|\
KG:Kyrgyzstan|\
LA:Laos|\
LV:Latvia|\
LB:Lebanon|\
LS:Lesotho|\
LR:Liberia|\
LY:Libya|\
LI:Liechtenstein|\
LT:Lithuania|\
LU:Luxembourg|\
MO:Macao|\
MK:Macedonia|\
MG:Madagascar|\
ME:Madeira Islands|\
MW:Malawi|\
MY:Malaysia|\
MV:Maldives|\
ML:Mali|\
MT:Malta|\
MH:Marshall Islands|\
MQ:Martinique|\
MR:Mauritania|\
MU:Mauritius|\
YT:Mayotte|\
MX:Mexico|\
FM:Micronesia, Federated States Of|\
MD:Moldova, Republic Of|\
MC:Monaco|\
MN:Mongolia|\
MS:Montserrat|\
MA:Morocco|\
MZ:Mozambique|\
MM:Myanmar (Burma)|\
NA:Namibia|\
NR:Nauru|\
NP:Nepal|\
NL:Netherlands|\
AN:Netherlands Antilles|\
NC:New Caledonia|\
NZ:New Zealand|\
NI:Nicaragua|\
NE:Niger|\
NG:Nigeria|\
NU:Niue|\
NF:Norfolk Island|\
MP:Northern Mariana Islands|\
NO:Norway|\
OM:Oman|\
PK:Pakistan|\
PW:Palau|\
PS:Palestinian Territory|\
PA:Panama|\
PG:Papua New Guinea|\
PY:Paraguay|\
PE:Peru|\
PH:Philippines|\
PN:Pitcairn|\
PL:Poland|\
PT:Portugal|\
PR:Puerto Rico|\
QA:Qatar|\
RE:Reunion|\
RO:Romania|\
RU:Russian Federation|\
RW:Rwanda|\
KN:Saint Kitts And Nevis|\
SM:San Marino|\
ST:Sao Tome and Principe|\
SA:Saudi Arabia|\
SN:Senegal|\
XS:Serbia-Montenegro|\
SC:Seychelles|\
SL:Sierra Leone|\
SG:Singapore|\
SK:Slovak Republic|\
SI:Slovenia|\
SB:Solomon Islands|\
SO:Somalia|\
ZA:South Africa|\
GS:South Georgia And The South Sand|\
KR:South Korea|\
ES:Spain|\
LK:Sri Lanka|\
NV:St. Christopher and Nevis|\
SH:St. Helena|\
LC:St. Lucia|\
PM:St. Pierre and Miquelon|\
VC:St. Vincent and the Grenadines|\
SD:Sudan|\
SR:Suriname|\
SJ:Svalbard And Jan Mayen Islands|\
SZ:Swaziland|\
SE:Sweden|\
CH:Switzerland|\
SY:Syrian Arab Republic|\
TW:Taiwan|\
TJ:Tajikistan|\
TZ:Tanzania|\
TH:Thailand|\
TG:Togo|\
TK:Tokelau|\
TO:Tonga|\
TT:Trinidad and Tobago|\
XU:Tristan da Cunha|\
TN:Tunisia|\
TR:Turkey|\
TM:Turkmenistan|\
TC:Turks and Caicos Islands|\
TV:Tuvalu|\
UG:Uganda|\
UA:Ukraine|\
AE:United Arab Emirates|\
GB:United Kingdom|\
US:United States|\
UM:United States Minor Outlying Isl|\
UY:Uruguay|\
UZ:Uzbekistan|\
VU:Vanuatu|\
VA:Vatican City|\
VE:Venezuela|\
VN:Vietnam|\
VI:Virgin Islands (U.S.)|\
WF:Wallis and Furuna Islands|\
EH:Western Sahara|\
WS:Western Samoa|\
YE:Yemen|\
YU:Yugoslavia|\
ZR:Zaire|\
ZM:Zambia|\
ZW:Zimbabwe\
';

// Save the country & state field names
var countryFieldCfgArray = $("#cs_config_country_field").val().split(' ');
var stateFieldCfgArray   = $("#cs_config_state_field").val().split(' ');
var metroFieldCfgArray   = $("#cs_config_metro_field").val()?$("#cs_config_metro_field").val().split(' '):[];

// Save the names of the fields that hold the country & state default values
var countryDefaultCfgArray = $("#cs_config_country_default").val().split(' ');
var stateDefaultCfgArray   = $("#cs_config_state_default").val().split(' ');
var metroDefaultCfgArray   = $("#cs_config_metro_default").val()?$("#cs_config_metro_default").val().split(' '):[];

var USShippingExcludedStates = ['AK','AS','GU','HI','MH','MP','PR','PW','VI','AA','AE','AP'];
var USPaymentExcludedStates = ['AS','GU','MH','MP','PR','PW','VI','AA','AE','AP'];

var defaultState = false;
var defaultCountry = false;
var defaultMetro = false;

// Populates the country select with the counties from the country list
//
function populateCountry(idName) {

   var countryLineArray = country.split('|');      // Split into lines
   var $selObj = $("#"+idName);
   var selObj = $selObj.length > 0 ? $selObj[0] : null;
   var lineArray, 
		countryCode, 
		countryName;

   selObj.options[0] = new Option('Select Country','');
   selObj.selectedIndex = 0;

   for (var loop = 0; loop < countryLineArray.length; loop++) {

      lineArray = countryLineArray[loop].split(':');

      countryCode  = $.trim(lineArray[0]);
      countryName  = $.trim(lineArray[]);
   
      if ( countryCode != '' ) {

         selObj.options[loop + ] = new Option(countryName, countryCode);
      }

      if ( defaultCountry == countryCode ) {

         selObj.selectedIndex = loop + ;
      }
   }
}
function populateState( stateIdName, countryIdName, excludedStates ) {
   var foundState = false,
		lineArray,
		countryCode,
		stateCode,
		stateName,
		selObj,
		$selObj;
		
   $selObj = $("#"+stateIdName);
   selObj = $selObj.length > 0 ? $selObj[0] : null;
   
   if(!selObj) {
	   // State is not applicable for this user. Shouldn't happen.
	   return;
   }
   // Empty options just in case new drop down is shorter
   //
   if ( selObj.type == 'select-one' ) {

      selObj.options.length = 0;

      selObj.options[0] = new Option('Select State','');
      selObj.selectedIndex = 0;
   }
   // Populate the drop down with states from the selected country
   //
   var stateLineArray   = state.split("|");        // Split into lines

   var optionCntr = ;

   for (var loop = 0; loop < stateLineArray.length; loop++) {

      lineArray = stateLineArray[loop].split(":");

      countryCode  = $.trim(lineArray[0]);
      stateCode    = $.trim(lineArray[]);
      stateName    = $.trim(lineArray[2]);
	  if(excludedStates && countryCode == 'US' && ($.inArray(stateCode, excludedStates) >= 0)) {
		continue;
	  }
	


      if ( $("#"+countryIdName).val() == countryCode && countryCode != '' ) {

         // If it's a input element, change it to a select
         //
         if ( selObj.type == 'text' ) {
			
			var inputSel = $("<SELECT>").attr({name: "state",
				id: stateIdName});
			
			$("#"+stateIdName).replaceWith(inputSel);
			
            selObj = $("#"+stateIdName).length > 0 ? $("#"+stateIdName)[0] : null;
            selObj.options[0] = new Option('Select State','');
            selObj.selectedIndex = 0;
         }
		 
		 switch(countryCode) {
			case 'CA':
				selObj.options[0] = new Option('Select Province','');
				break;
			case 'GB':
				selObj.options[0] = new Option('Select County','');
				break;
			case 'UK':
				selObj.options[0] = new Option('Select County','');
				break;
		 }
   
         if ( stateCode != '' ) {

            selObj.options[optionCntr] = new Option(stateName, stateCode);
         }
         // See if it's selected from a previous post
         //
         if ( stateCode == defaultState && countryCode == defaultCountry ) {

            selObj.selectedIndex = optionCntr;
         }
         foundState = true;
         optionCntr++
      }
   }
   // If the country has no states, change the select to a text box
   //
   if ( ! foundState ) {

   }
}

function populateMetro(metroIdName, countryIdName) {
	var foundMetro = false,
		lineArray,
		metroLineArray,
		selObj,
		$selObj,
		countryCode,
		metroCode,
		metroName,
		otherMetroCode,
		otherMetroName;
		
   $selObj = $("#"+metroIdName);
   selObj = $selObj.length > 0 ? $selObj[0] : null;
   
   if(!selObj) {
	   // Metro is not applicable for this user
	   return;
   }

   // Empty options just in case new drop down is shorter
   //
   if ( selObj.type == 'select-one' ) {
      selObj.options.length = 0;
      selObj.options[0] = new Option('Choose metro area...',0);
      selObj.selectedIndex = 0;
   }
   // Populate the drop down with states from the selected country
   //
   var metroLineArray   = countryMetroMap.split("|");        // Split into lines

   var optionCntr = ;
   
   var selectedCountry = $("#"+countryIdName).val();

   for (var loop = 0; loop < metroLineArray.length; loop++) {

      lineArray = metroLineArray[loop].split(":");

      countryCode  = $.trim(lineArray[0]);
      metroCode    = $.trim(lineArray[]);
      metroName    = $.trim(lineArray[2]);
	  
	  if(countryCode == "*") {
		  otherMetroCode = metroCode;
		  otherMetroName = metroName;
	  } else if (selectedCountry == "" || selectedCountry == countryCode && countryCode != '' ) {
            selObj.options[optionCntr] = new Option(metroName, metroCode);
         // See if it's selected from a previous post
         //
         if ( metroCode == defaultMetro && countryCode == defaultCountry ) {
            selObj.selectedIndex = optionCntr;
         }
         foundMetro = true;
         optionCntr++
      }
   }
   selObj.options[optionCntr] = new Option(otherMetroName, otherMetroCode);
   if ( otherMetroCode == defaultMetro) {
		selObj.selectedIndex = optionCntr;
	}
   // If the country has no states, change the select to a text box
   //
   if ( ! foundMetro ) {

   }
}

// Called when state drop down is changed
// 
function updateState( countryIdNameIn ) {

   for (var loop = 0; loop < countryFieldCfgArray.length; loop++) {
   
      countryIdName  = countryFieldCfgArray[loop];
      stateIdName    = stateFieldCfgArray[loop];

      // Read the default value hidden fields
      defaultCountry = $("#"+countryDefaultCfgArray[loop]).val();
      defaultState   = $("#"+stateDefaultCfgArray[loop]).val();

      if ( countryIdNameIn == countryIdName ) {
		  
         populateState( stateIdName, countryIdName );
      }
   }
}

function updateMetro(countryIdNameIn) {
	for (var loop = 0; loop < countryFieldCfgArray.length; loop++) {
   
      countryIdName  = countryFieldCfgArray[loop];
      stateIdName    = metroFieldCfgArray[loop];

      // Read the default value hidden fields
      defaultCountry = $("#"+countryDefaultCfgArray[loop]).val();
      defaultMetro   = $("#"+metroDefaultCfgArray[loop]).val();

      if ( countryIdNameIn == countryIdName ) {
		  var countryCode = $("#"+countryIdName).val();
		  if(countryCode=='US') {
			  $("#"+metroIdName).closest(".control-group").hide();
		  } else {
			  $("#"+metroIdName).closest(".control-group").show();
		  }
		  populateMetro( metroIdName, countryIdName );
      }
   }
}
// Initialize the drop downs
// 
function initCountry() {

   for (var loop = 0; loop < countryFieldCfgArray.length; loop++) {
   
      countryIdName  = countryFieldCfgArray[loop];
      stateIdName    = stateFieldCfgArray[loop];
	  metroIdName	 = metroFieldCfgArray[loop];

      // Read the default value hidden fields
      defaultCountry = $("#"+countryDefaultCfgArray[loop]).val();
      defaultState   = $("#"+stateDefaultCfgArray[loop]).val();
	  defaultMetro	 = $("#"+metroDefaultCfgArray[loop]).val();

      populateCountry( countryIdName);
      populateState( stateIdName, countryIdName );
	  if(metroIdName && countryIdName) {
		populateMetro(metroIdName, countryIdName);
	  }
   }
}

