<?php
session_start();
date_default_timezone_set('America/New_York');

require __DIR__.'/../vendor/autoload.php';
require __DIR__.'/../config.php';

$client = \Directus\SDK\ClientFactory::create($config);

$TwigView = new \Slim\Extras\Views\Twig();
$TwigView::$twigTemplateDirs = '../templates';

$app = new \Slim\Slim(array(
	'view' => $TwigView,
	'charset' => 'utf-8',
	'cache' => realpath('../templates/cache'),
	'auto_reload' => true,
	'strict_variables' => false,
	'autoescape' => true
));

\Slim\Extras\Views\Twig::$twigOptions = array(
	'debug' => false
);

$baseUrl = isset($_SERVER['SERVER_NAME']) ? 'http://' . $_SERVER['SERVER_NAME'] : 'http://example.getdirectus.com';
$fullUrl = isset($_SERVER['REQUEST_URI']) ? $baseUrl . $_SERVER['REQUEST_URI'] : $baseUrl;

$twig = $TwigView->getEnvironment();

$twig->addExtension(new \Twig_Extensions_Slim());
$twig->addExtension(new \Twig_Extension_Debug());

require '../public/filters.php';

$twig->addGlobal("assetsRoot", ROOT_URL . 'assets/');
$twig->addGlobal("mediaUrl", MEDIA_URL);
$twig->addGlobal("rootUrl", ROOT_URL);
$twig->addGlobal("baseUrl", $baseUrl);
$twig->addGlobal("fullUrl", $fullUrl);

// Get page routes and globals
require '../public/globals.php';
require '../routes/pages.php';

$app->run();
