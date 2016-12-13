<?php
use \app\data;

//////////////////////////////////////////////////////////////////////////////
// Global Variables

$twig->addGlobal("project_name", "Directus WebApp Example");

//////////////////////////////////////////////////////////////////////////////
// Global Data

$twig->addGlobal("about", $client->getEntry('about', 1));

$project_types = $client->getEntries('project_types', [
	'status' => '1',
	'orderBy' => 'sort',
	'orderDirection' => 'ASC'
]);
$twig->addGlobal("project_types", $project_types);

//////////////////////////////////////////////////////////////////////////////
// Preview – Current user is authenticated into the mangaging Directus instance

$twig->addGlobal("global_preview", isset($_SESSION['preview']));

//////////////////////////////////////////////////////////////////////////////
// 404 – Missing Page Error

$app->notFound(function() use ($app) {
    $app->render('page-not-found.twig.html', array());
});

//////////////////////////////////////////////////////////////////////////////