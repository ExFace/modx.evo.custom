/**
 * Desktop (jEasyUI)
 *
 * Desktop template for ExFace based jQuery EasyUI
 *
 * @category	template
 * @version 	1.0
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @internal	@lock_template 0
 * @internal 	@modx_category ExFace
 * @internal    @installset base, sample
 */
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="apple-mobile-web-app-capable" content="yes">
	
	<link rel="shortcut icon" sizes="196x196" href="assets/images/alexa_icon_196.png">
    <link rel="apple-touch-icon" sizes="128x128" href="assets/images/alexa_icon_128.png">
    <link rel="apple-touch-icon-precomposed" sizes="128x128" href="assets/images/alexa_icon_128.png">
	
	<title>[*pagetitle*] :: [(site_name)]</title>
	<link rel="stylesheet" type="text/css" href="exface/vendor/exface/JEasyUiTemplate/Template/js/jeasyui/themes/metro-blue/easyui.css">
	<link rel="stylesheet" type="text/css" href="exface/vendor/exface/JEasyUiTemplate/Template/js/icon.css">
	<link rel="stylesheet" type="text/css" href="exface/vendor/exface/JEasyUiTemplate/Template/js/template.css">
	<script type="text/javascript" src="exface/vendor/bower-asset/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="exface/vendor/bower-asset/jeasyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="exface/vendor/exface/JEasyUiTemplate/Template/js/jquery.easyui.patch.js"></script>
	<script type="text/javascript" src="exface/vendor/exface/JEasyUiTemplate/Template/js/template.js"></script>
	<script type="text/javascript" src="exface/vendor/exface/JEasyUiTemplate/Template/js/jquery.easyui.helpers.js"></script>
	<script type="text/javascript" src="exface/vendor/exface/JEasyUiTemplate/Template/js/jeasyui/extensions/datagridview/datagrid-groupview.js"></script>
	
	[[ExFace? &action=`exface.Core.ShowHeaders`]]	
	
	<!-- jQuery-Plugin to run in iOS-WebApp window -->
	<script type="text/javascript" src="exface/vendor/exface/JEasyUiTemplate/Template/js/jquery.stayInWebApp.js"></script>
	
	<!-- sparklines -->
	<script type="text/javascript" src="exface/vendor/exface/JEasyUiTemplate/Template/js/jquery.sparkline.min.js"></script>
	
	<script language="javascript">
		$(function() {
			$.stayInWebApp();
		});
	</script>
	
