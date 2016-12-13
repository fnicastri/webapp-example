<?php
//////////////////////////////////////////////////////////////////////////////
// These are custom Twig functions for manipulating that template data
//////////////////////////////////////////////////////////////////////////////

$filterDateFormat = new Twig_SimpleFilter('dateFormat', function ($string) {
	return date('n/d/Y \a\t g:i A',strtotime($string));
});
$twig->addFilter($filterDateFormat);

//////////////////////////////////////////////////////////////////////////////

$filterTimeAgo = new Twig_SimpleFilter('timeago', function ($datetime) {
	$time = time() - strtotime($datetime);
	$units = array (
		31536000 => 'year',
		2592000 => 'month',
		604800 => 'week',
		86400 => 'day',
		3600 => 'hour',
		60 => 'minute',
		1 => 'second'
	);
	foreach ($units as $unit => $val) {
		if ($time < $unit) continue;
		$numberOfUnits = floor($time / $unit);
		return ($val == 'second')? 'a few seconds ago' : (($numberOfUnits>1) ? $numberOfUnits : 'a').' '.$val.(($numberOfUnits>1) ? 's' : '').' ago';
	}
});
$twig->addFilter($filterTimeAgo);

//////////////////////////////////////////////////////////////////////////////