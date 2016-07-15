<?php

define('ROLE_ADMIN', 'admin');
define('ROLE_USER', 'user');
Yii::setPathOfAlias('bootstrap', dirname(__FILE__).'/../extensions/bootstrap');

return array(
	'basePath' => dirname(__FILE__).DIRECTORY_SEPARATOR.'..',
	'name' => 'Movinator',
	'theme'=>'bootstrap',
	'modules'=>array(
		'gii'=>array(
			'generatorPaths'=>array(
				'bootstrap.gii',
			),
		),
	),
	'components'=>array(
		'bootstrap'=>array(
			'class'=>'bootstrap.components.Bootstrap',
		),
	),
	
	'aliases' => array(
		'bootstrap' => realpath(__DIR__ . '/../extensions/bootstrap'), // change this if necessary
		'user' => 'UserIdentity',
	),
	
	// preloading 'log' component
	'preload' => array('log', 'input'),
	
	// autoloading model and component classes
	'import' => array(
		'application.models.*',
		'application.components.*',
		'bootstrap.components.*',
		'bootstrap.widgets.*'
	),
	
	'modules' => array(
		// uncomment the following to enable the Gii tool
		
		/*'gii'=>array(
			'class'=>'system.gii.GiiModule',
			'password'=>'Enter Your Password Here',
		),*/
		
	),
	
	// application components
	'components' => array(
		'bootstrap' => array(
			'class' => 'bootstrap.components.Bootstrap',   
		),
		
		'input'=>array(   
			'class' => 'Input',  
			'cleanPost' => TRUE,  
			'cleanGet' => TRUE,  
        ),
		
		'user' => array(
			// enable cookie-based authentication
			'allowAutoLogin' => TRUE,
		),
		
		// uncomment the following to enable URLs in path-format
		
		'urlManager'=>array(
			'urlFormat'=>'path',
			//'showScriptName' => FALSE,
			'rules'=>array(
			
				// Malware
				'movinize' => 'malware/create',
				'malware/<id:\d+>/edit' => 'malware/update',
				'malware/<id:\d+>/download' => 'malware/download',
				
				//Login
				'login' => 'site/login',
				
				'<controller:\w+>/<id:\d+>' => '<controller>/view',
				'<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
				'<controller:\w+>/<action:\w+>' => '<controller>/<action>',
			),
		),
		
		
		// database settings are configured in database.php
		'db' => require(dirname(__FILE__).'/database.php'),
		
		'errorHandler'=>array(
			'errorAction' => YII_DEBUG ? null : 'site/error',
		),
		
		'log' => array(
			'class' => 'CLogRouter',
			'routes' => array(
				array(
					'class' => 'CFileLogRoute',
					'levels' => 'error, warning',
				),
				// uncomment the following to show log messages on web pages
				/*
				array(
					'class'=>'CWebLogRoute',
				),
				*/
			),
		),
	),
	
	'params' => array(
		'pathUpload' 													=> '/home/jeko/Desktop/movinator/malware/',
		'countries' 													=> require(dirname(__FILE__).'/countries.php'),
		'ipPath' 														=> 'http://ipinfo.io/%s/json',
		'sexs' => array (
			'm'															=> 'Man',
			'f'															=> 'Woman'
		),
		'jobs' => array (
			'black hat'													=> 'Black Hat',
			'white hat'													=> 'White Hat',
			'others'													=> 'Others',
		),
		
	),
);
