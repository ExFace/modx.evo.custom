/**
 * Mobile (jQueryMobile)
 *
 * Mobile template for ExFace based jQuery mobile
 *
 * @category	template
 * @version 	1.0
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal	@lock_template 0
 * @internal 	@modx_category ExFace
 * @internal    @installset base, sample
 */
<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/xhtml-mobile12.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<base href="[(site_url)]"></base>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="HandheldFriendly" content="True">
	<meta name="MobileOptimized" content="240"/>
	<meta name="PalmComputingPlatform" content="true"/>
	<meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">
    
	<meta http-equiv="Content-Type" content="text/html; charset=[(modx_charset)]" />
	<title>alexa | [*pagetitle*]</title>
	
	<!--<link rel="icon" type="image/vnd.microsoft.icon" href="favicon.ico" />
	<link rel="shortcut icon" type="image/x-icon" href="favicon.ico" />-->
	
	<link rel="shortcut icon" sizes="196x196" href="assets/images/alexa_icon_196.png">
    <link rel="apple-touch-icon" sizes="128x128" href="assets/images/alexa_icon_128.png">
    <link rel="apple-touch-icon-precomposed" sizes="128x128" href="assets/images/alexa_icon_128.png">
	
	<link rel="stylesheet" href="[(site_url)]exface/vendor/exface/JQueryMobileTemplate/Template/js/jquerymobile/jquery.mobile.structure-1.4.5.min.css" />
	<link rel="stylesheet" href="[(site_url)]exface/vendor/exface/JQueryMobileTemplate/Template/js/jquerymobile/themes/alexa5_contrast.min.css" />
	<link rel="stylesheet" href="[(site_url)]exface/vendor/exface/JQueryMobileTemplate/Template/js/jquerymobile/themes/icons/mdfi.css" />
	<script src="[(site_url)]/exface/vendor/exface/JQueryMobileTemplate/Template/js/jquery-1.8.3.min.js"></script>
	<script src="[(site_url)]/exface/vendor/exface/JQueryMobileTemplate/Template/js/jquerymobile/jquery.mobile-1.4.5.min.js"></script>
	
	<script type="text/javascript" src="exface/vendor/npm-asset/screenfull/dist/screenfull.js"></script>
	<script type="text/javascript" src="exface/vendor/bower-asset/masonry/dist/masonry.pkgd.min.js"></script>
	
	<!-- jQuery.NumPad -->
	<link href="exface/vendor/bower-asset/jquery-numpad/jquery.numpad.css" rel="stylesheet" type="text/css" />
	<script src='exface/vendor/bower-asset/jquery-numpad/jquery.numpad.js'></script>
	<script type="text/javascript">
			// Set NumPad defaults for jQuery mobile. 
			// These defaults will be applied to all NumPads within this document!
			$.fn.numpad.defaults.gridTpl = '<table class="ui-bar-a"></table>';
			$.fn.numpad.defaults.backgroundTpl = '<div class="ui-popup-screen ui-overlay-a"></div>';
			$.fn.numpad.defaults.displayTpl = '<input data-theme="b" type="text" />';
			$.fn.numpad.defaults.buttonNumberTpl =  '<a data-role="button" data-theme="b"></a>';
			$.fn.numpad.defaults.buttonFunctionTpl = '<a data-role="button" data-theme="a"></a>';
			$.fn.numpad.defaults.onKeypadCreate = function(){$(this).enhanceWithin();};
	</script>
	
	<script src="[(site_url)]/exface/vendor/exface/JQueryMobileTemplate/Template/js/jquery.scannerdetection.js"></script>
	
	<link rel="stylesheet" type="text/css" href="exface/vendor/bower-asset/datatables.net-dt/css/jquery.dataTables.min.css">
	<script type="text/javascript" src="exface/vendor/bower-asset/datatables.net/js/jquery.dataTables.min.js"></script>
	
	<script type="text/javascript">
	<!--
		$.mobile.defaultPageTransition = 'none';
		$(document).on('pagebeforeshow', 'div[data-dialog="true"]', function(event, ui) {						
			ui.prevPage.addClass("ui-dialog-transparent-bg");
			ui.prevPage.data("mobile-page").options.domCache = true;
  			ui.prevPage.unbind("pagehide.remove");
		});
		
				$(document).on('pagehide', 'div[data-dialog="true"]', function(event, ui) {						
			$('.ui-dialog-transparent-bg').removeClass("ui-dialog-transparent-bg");
			ui.toPage.page( "option", "domCache", false );
			ui.toPage.data("mobile-page").options.domCache = false;
			ui.toPage.bind("pagehide.remove");
		});
		
		exfTapCoordinates = {X: 0, Y: 0};
		$(document).on('vmousedown', function(event){
			exfTapCoordinates.X = event.pageX;
			exfTapCoordinates.Y = event.pageY;
		});
		
		
		$(function(){
			$('.masonry').masonry({ "columnWidth": 330, "itemSelector": ".item" });
		});
		
		$(document).on('pageshow', function(){
			$('.masonry').masonry();
		});

	-->
	</script>
	
	[!ExFace? &action=`exface.Core.ShowHeaders`!]
	
	<style type="text/css">		
		/* jQuery Mobile customization */
		.ui-content{min-height: calc(100vh - 110px);}
		.ui-dialog-contain .ui-content{min-height: initial;}
		.ui-corner-all {border-radius: 0.4em;}
		.ui-controlgroup.ui-btn-right {top: .4em;}
		.ui-bar.ui-toolbar {padding: 0.1em 1em; min-height: 50px; box-sizing: border-box;}
		.ui-bar.ui-toolbar .ui-btn-inline {margin: 0.4em 0; height: 1.3em; padding-top: 0.35em; padding-bottom: 0.35em;}
		.ui-bar .ui-controlgroup a.ui-btn {padding: 0 .5em; margin: 0; height: 2em; line-height: 2em;}
		.ui-controlgroup-controls .ui-btn-icon-notext {padding: .5em;}
		.ui-bar .ui-btn.ui-btn-icon-notext, .ui-bar .ui-controlgroup {margin: 0.4em 0;}
		.ui-bar .ui-btn-icon-notext {width: 2em;}
		a.ui-slider-handle-snapping { -webkit-transition: none; -moz-transition: none; }
		.ui-dialog .ui-dialog-contain { margin-bottom: 0; margin-right: 10px; }
		.ui-dialog-transparent-bg {display: block !important; opacity: 0.4;}
		.ui-panel-header {margin: -16px -16px 15px -16px; height: 41px;}
		.ui-dialog-header {margin: -17px -17px 20px -17px; max-width: inherit;}
		.ui-header.ui-panel-header h2 {margin: 0 10%;}
		.ui-field-contain>label, .ui-field-contain .ui-controlgroup-label, .ui-field-contain>.ui-rangeslider>label {text-align: right;}
		.ui-field-contain .ui-input-search {margin: 0;}
		.ui-field-contain>ul.ui-listview {float: right;}
		.ui-listview>li>a.ui-btn{height: initial;}
		.ui-btn-icon-notext.ui-btn-corner-all, .ui-btn-icon-notext.ui-corner-all {-webkit-border-radius: 0.4em;	border-radius: 0.4em;}
		
		/* misc */
		.dialogButtons{text-align: right;}
		.exfHidden{display:none !important};
		/* DataTables customization */
		.jqmDataTable {margin: 0 -15px;}
		.dataTable .detailRow table {width:initial; margin: initial;}
		.dataTable thead {background-color: #f9f9f9;}
		.dataTable td .ui-checkbox{margin: 0;}
		.dataTable td.ok{background-color: green;}
		.dataTable td.warning{background-color: yellow;}
		.dataTable td.error{background-color: red; color: white;}
		
		/* Cards */		
		.masonry {}
		
		.masonry .item {
			background: #FFF;
			border: 1px solid #AAA;
			margin: 5px;
			overflow: hidden;
			border-radius: 0.4em;
			
			width:  320px;
			
			-webkit-box-sizing: border-box;
			-moz-box-sizing: border-box;
			box-sizing: border-box;
		}
		.masonry .item a {text-decoration: none; color: black;}
		.masonry .item h2 {margin: 10px 15px 20px 15px; padding: 0; font-size: 250%;}
		.masonry .item h2 small {padding: 10px 0 0 0; display: block; font-size: initial;}
		.masonry .item h3 {margin: 0; padding: 15px 10px;}
		.masonry .item p {margin: 0px;padding: 10px;}
		.masonry .item i:after {font-size: 40px; color: #ccc;}
		@media ( min-width: 690px ) {
			.masonry .item.w2 {width: 650px;}
		}
		
		div.holoPressEffectDiv {
			background-color: #CCCCCC;
		}
		
		/* Basic settings */
		.ui-li-static.ui-collapsible {
			padding: 0;
		}
		.ui-li-static.ui-collapsible > .ui-collapsible-content > .ui-listview,
		.ui-li-static.ui-collapsible > .ui-collapsible-heading {
			margin: 0;
		}
		.ui-li-static.ui-collapsible > .ui-collapsible-content {
			padding-top: 0;
			padding-bottom: 0;
			padding-right: 0;
			border-bottom-width: 0;
		}
		/* collapse vertical borders */
		.ui-li-static.ui-collapsible > .ui-collapsible-content > .ui-listview > li.ui-last-child,
		.ui-li-static.ui-collapsible.ui-collapsible-collapsed > .ui-collapsible-heading > a.ui-btn {
			border-bottom-width: 0;
		}
		.ui-li-static.ui-collapsible > .ui-collapsible-content > .ui-listview > li.ui-first-child,
		.ui-li-static.ui-collapsible > .ui-collapsible-content > .ui-listview > li.ui-first-child > a.ui-btn,
		.ui-li-static.ui-collapsible > .ui-collapsible-heading > a.ui-btn {
			border-top-width: 0;
		}
		/* Remove right borders */
		.ui-li-static.ui-collapsible > .ui-collapsible-heading > a.ui-btn,
		.ui-li-static.ui-collapsible > .ui-collapsible-content > .ui-listview > .ui-li-static,
		.ui-li-static.ui-collapsible > .ui-collapsible-content > .ui-listview > li > a.ui-btn,
		.ui-li-static.ui-collapsible > .ui-collapsible-content {
			border-right-width: 0;
		}
		/* Remove left borders */
		/* Here, we need class ui-listview-outer to identify the outermost listview */
		.ui-listview-outer > .ui-li-static.ui-collapsible .ui-li-static.ui-collapsible.ui-collapsible,
		.ui-listview-outer > .ui-li-static.ui-collapsible > .ui-collapsible-heading > a.ui-btn,
		.ui-li-static.ui-collapsible > .ui-collapsible-content {
			border-left-width: 0;
		}
		/* Make listview icons appear on the left (better for nested listviews)*/
		.iconLeft a{
			padding-left: 2.5em !important;
			padding-right: 1em !important;
		}
		.iconLeft a:after{
			right: auto;
			left: 9px;
		}
	</style>
	
</head>
<body>
	<div data-role="page" id="jqm[*id*]" data-theme="a">
		
		<div data-role="header" class="ui-alt-icon ui-nodisc-icon" data-position="fixed" data-tap-toggle="false" style="filter: Alpha(Opacity=90);opacity: .9; height: 41px;">
			<a href="#leftPanel" data-role="button" data-icon="navigation-menu" data-iconpos="notext" data-shadow="false" class="ui-corner-all">Menü</a>
			<h2 class="ui-title">[[Breadcrumbs? &showHomeCrumb=`0`]]</h2>
			<div class="ui-btn-right" data-role="controlgroup" data-type="horizontal">
				<a id="screenfullToggle" href="javascript: if (screenfull.enabled) {screenfull.toggle();}" data-role="button" data-icon="navigation-fullscreen" data-iconpos="notext" data-shadow="false" class="ui-corner-all">Full Screen</a>
				<a href="#rightPanel" data-role="button" data-icon="navigation-more-vert" data-iconpos="notext" data-shadow="false" class="ui-corner-all">Hints</a>
			</div>
		</div>
		
		<div data-role="content">
			[[ExFace? &fallback_field=`content`]] 
		</div><!-- /content -->
		<div data-role="footer" class="ui-bar" style="text-align:center" data-tap-toggle="false">
			alexa UI
		</div>
		
		<div data-role="panel" data-display="overlay" id="leftPanel"  data-theme="b">
			<div class="ui-bar-inherit ui-header ui-panel-header ui-nodisc-icon">
				<div style="text-align:center; margin-top: 4px;"><a href="#"><img src="assets/images/Logo_alexa_RMS.png" /></a></div>
				<a href="#" data-role="button" data-rel="close" data-icon="navigation-chevron-left" data-iconpos="notext" data-shadow="false" class="ui-corner-all ui-btn-right">???????</a>
			</div>
			[!Wayfinder? &startId=`1` &level=`10` &hideSubMenus=`0` 
			&outerTpl=`@CODE:<ul data-role="listview"  data-filter="true" class="ui-listview-outer [+wf.classnames+]" data-corners="false">[+wf.wrapper+]</ul>` 
			&innerTpl=`@CODE:<ul data-role="listview" [+wf.classes+] data-corners="false">[+wf.wrapper+]</ul>`
			&rowTpl=`@CODE:<li[+wf.id+] class="iconLeft [+wf.classnames+]"><a href="[+wf.link+]" title="[+wf.title+]" [+wf.attributes+]>[+wf.linktext+]</a>[+wf.wrapper+]</li>`
			&hereTpl=`@CODE:<li[+wf.id+] class="iconLeft [+wf.classnames+]"><a href="[+wf.link+]" class="ui-btn-active ui-btn ui-btn-icon-right ui-icon-carat-r" title="[+wf.title+]" [+wf.attributes+]>[+wf.linktext+]</a>[+wf.wrapper+]</li>`
			&parentRowTpl=`@CODE:<li[+wf.classes+] data-role="collapsible" data-shadow="false" data-corners="false"><h2>[+wf.linktext+]</h2>[+wf.wrapper+]</li>`
			&activeParentRowTpl=`@CODE:<li[+wf.classes+] data-role="collapsible" data-collapsed="false" data-shadow="false" data-corners="false"><h2>[+wf.linktext+]</h2>[+wf.wrapper+]</li>`!]
		</div>
		<div data-role="panel" data-display="overlay" data-position="right" id="rightPanel" data-swipe-close="false" data-position-fixed="true"  data-theme="b">
			<div class="ui-bar-inherit ui-header ui-panel-header ui-nodisc-icon">
				<a href="#" data-role="button" data-rel="close" data-icon="navigation-chevron-right" data-iconpos="notext" data-shadow="false" class="ui-corner-all ui-btn-left">???????</a>
				<h2 class="ui-title">Info</h2>
			</div>
		</div>
		
	</div><!-- /page -->
</body>
</html>