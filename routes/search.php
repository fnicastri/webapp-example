<?php
use \app\data;

//////////////////////////////////////////////////////////////////////////////

$app->get('/search/(:q)', function ($q = "") use ($app, $client) {

	$projects = array();
	$news = array();

	if(strlen($q) >= 3){
		// $projects = searchProjects($q);
		// $news = searchNews($q);
	}

	// echo "Searching for: '" . $q . "'<br>\n<br>\n<pre>";
	// print_r($projects);
	// print_r($news);
	// echo "</pre>";
	// die();

	$app->render('search.twig.html', array('q'=>$q, 'projects'=>$projects, 'news'=>$news, 'per_page'=>20));
});

//////////////////////////////////////////////////////////////////////////////
