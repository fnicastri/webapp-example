<?php

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
