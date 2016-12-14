<?php

// The included schema uses Directus version: 6.3.5

define('ROOT_URL',    '/project/public/');
define('MEDIA_URL',   '/uploads/');

$config = [
    'database' => [
        'hostname' => 'localhost',
        'username' => 'root',
        'password' => 'root',
        'database' => 'webapp-example',
    ],
    'filesystem' => [
        'root' => __DIR__ . '/public/uploads'
    ]
];
