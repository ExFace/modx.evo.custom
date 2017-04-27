<?
if(!defined('MODX_BASE_PATH')){die('What are you doing? Get out of here!');}
$templates = array(
	'defaultList' => array(
		'crumb' => '<li>[+crumb+]</li>',
		'separator' => '',
		'crumbContainer' => '<ul class="[+crumbBoxClass+]">[+crumbs+]</ul>',
		'lastCrumbWrapper' => '<span class="[+lastCrumbClass+]">[+lastCrumbSpanA+]</span>',
		'firstCrumbWrapper' => '<span class="[+firstCrumbClass+]">[+firstCrumbSpanA+]</span>',
		'crumbLink'=>'<a class="[+crumbClass+]" href="[+link+]" title="[+title+]">[+text+]</a>',
		'crumbSpan'=>'<span class="[+crumbClass+]">[+text+]</span>'
	)
)
?>