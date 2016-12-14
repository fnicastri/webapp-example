<?php
use \app\data;

//////////////////////////////////////////////////////////////////////////////

$app->get('/?', function () use ($app, $client) { // Add global variables in here to use
	$project_types = $client->getItems('project_types', [
		'status' => '1',
		'orderBy' => 'sort',
		'orderDirection' => 'ASC'
	]);

	// print_r($project_types);
	// die();

	$app->render('home.twig.html', array('project_types'=>$project_types, 'page'=>'home'));
});

//////////////////////////////////////////////////////////////////////////////

$app->get('/projects/?', function () use ($app, $client) {

	// Data is fetched globally

	$project_types_deep = $client->getItems('project_types', [
		// 'depth' => 3, // This depth param is throwing an error for now
		'status' => '1',
		'orderBy' => 'sort',
		'orderDirection' => 'ASC'
	]);

	// Uncomment this to see the results, hero_image should contain it's relational data with DEPTH=3
	// print_r($project_types_deep);
	// die();

	$app->render('projects.twig.html', array('page'=>'projects'));
});

//////////////////////////////////////////////////////////////////////////////

$app->get('/projects/(:type)/(:project)', function ($type = "", $project = "") use ($app, $client) {
	$data = array();

	// $client->getEntry('projects', 1);

	$project = $client->getItems('projects', [
		'status' => '1',
		'adv_where' => ['slug' => $project]
	]);
	$project = $project[0];
	$id = $project['id'];

	$timeline = $client->getItems('project_milestones', [
		'orderBy' => 'sort',
		'orderDirection' => 'ASC',
		'adv_where' => ['project_id' => $id]
	]);

	// print_r($project);
	// print_r($timeline);
	// die();

	$app->render('project.twig.html', array('project'=>$project, 'timeline'=>$timeline, 'page'=>'projects'));
});

//////////////////////////////////////////////////////////////////////////////

$app->get('/about/?', function () use ($app, $client) {
	$staff = $client->getItems('staff', [
		'status' => '1',
		'orderBy' => 'sort',
		'orderDirection' => 'ASC'
	]);

	$faq = $client->getItems('faq', [
		'status' => '1',
		'orderBy' => 'sort',
		'orderDirection' => 'ASC'
	]);

	// Need in two categories
	$resources = $client->getItems('resources', [
		'status' => '1',
		'orderBy' => 'sort',
		'orderDirection' => 'ASC'
	]);

	// print_r($staff);
	// print_r($faq);
	// print_r($resources);
	// die();

	$app->render('about.twig.html', array('staff'=>$staff, 'faq'=>$faq, 'resources'=>$resources, 'page'=>'about'));
});

//////////////////////////////////////////////////////////////////////////////

$app->get('/services/?', function () use ($app, $client) {

	// Data is fetched globally

	$app->render('services.twig.html', array('page'=>'services'));
});

//////////////////////////////////////////////////////////////////////////////

$app->get('/news/?', function () use ($app, $client) {
	$news = $client->getItems('news', [
		'status' => '1',
		'filters' => [
			'publish_date' => ['<=' => (new DateTime())->format('Y-m-d')] // Only get items that are past the publish date
		],
		'orderBy' => 'publish_date',
		'orderDirection' => 'DESC'
	]);

	// print_r($news);
	// die();

	$app->render('news.twig.html', array('news'=>$news, 'page'=>'news'));
});

//////////////////////////////////////////////////////////////////////////////
