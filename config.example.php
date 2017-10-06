<?php

// The included schema uses Directus version: 6.3.5

define('ROOT_URL',    '/');
define('MEDIA_URL',   '/uploads/');

$config = [
    'database' => [
        'hostname' => 'localhost',
        'username' => 'root',
        'password' => 'root',
        'database' => 'directus',
        'charset' => 'utf8',
        'port'     => 3306
    ],
    'filesystem' => [
        'root' => __DIR__ . '/public/uploads'
    ]
];
