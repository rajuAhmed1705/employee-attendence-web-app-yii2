<?php

$params = require __DIR__ . '/params.php';
$db = require __DIR__ . '/db.php';

$config = [

    'id' => 'basic',
    'name' => 'employee attendance',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'aliases' => [
        '@bower' => '@vendor/bower-asset',
        '@npm'   => '@vendor/npm-asset',
        '@mdm/admin' => '@vendor/mdmsoft',
    ],

    'modules' => [
        // 'rbac' => [
        //     'class' => 'yii2mod\rbac\Module',
        // ],
        'admin' => [
            //'mainLayout' => '@app/views/layouts/main.php',    
            'class' => 'mdm\admin\Module',
            'layout' => 'left-menu',
        ],
    ],

    'components' => [
        'request' => [
            'cookieValidationKey' => 'OtphtFnto-24UO0il0kuBlV_FGHfoCi0',
        ],
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'user' => [
            //'identityClass' => 'app\models\User',
            'identityClass' => 'mdm\admin\models\User',
            // 'enableAutoLogin' => true,
            'loginUrl' => ['admin/user/login'],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            'useFileTransport' => true,
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'db' => $db,
        /*
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
            ],
        ],
        */
        // 'authManager' => [
        //     'class' => 'yii\rbac\DbManager',
        //     'defaultRoles' => ['guest', 'user'],
        // ],
        'authManager' => [
            'class' => 'yii\rbac\DbManager', // or use 'yii\rbac\DbManager'
            'defaultRoles' => ['guest'],
        ],

    ],
    'params' => $params,
    //mdm/rbac
    'as access' => [
        'class' => 'mdm\admin\components\AccessControl',
        // 'allowActions' => [
        //     '*',
        //     // 'site/*',
        //     // 'admin/*',
        //     // 'attendance/*',
        // ]
    ],

    //'defaultRoute' => 'attendance/index'
    
];

if (YII_ENV_DEV) {
    // configuration adjustments for 'dev' environment
    $config['bootstrap'][] = 'debug';
    $config['modules']['debug'] = [
        'class' => 'yii\debug\Module',
        // uncomment the following to add your IP if you are not connecting from localhost.
        //'allowedIPs' => ['127.0.0.1', '::1'],
    ];

    $config['bootstrap'][] = 'gii';
    $config['modules']['gii'] = [
        'class' => 'yii\gii\Module',
        // uncomment the following to add your IP if you are not connecting from localhost.
        //'allowedIPs' => ['127.0.0.1', '::1'],
    ];
}

return $config;
