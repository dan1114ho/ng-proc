<% 
Response.ContentType = "text/html;charset=UTF-8"
Response.CacheControl = "private,max-age=86400"
' Response.AddHeader "Pragma", "no-cache"
Response.Expires = 86400

'Trace Timers
loadTime = Timer
thisTime = Timer
TotalLoad = ""
isScalearcReady = true
%>
<!DOCTYPE html>
<html lang="en">
<head>
<!--<meta charset="UTF-8">-->
<%
' define this page
PageSection = "index"
PageMessage = ""
bePublic = true
set_item_number = "CR3B3MBCTC-PROF_FSLLC-100R-8-E1"

isLandingPage = true
isCreditMonitoring = true
showContactUsModal = true


%>

<!-- #include file="../_inc_landing_header.asp" -->
<!-- #include file="../_inc_landing_ABNtracking.asp" -->
<!-- #include file="../../_inc_item_flags_scalearc.asp" -->

<!--[if IE]>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
<![endif]-->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title><%=usr_Title%></title>
	<%if len(usr_Meta_Custom) > 0 then %><%=usr_Meta_Custom%><%end if%>
	<meta http-equiv="x-dns-prefetch-control" content="on">
	<meta data-scalearcready="<%=isScalearcReady %>" data-scalearcmode="<%=scalearcMode %>" />
	
	<link rel="dns-prefetch" href="https://fonts.googleapis.com">
	<link rel="dns-prefetch" href="https://cdnjs.cloudflare.com/">
	<link rel="dns-prefetch" href="https://www.w3m.com/">
	<link rel="dns-prefetch" href="https://cdnjs.cloudflare.com/">
	
	<link rel="preload" as="style" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="preload" as="style" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
	<%if domain <> "check3scores.com" then%>
	<link rel="preload" as="script" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js">
	<link rel="preload" as="script" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js">
	<%else%>
	<link rel="preload" as="script" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js">
	<%end if%>
	<link rel="preload" as="script" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.js">
	
	<!-- <link rel="stylesheet" href="./css/bootstrap.css"> -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet'>
	<style>
		.container{max-width:1006px;}.header{padding:1em 0 0;background: #fafafa;width:100%;}img.img-center{margin:0 auto;}h1,h2,h3,h5,p,input,label,legend,button{font-family:'Open Sans',sans-serif;}.cont1 h1{font-size:38px;font-weight:300;margin:10px 0;}.cont1 h1 span{font-weight:700;color:#00bbd3;}.cont1 h2{font-size:28px;font-weight:300;margin:10px 0 20px;}.cont1 h2 span{font-weight:700;}.lowmargin{margin-bottom:0;}.nopaddingleftright{padding-left:0;padding-right:0;}.cont3{z-index:1;background:#00bbd3;width:100%;padding-top:5rem;margin-top:10rem;}.formcont{background:#fff;padding:1em 3em;border-radius:8px;margin-top:-8em;border:1px solid #ddd;}.formcont legend{color:#f34235;text-align: center;font-weight: 800;font-size: 28px;border-bottom:none;}img.img-right{float:right;}.nopaddingright{padding-right:0;}.form-control{border-radius:1000px;height:44px;color:#333;}label.authtomarket{padding:0 2em;margin-bottom:.25em;font-size:.75em;font-weight:400;text-align: center;color:#333;}label.authtomarket input{vertical-align:sub;width:16px;height:16px;position: absolute;left:48px;}button.scores{overflow:hidden;position:relative;background:#f34235;border-radius: 1000px;font-size:20px;color:#fff;font-weight:800;border:none;text-align: left;padding:.75em 0 .75em 1em;width:100%;}img.arrow{position: absolute;top:-124px;left:-24px;}img.onemillionbadge{position:absolute;right:-30px;top:-132px;}.cont4{background:#094056;width:100%;padding:4em 0 1em;margin-top:-4em;}.cont4 h5{color:#fff;font-size:12px;text-transform: uppercase;margin-top:2em;}.rightcont{background:#fff;border-radius:0 8px 8px 0;width:100%;padding:0 0 1em;}.rightcont h5{background:#094056;text-align: center;color:#fff;font-weight: 700;font-size:24px;padding:.5em 0;margin-top:0;border-radius:0 8px 0 0 ;}.nopaddingleft{padding-left:0;}.rightcont .inner{background:#fff;width:100%;height:100%;padding-bottom:.5em;}.rightcont p{font-size:16px;color:#094056;padding:0 2em;margin-top:1em;}.cont5{margin-top:2em;}.cont5 h5{font-size:13px;font-weight: 800;text-transform: uppercase;}.cont5 p{font-size:13px;font-weight:400; }.footer{margin-top:3em;background:#fcfcfc;padding:2em 0 5em;}.footer ul.links{overflow:hidden;float:right;margin-left:0;padding-left:0;}.footer ul.links li{list-style-type: none;float:left;margin-right:4px;text-transform: uppercase;}.footer p.copyright{margin-top:4px;}.footer ul.links li a{color:#333;font-size:10px;font-weight:700;}.footer ul.links li:after{content: " |";}.footer ul.links li:last-child:after{content:none;}.footer .disclaimer .content p{color:#878787;font-size:10px;font-weight:400;text-transform: inherit;}.footer .disclaimer{margin-top:3em;}.leftcont,.rightcont{margin-top:1em;}.rightcont .head{padding:.125em;background:#ddf8fb;border-radius:0 8px 0 0;}.header img.bureaus{float:right;margin-top:0.5em;}.cont2 p{font-size:12px;}.rightcont .inner ul{padding:.5em 0 0 1.5em;margin:0;}.rightcont .inner ul li{list-style-type:none;font-size:14px;color:#094056;font-family:'Open Sans',sans-serif;margin-bottom:12px;}.rightcont .inner ul li img{vertical-align: sub}@font-face{font-family:'Glyphicons Halflings';src:url(./fonts/glyphicons-halflings-regular.eot);src:url(./fonts/glyphicons-halflings-regular.eot?#iefix) format('embedded-opentype'),url(./fonts/glyphicons-halflings-regular.woff2) format('woff2'),url(./fonts/glyphicons-halflings-regular.woff) format('woff'),url(./fonts/glyphicons-halflings-regular.ttf) format('truetype'),url(./fonts/glyphicons-halflings-regular.svg#glyphicons_halflingsregular) format('svg')}.glyphicon{position:relative;top:1px;display:inline-block;font-family:'Glyphicons Halflings';font-style:normal;font-weight:400;line-height:1;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.glyphicon-play-circle:before{content:"\e029"}button.scores span{-webkit-animation:ripple .6s linear infinite;animation:ripple .6s linear infinite;position:absolute;right:8%;top:50%;-webkit-transform:translateY(-50%);-moz-transform:translateY(-50%);-ms-transform:translateY(-50%);-o-transform:translateY(-50%);transform:translateY(-50%);border-radius:100%}@-webkit-keyframes ripple{0%{box-shadow:0 0 0 0 rgba(255,255,255,.1),0 0 0 20px rgba(255,255,255,.1),0 0 0 40px rgba(255,255,255,.1),0 0 0 60px rgba(255,255,255,.1)}100%{box-shadow:0 0 0 20px rgba(255,255,255,.1),0 0 0 40px rgba(255,255,255,.1),0 0 0 60px rgba(255,255,255,.1),0 0 0 80px rgba(255,255,255,0)}}@keyframes ripple{0%{box-shadow:0 0 0 0 rgba(255,255,255,.1),0 0 0 20px rgba(255,255,255,.1),0 0 0 40px rgba(255,255,255,.1),0 0 0 60px rgba(255,255,255,.1)}100%{box-shadow:0 0 0 20px rgba(255,255,255,.1),0 0 0 40px rgba(255,255,255,.1),0 0 0 60px rgba(255,255,255,.1),0 0 0 80px rgba(255,255,255,0)}}p.trialtext{color:#fff;font-size:11px;margin:12px 0}p.trialtext span{font-weight:700}.center-block{margin-left:auto;margin-right:auto;}img.mcafee{margin-top:8px;}.pull-right{float:right;}
		
		.spr-leftcont, .spr-sample-scores, .spr-left, .spr-three-bureaus-logos-new, .spr-search, 
		.spr-verisign, .spr-badge, .spr-mcafee, .spr-arrow, .spr-icon { max-width: 100%; background-size: 100%; background-image: url('./images/sprite.png'); }
		.spr-leftcont { background-position: 0 0%; background-size: 100%; }
		.spr-sample-scores { background-position: 0 24.795918%; background-size: 101.66113%; }
		.spr-left { background-position: 0 44.81982%; background-size: 102.684564%; }
		.spr-three-bureaus-logos-new { background-position: 0 58.636364%; background-size: 105.517241%; }
		.spr-search { background-position: 0 69.458631%; background-size: 139.090909%; }
		.spr-verisign { background-position: 0 77.55102%; background-size: 288.679245%; }
		.spr-badge { background-position: 0 85.372849%; background-size: 322.105263%; }
		.spr-mcafee { background-position: 0 90.257353%; background-size: 325.531915%; }
		.spr-arrow { background-position: 0 97.813688%; background-size: 470.769231%; }
		.spr-icon { background-position: 0 100%; background-size: 1700%; }
<%if showContactUsModal then%>
		.modal-header{border-bottom:0;padding:15px 15px 5px;}.modal-header .close{color:#c02400;opacity:0.75;font-size:30px}.modal-header .close:hover{opacity:1}.modal-body{padding-top:0;}.fade.show{opacity: 1;}.modal-backdrop.show{opacity:.5;}
		@media(min-width: 768px){.modal-dialog{width:720px;}}
<%end if%>
		@media screen and (max-width:991px){.nopaddingleft{padding-left:15px;}.nopaddingright{padding-right:15px;}.nopaddingleftright{padding-left:15px;padding-right:15px;}.rightcont{border-radius:8px;margin-top:1em;}img.search{display:inline-block !important;}img.scores{float:right;}.footer .centertable{display:table;margin:0 auto;}p.copyright{text-align:center;}.cont1 h1{font-size:28px;}.cont1 h2{font-size:22px;}}
		@media(max-width:819px){img.onemillionbadge{right:4px;}}
		@media screen and (max-width:767px){img.search{margin:0 auto 1em;display:block !important;}img.scores{margin:0 auto;float:none;display:block !important;}.footer{margin-top:0;padding:0;background: #fff;border-top:1px solid #f8f8f8;}.cont1 h1{font-size:24px;margin-top:4px;}.cont1 h2{font-size:16px;margin-top:8px;margin-bottom:16px;}.cont3{margin-top:6rem;}.rightcont .inner ul{padding-left:15px;}.rightcont h5{border-radius: 8px 8px 0 0;}button.scores{padding-left:1.25em;}.header img.bureaus{float:none!important;margin:0 auto 1em;}.header{padding:.5em 0;background:#fff}.header img.logo{margin-top:8px;}p.trialtext{color:#333;font-size:11px;margin:0 0 5px}.cont3{margin-top:0;background:#fff;padding-top:0;}.formcont{margin-top: 0;border:0;padding:0 1em .5em;}.formcont legend{color:#333;margin-bottom:0;}.form-control{border-radius:inherit}label.authtomarket input{left:28px;margin-top:2px;}.footer a{white-space:nowrap;}.benefitscontmobile{background: #00bbd3;background: -moz-linear-gradient(top, #00bbd3 0%, #00bbd3 72%, #094056 72%, #094056 100%);background: -webkit-linear-gradient(top, #00bbd3 0%,#00bbd3 72%,#094056 72%,#094056 100%);background: linear-gradient(to bottom, #00bbd3 0%,#00bbd3 72%,#094056 72%,#094056 100%);filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#00bbd3', endColorstr='#094056',GradientType=0 );}.rightcont{margin-bottom:1em;}}
	</style>
	
<%if domain = "myrealtimescores.com" then%>
	<style>
		.header .logo img{margin-top:10px;margin-bottom:15px;}
	</style>
<%end if%>
<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>

<%
sealDomain = LCase(replace(domain,"www.",""))

if usr_sealWWW then
	sealDomain = "www." & sealDomain
end if

is3bCreditScores = false


'Get SRC of image so it can be used for responsive
Function getImageSrcString(str)
	str_start = InStr(str, "src='") + 4
	str_end = InStr(str_start + 1, str, "'") + 1
	
	if str_end > str_start then
		getImageSrcString = Mid(str, str_start, (str_end - str_start))
	else
		getImageSrcString = ""
	end if
End Function


if not domain_dev then
	imgsignup3_Logo = replace(replace(imgsignup3_Logo,"src='images/","src='../../images/"),"src=""images/","src=""../../images/")
end if

' is3bCreditScores = false ' for testing only
%>

<!--<div class="container hidden-xs" style="background:#094056">
	<div class="row">
		<div class="col-xs-12">
			<p class="text-center trialtext"><%=tos_lp_text_1%> <span>Ends <% offerEndDate = Date() + 7 %><%=monthname(month(offerEndDate),true)%>&nbsp;<%=day(offerEndDate)%>,&nbsp;<%=year(offerEndDate)%></span></p>
			<p class="text-center trialtext">Monthly Membership for just <span><%=formatcurrency(monthlyPrice, 2)%></span> after <%=tos_lp_text_2%><br>until cancelled</p>
			<p class="text-center trialtext">To Cancel, Just Call <span><%=billing_phone%></span></p>
		</div>
	</div>
</div>-->
<%if showContactUsModal then%>
<div class="modal" id="ContactUsModal" tabindex="-1" role="dialog" aria-labelledby="ContactUsModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-sm-5 col-xs-12">
						<img src=<%=getImageSrcString(imgsignup3_Logo)%> class="img-responsive logo" alt="">
					</div>
					<div class="col-sm-7 col-xs-12">
						<h3 style="margin:20px 0 0;font-size:20px;font-weight:600">Need to contact us?</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-5 col-xs-12">
						<ul style="padding:1em 0 0 0.375em;margin:0;list-style-type:none;line-height:2;font-size:14px" class="hidden-xs">
							<li><img class="spr-icon" alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASAQMAAABsABwUAAAAA1BMVEX///+nxBvIAAAAAXRSTlMAQObYZgAAAAxJREFUeNpjYKAOAAAASAABEEXv0gAAAABJRU5ErkJggg=="> <strong>Instantly</strong> Access Your<%if(is3bCreditScores) then%> 3<%end if%> Credit Score<%if(is3bCreditScores) then%>s<%end if%></li>
							<li><img class="spr-icon" alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASAQMAAABsABwUAAAAA1BMVEX///+nxBvIAAAAAXRSTlMAQObYZgAAAAxJREFUeNpjYKAOAAAASAABEEXv0gAAAABJRU5ErkJggg=="> <strong>Secure</strong> Online Delivery</li>
							<li><img class="spr-icon" alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASAQMAAABsABwUAAAAA1BMVEX///+nxBvIAAAAAXRSTlMAQObYZgAAAAxJREFUeNpjYKAOAAAASAABEEXv0gAAAABJRU5ErkJggg=="> <strong>No</strong> Credit Card Required</li>
							<li><img class="spr-icon" alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASAQMAAABsABwUAAAAA1BMVEX///+nxBvIAAAAAXRSTlMAQObYZgAAAAxJREFUeNpjYKAOAAAASAABEEXv0gAAAABJRU5ErkJggg=="> <strong>See</strong> Score In Under 60 Seconds</li>
						</ul>
					</div>
					<div class="col-sm-7 col-xs-12">
						<p>We're always here to help! Please call our friendly, knowledgable customer service representatives today at:</p>
						<h3 class="phonenumber" style="font-weight:600;margin:10px 0 15px;font-size:26px;color:#2A4A95"><%=billing_phone%></h3>
						<h4 style="font-weight:600;font-size:16px">It's our goal to provide the best possible membership experience!</h4>
						<p>Need to mail us something? Please address to:</p>
						<p style="margin-bottom:0"><%=brand_name%><br>RE: Customer Service</p><p><%=corp_address_newformat%></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%end if%>
<div class="header">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-8 logo">
				<img src=<%=getImageSrcString(imgsignup3_Logo)%> class="img-responsive logo" alt=""> 
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 col-xs-4">
				<!--<img src="./images/three-bureaus-logos-new.png" alt="" class="bureaus img-responsive">-->
				<img src="./images/badge.png" alt="" class="img-responsive visible-xs">
				<img class="img-responsive bureaus hidden-xs" alt="" src="./images/tui-logo.png">
			</div>
		</div>
	</div>
</div>
<div class="cont1">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<h1 class="text-center">Get Your <span style="color:#00bbd3;font-weight:300"><%if retailerid <> 62825 then%>Free<%end if %> Credit Score<%if(is3bCreditScores) then%>s<%end if%></span><br></h1>
				<h2 class="text-center">from <span><%if(is3bCreditScores) then%>All 3 Bureaus<%else%>TransUnion<%end if%></span>: No Credit Card Required!</h2>
			</div>
		</div>

	</div>
</div>

<div class="cont3">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 nopaddingright">
				<div class="leftcont">
					<!--<img src="./images/left<%if(is3bCreditScores) then%>cont.png<%else%>.jpg<%end if%>" class="img-responsive img-right hidden-xs hidden-sm" alt="">-->
					<%if(is3bCreditScores) then%>
					<img class="spr-leftcont img-right hidden-xs hidden-sm" alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAATIAAADuAQMAAACAgxlmAAAAA1BMVEX///+nxBvIAAAAAXRSTlMAQObYZgAAAB9JREFUeNrtwQEBAAAAgiD/r25IQAEAAAAAAAAAAHwYJTAAAZkZiPoAAAAASUVORK5CYII=">
					<%else%>
					<img class="spr-left img-right hidden-xs hidden-sm" alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASoAAADyAQMAAADA7hqaAAAAA1BMVEX///+nxBvIAAAAAXRSTlMAQObYZgAAACBJREFUeNrtwTEBAAAAwqD1T20ND6AAAAAAAAAAAAAeDSTeAAHU6F0HAAAAAElFTkSuQmCC">
					<%end if%>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 nopaddingleftright">
				<div class="formcont">
					<!--<img src="./images/badge.png" class="badge hidden-xs" alt="">-->
					<img class="spr-badge onemillionbadge hidden-xs" alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAF8AAABUAQMAAADeRXl1AAAAA1BMVEX///+nxBvIAAAAAXRSTlMAQObYZgAAABJJREFUeNpjYBgFo2AUjALyAQAERAABz6K4cgAAAABJRU5ErkJggg==">
					<!--<img src="./images/arrow.png" alt="" class="arrow">-->
					<img class="spr-arrow arrow hidden-xs" alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEEAAABOAQMAAABFb+nTAAAAA1BMVEX///+nxBvIAAAAAXRSTlMAQObYZgAAABBJREFUeNpjYBgFo2AUgAAAAwwAAYYaqw4AAAAASUVORK5CYII=">
					<form method="post" action="../../<%=usr_SignupPage%>" name="form" id="theForm">
						<input type="hidden" name="fs_address" id="fs_address" value="<%=billAddress%>" />
						<input type="hidden" name="fs_city" id="fs_city" value="<%=billCity%>" />
						<input type="hidden" name="fs_state" id="fs_state" value="<%=billState%>" />
						<input type="hidden" name="fs_phone" id="fs_phone" value="<%=billphone%>" />
						<%if(phone1 <> "") then%>
						<input type="hidden" id="phone1" name="phone1" value="<%=phone1%>" />
						<input type="hidden" id="phone2" name="phone2" value="<%=phone2%>" />
						<input type="hidden" id="phone3" name="phone3" value="<%=phone3%>" />
						<%end if %> 
						<legend>Start Here</legend>
						<div class="form-group">
							<label for="fs_firstname" class="visible-xs">First Name:</label>
							<input autofocus type="text" id="fs_firstname" name="fs_firstname" value="<%=firstname%>" onkeypress="return isNotNumberKey(event)" class="form-control" placeholder="First Name">
						</div>
						<div class="form-group">
							<label for="fs_lastname" class="visible-xs">Last Name:</label>
							<input type="text" id="fs_lastname" name="fs_lastname" value="<%=lastname%>" onkeypress="return isNotNumberKey(event)" class="form-control" placeholder="Last Name">
						</div>
						<div class="form-group">
							<label for="fs_email" class="visible-xs">Email:</label>
							<input type="text" id="fs_email" name="fs_email" value="<%=emailaddress%>" class="form-control" placeholder="Email">
						</div>
						<div class="form-group">
							<label for="fs_zip" class="visible-xs">Zip Code:</label>
							<input type="text" id="fs_zip" name="fs_zip" onkeypress="return isNumberKey(event);" value="<%=billZipCode%>" maxlength="5" class="form-control" placeholder="Zip Code">
						</div>
						<input type="hidden" id="fs_authToMarket" name="fs_authToMarket" value="1"/>
						<div class="form-group">
							<label for="authtomarket" class="authtomarket">
								<input type="checkbox" id="authtomarket" name="authtomarket" checked onclick="document.getElementById('fs_authToMarket').value = (this.checked) ? 1 : 0;"> Yes, please send special offers from <%=brand_name%> and partners to my email.
							</label>
						</div>
						<div class="form-group">
							<button class="scores" type="submit">Your Score<%if(is3bCreditScores) then%>s<%end if%> - Now <span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span></button>
						</div>
						<div class="row visible-xs">
							<div class="col-xs-6">
								<a href="https://trustsealinfo.verisign.com/splash?form_file=fdf/splash.fdf&amp;dn=<%=sealDomain%>&amp;lang=en" onclick="window.open('https://trustsealinfo.verisign.com/splash?form_file=fdf/splash.fdf&amp;dn=<%=sealDomain%>&amp;lang=en','vs','menubar=no,scrollbars=1,height=500,width=550');return false;"><!--<img src="./images/verisign.png" class="verisign img-responsive pull-right" alt="">--><img class="spr-verisign verisign pull-right" alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGoAAAA0AQMAAABYaz9TAAAAA1BMVEX///+nxBvIAAAAAXRSTlMAQObYZgAAABBJREFUeNpjYBgFo2AUgAAAAwwAAYYaqw4AAAAASUVORK5CYII="></a>
							</div>
							<div class="col-xs-6">
								<a target="_blank" href="https://www.mcafeesecure.com/RatingVerify?ref=<%=sealDomain%>" title="Click to Verify - McAfee SECURE sites help keep you safe from identity theft, credit card fraud, spyware, spam, viruses and online scams"><!--<img src="./images/mcafee.png" class="mcafee img-responsive" alt="">--><img class="spr-mcafee mcafee" alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAF4AAAAqAQMAAAAAr376AAAAA1BMVEX///+nxBvIAAAAAXRSTlMAQObYZgAAAA9JREFUeNpjYBgFowAfAAACIgABQnvRqAAAAABJRU5ErkJggg=="></a>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 nopaddingleft benefitscontmobile">
				<div class="rightcont">
					<h5>Benefits</h5>
					<div class="inner">
						<ul>
							<li><img class="spr-icon" alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASAQMAAABsABwUAAAAA1BMVEX///+nxBvIAAAAAXRSTlMAQObYZgAAAAxJREFUeNpjYKAOAAAASAABEEXv0gAAAABJRU5ErkJggg=="> <strong>Instantly</strong> Access Your<%if(is3bCreditScores) then%> 3<%end if%> Credit Score<%if(is3bCreditScores) then%>s<%end if%></li>
							<li><img class="spr-icon" alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASAQMAAABsABwUAAAAA1BMVEX///+nxBvIAAAAAXRSTlMAQObYZgAAAAxJREFUeNpjYKAOAAAASAABEEXv0gAAAABJRU5ErkJggg=="> <strong>Secure</strong> Online Delivery</li>
							<li><img class="spr-icon" alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASAQMAAABsABwUAAAAA1BMVEX///+nxBvIAAAAAXRSTlMAQObYZgAAAAxJREFUeNpjYKAOAAAASAABEEXv0gAAAABJRU5ErkJggg=="> <strong>No</strong> Credit Card Required </li>
							<li><img class="spr-icon" alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAASAQMAAABsABwUAAAAA1BMVEX///+nxBvIAAAAAXRSTlMAQObYZgAAAAxJREFUeNpjYKAOAAAASAABEEXv0gAAAABJRU5ErkJggg=="> <strong>See</strong> Score In Under 60 Seconds</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="cont4 hidden-xs">
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-6">
				<a href="https://trustsealinfo.verisign.com/splash?form_file=fdf/splash.fdf&amp;dn=<%=sealDomain%>&amp;lang=en" onclick="window.open('https://trustsealinfo.verisign.com/splash?form_file=fdf/splash.fdf&amp;dn=<%=sealDomain%>&amp;lang=en','vs','menubar=no,scrollbars=1,height=500,width=550');return false;"><!--<img src="./images/verisign.png" class="verisign img-responsive pull-right" alt="">--><img class="spr-verisign verisign pull-right" alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGoAAAA0AQMAAABYaz9TAAAAA1BMVEX///+nxBvIAAAAAXRSTlMAQObYZgAAABBJREFUeNpjYBgFo2AUgAAAAwwAAYYaqw4AAAAASUVORK5CYII="></a>
			</div>
			<div class="visible-xs col-xs-6">
				<!--<img src="./images/mcafee.png" class="mcafee img-responsive" alt="">-->
				<img class="spr-mcafee mcafee" alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAF4AAAAqAQMAAAAAr376AAAAA1BMVEX///+nxBvIAAAAAXRSTlMAQObYZgAAAA9JREFUeNpjYBgFowAfAAACIgABQnvRqAAAAABJRU5ErkJggg==">
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 nopaddingleftright">
				<h5 class="text-center">Checking your credit will not harm your score</h5>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 hidden-xs">
				<a target="_blank" href="https://www.mcafeesecure.com/RatingVerify?ref=<%=sealDomain%>" title="Click to Verify - McAfee SECURE sites help keep you safe from identity theft, credit card fraud, spyware, spam, viruses and online scams"><!--<img src="./images/mcafee.png" class="mcafee img-responsive" alt="">--><img class="spr-mcafee mcafee" alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAF4AAAAqAQMAAAAAr376AAAAA1BMVEX///+nxBvIAAAAAXRSTlMAQObYZgAAAA9JREFUeNpjYBgFowAfAAACIgABQnvRqAAAAABJRU5ErkJggg=="></a>
			</div>
		</div>
	</div>
</div>
<div class="cont5 hidden-xs">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
				<!--<img src="./images/search.jpg" class="img-responsive hidden-sm hidden-xs" alt="">-->
				<img class="spr-search hidden-sm hidden-xs" alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAANwAAACXAQMAAABEC6dtAAAAA1BMVEX///+nxBvIAAAAAXRSTlMAQObYZgAAABpJREFUeNrtwQEBAAAAgiD/r25IQAEAAADcGhEbAAF+yaElAAAAAElFTkSuQmCC">
			</div>
			<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
				<h5>Why do I need to check my Credit Score?</h5>
				<p>A good credit score is your passport to competitive interest rates for mortgages, cars, credit card offers, job offers, insurance premiums and more. A strong score is worth money because it saves you in excess costs.</p>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
				<!--<img src="./images/search.jpg" class="img-responsive visible-sm visible-xs search" alt="">-->
				<img class="spr-search visible-sm visible-xs search" alt="" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAANwAAACXAQMAAABEC6dtAAAAA1BMVEX///+nxBvIAAAAAXRSTlMAQObYZgAAABpJREFUeNrtwQEBAAAAgiD/r25IQAEAAADcGhEbAAF+yaElAAAAAElFTkSuQmCC">
				<!--<img src="./images/sample-scores.jpg" class="img-responsive scores" style="display:inline-block" alt="">-->
				<img class="spr-sample-scores scores" alt="" style="display:inline-block" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAS0AAACWAQMAAACxV0yvAAAAA1BMVEX///+nxBvIAAAAAXRSTlMAQObYZgAAAB1JREFUeNrtwQENAAAAwqD3T20ON6AAAAAAAODJABbaAAFmMAvYAAAAAElFTkSuQmCC">
			</div>
		</div>
	</div>
</div>
<div class="footer">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="disclaimer">
					<!-- #include file="../../_inc_disclosure_text.asp" -->
				</div>
			</div>
		</div>
	</div>
</div>

<%if SVGLogoInclude then%>
<script>
	/*! modernizr 3.3.1 (Custom Build) | MIT *
	* http://modernizr.com/download/?-svg-setclasses !*/
	!function(e,n,s){function o(e,n){return typeof e===n}function a(){var e,n,s,a,t,f,r;for(var c in l)if(l.hasOwnProperty(c)){if(e=[],n=l[c],n.name&&(e.push(n.name.toLowerCase()),n.options&&n.options.aliases&&n.options.aliases.length))for(s=0;s<n.options.aliases.length;s++)e.push(n.options.aliases[s].toLowerCase());for(a=o(n.fn,"function")?n.fn():n.fn,t=0;t<e.length;t++)f=e[t],r=f.split("."),1===r.length?Modernizr[r[0]]=a:(!Modernizr[r[0]]||Modernizr[r[0]]instanceof Boolean||(Modernizr[r[0]]=new Boolean(Modernizr[r[0]])),Modernizr[r[0]][r[1]]=a),i.push((a?"":"no-")+r.join("-"))}}function t(e){var n=r.className,s=Modernizr._config.classPrefix||"";if(c&&(n=n.baseVal),Modernizr._config.enableJSClass){var o=new RegExp("(^|\\s)"+s+"no-js(\\s|$)");n=n.replace(o,"$1"+s+"js$2")}Modernizr._config.enableClasses&&(n+=" "+s+e.join(" "+s),c?r.className.baseVal=n:r.className=n)}var i=[],l=[],f={_version:"3.3.1",_config:{classPrefix:"",enableClasses:!0,enableJSClass:!0,usePrefixes:!0},_q:[],on:function(e,n){var s=this;setTimeout(function(){n(s[e])},0)},addTest:function(e,n,s){l.push({name:e,fn:n,options:s})},addAsyncTest:function(e){l.push({name:null,fn:e})}},Modernizr=function(){};Modernizr.prototype=f,Modernizr=new Modernizr,Modernizr.addTest("svg",!!n.createElementNS&&!!n.createElementNS("http://www.w3.org/2000/svg","svg").createSVGRect);var r=n.documentElement,c="svg"===r.nodeName.toLowerCase();a(),t(i),delete f.addTest,delete f.addAsyncTest;for(var u=0;u<Modernizr._q.length;u++)Modernizr._q[u]();e.Modernizr=Modernizr}(window,document);
	
	if(!Modernizr.svg) { document.getElementById('companylogo').src = document.getElementById('companylogo').src.replace('.svg','.png'); }
</script>
<%end if%>

<%if domain = "check3scores.com" then%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<%if showContactUsModal then%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="../../js/bootstrap4modalonly.js"></script>
<%end if%>
<%else%>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<!-- <script src="./js/bootstrap.min.opt.js"></script> -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%end if%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.js"></script>
<script>
	$(window).on("load",function () {
		$.validator.addMethod(
			"regex",
			function (value, element, regexp) {
				var re = new RegExp(regexp);
				return this.optional(element) || re.test(value);
			},
			""
		);
		
		$('form').validate({
			rules: {
				fs_firstname: {
					minlength: 2,
					maxlength: 50,
					required: true,
					regex: "^[A-z  \-\']+$"
				},
				fs_lastname: {
					minlength: 2,
					maxlength: 50,
					required: true,
					regex: "^[A-z  \-\']+$"
				},
				fs_email: {
					email: true,
					required: true,
					remote: {
						url: "../lp_domain_check.asp",
						type: "GET",
						data: { 
							fs_email: function() { return $("#fs_email").val(); }
						},
						dataFilter: function(response) {
							if (response>0) { return false } else { return true };
						}
					}
				},
				fs_zip: {
					minlength: 5,
					maxlength: 5,
					required: true,
					remote: {
						url: "../lp_zipcode_check.asp",
						type: "GET",
						dataFilter: function (response) {
							return (response == 1);
						}
					}
				}
			},
			highlight: function (element) {
				$(element).css("border", "1px solid #ff0000");
				//$(element).closest('.form-group').addClass('has-error');
			},
			unhighlight: function (element) {
				$(element).css("border", "1px solid #ccc");
				//$(element).closest('.form-group').removeClass('has-error');
			},
			errorElement: 'span',
			errorClass: 'help-block',
			errorPlacement: function (error, element) {
			}
		});
	});
	
	
	
	
	function isNumberKey(e) {
		var unicode = e.charCode ? e.charCode : e.keyCode
		if (unicode != 8 && unicode != 9) { //if the key isn't the backspace key,tab,ctrl
			if (unicode < 48 || unicode > 57) //if not a number
				return false //disable key press
			
			return true;
		}
	}
	
	
	
	
	function isNotNumberKey(e) {
		var unicode = e.charCode ? e.charCode : e.keyCode
		if (unicode != 8 && unicode != 9 && unicode != 118) { //if the key isn't the backspace key,tab,ctrl, or v (which we should allow)
			if (unicode > 47 && unicode < 58) //if is a number
				return false //disable key press
		}
	}
	
	
	
	
	function moveNext() {
		$.ajax({
			url: "../../signup_errors_ajax.asp",
			type: "GET",
			data: {
				tGUID: "<%=tGUID%>",
				landing: 1,
				pageStep: 0,
				errors: 0
			},
			dataType: "text",
			cache: false,
			timeout: 10000,
			async: false,
			error: function (data, textStatus, errorThrown) {
				//alert('ajax error: ' + textStatus + ' :: ' + errorThrown)
				//do nothing
			},
			success: function (data) {
				if (data) {
					//alert('ajax response: ' + data);
					//do nothing
				}
			}
		});
		
		//fs_usr_SignupPage = '<%=usr_SignupPage%>';
		//url = '../../' + fs_usr_SignupPage;
		//document.location.href = url;
		document.forms[0].submit();
	}
	
	
	
	
	function popit(url) {
		window.open(url, 'unrollme', 'height=1000,width=900,directories=0,menubar=0,status=0,toolbar=0,scrollbars=1', false);
	}
	
	if ($(window).width() < 768) {
		$("form input").attr('placeholder',"");
	}
</script>

<!-- #include file="../../_inc_google_analytics.asp" -->
<!-- #include file="../../bakery.asp" -->
<!-- #include file="../_inc_landing_footer.asp" -->

</body>
</html>

<%
set objConnTR01 = Server.CreateObject("ADODB.Connection")
'objConnTR01.commandTimeout = 30
objConnTR01.ConnectionTimeout = 200
objConnTR01.Open DSN_OM & ";Application Name=/lp/222/index.asp.async"

TotalLoad = TotalLoad & "||Total:" & formatnumber(Timer - loadTime, 4)


scalearcReadPostfix = ""
if scalearcMode then
	scalearcReadPostfix = "-scalearc"
end if

sql = "ccp.dbo.usp_ccp_trace_log_insert '/lp/222/index.asp"&scalearcReadPostfix&"', '" & sqlsafe(TotalLoad) & "', '" & sqlSafe(function_getClientIP) & "', '" & sqlSafe(request.servervariables("LOCAL_ADDR")) & "'"
session("sql") = sql
objConnTR01.execute sql, , 16
%>