</head>
<body class="easyui-layout">
	
	<!-- HEADER -->
	<div data-options="region:'north',border:false" style="height:50px;padding:10px">
		<div style="float:left;">
			<img alt="" src="assets/images/Logo_alexa_RMS.png">
		</div>
		<div style="float:right;">
			<div class="top-toolbar">
				<div class="toolbar-element login-logout">
					<div class="toolbar-button">
						<a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-basket'">0</a>
					</div>
				</div>
				[!if &is=`[!UserManagerInfo!]:not_empty` &then=`
				<div class="toolbar-element user-info"> 
					[!if? &is=`[!UserManagerInfo? &field=`photo`!]:not_empty` &then=`<img src="[!UserManagerInfo? &field=`photo`!]" height="30" class="user-image" /> ` &else=``!]
					<span class="user-display">[!UserManagerInfo? &field=`fullname`!]</span>
				</div>
				<div class="toolbar-element login-logout">
					<div class="toolbar-button">
						<a href="[(unauthorized_page)]?webloginmode=lo" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-logout'">Logout</a>
					</div>
				</div>
				` &else=`
				<div class="toolbar-element user-info"> 
					<span class="user-display">Guest</span>
				</div>
				<div class="toolbar-element login-logout">
					<div class="toolbar-button">
						<a href="[(unauthorized_page)]" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-logout'">Login</a>
					</div>
				</div>
				`!]
			</div>
		</div>
	</div>
	
	<!-- MENU LEFT -->
	<div data-options="region:'west',split:true,title:'Navigation'" style="width:200px;">
		<div class="easyui-accordion" data-options="fit:true,border:false">
	        <div title="Favorites" data-options="" style="overflow:auto;">
	            <ul class="nav_menu">
	        		<li><a href="#">Artikel-Info</a></li>
	        		<li><a href="#">Wareneingang</a></li>
        		</ul>
	        </div>
	        <div title="Menu" data-options="selected:true" style="">
	        	[!Wayfinder?startId=`1` &hideSubMenus=`TRUE` &outerClass=`nav_menu`!]       
	        </div>
	        <div title="History" data-options="" style="">
	                     
	        </div>
        </div>
	</div>
	
	<!-- MENU RIGHT -->
	<div data-options="region:'east',split:true,collapsed:true,title:'Hints'" style="width:200px;">
		<div class="easyui-accordion" data-options="fit:true,border:false">
			<div title="Dialog [*pagetitle*]" data-options="collapsed:false,collapsible:false" style="">
				<p style="padding: 5px; box-sizing:border-box;">[*introtext*]</p>
				<p style="padding: 5px; box-sizing:border-box;"><a href="javascript: $('#exf_page_help').dialog('open');">Hilfe zu diesem Dialog</a></p>
	        </div>
			<div title="Sichten" data-options="selected:true, collapsed: false">
				[!Wayfinder? &startId=`[[if? &is=`[*isfolder*]:=:1` &then=`[*id*]` &else=`[*parent*]`]]` &hideSubMenus=`TRUE` &outerClass=`nav_menu` &ignoreHidden=`1` &outerTpl=`@CODE: <ul[+wf.classes+]><li><a href="[~[*parent*]~]">Default</a></li>[+wf.wrapper+]<li><a href="[(SITE_URL)]manager/index.php?a=4&pid=[[if? &is=`[*isfolder*]:=:1` &then=`[*id*]` &else=`[*parent*]`]]&quickmanager=1" class="colorbox cboxElement">Neue Sicht hinzufügen...</a></li></ul>`!]
	        </div>
	        <div title="Tutorials" data-options="">
				[!Wayfinder? &startId=`76` &hideSubMenus=`TRUE` &outerClass=`nav_menu`!]
	        </div>
			<div title="Test" data-options="">
				[[ExFace? &docId=`151`]]
			</div>
        </div>
		<div id="exf_page_help" class="easyui-dialog" title="&nbsp;&nbsp;Hilfe" data-options="iconCls: 'icon-help', closed:true, href:'[~77~]?docId=[*id*]'" style="width:800px;height:600px;padding:10px">
					
				</div>
	</div>
	
	<!-- INFO PANEL -->
	<div data-options="region:'south',split:true,collapsed:true,border:false,title:'Infoleiste'" style="height:250px;padding:10px;">
		<table id="dg_buffer" width="100%"></table>
	
	    <script type="text/javascript">
			/*
	        $(function(){
	            $('#dg_buffer').datagrid({
	            	url: 'data/buffer.json',
	            	singleSelect: true,
	            	fitColumns: true,
	            	columns:[ [
	            	        {field:'OID',title:'OID', hidden: true},
	            	        {field:'OBJECT',title:'Dokument'},
	            	        {field:'INSTANCE',title:'Objekt'}
	            	      ] ],
	                view:groupview,
	                groupField:'OBJECT',
	                groupFormatter:function(value,rows){
	                    return value + ' - ' + rows.length + ' Objekt(e)';
	                	}
	                });
	            });*/
	    </script>
	</div>
	
	<!-- MAIN -->
	<div data-options="region:'center',title:'[[singleQuotes? &string=`[[Breadcrumbs? &showHomeCrumb=`1`]]`]]'">
		[[ExFace? &fallback_field=`content`]] 
	</div>
</body>
</html>