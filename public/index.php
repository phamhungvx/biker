<?php
date_default_timezone_set("Asia/Saigon");

/**
 * define BASE_URL
 */
define('BASE_URL',"http://{$_SERVER['SERVER_NAME']}/");

define('DS', DIRECTORY_SEPARATOR);
define('ROOT_PATH', realpath(__DIR__.DS.'..'.DS));

define('APPLICATION_PATH', ROOT_PATH.DS.'application');
define('LIB_PATH', ROOT_PATH.DS.'library');
define('CONFIG_PATH', APPLICATION_PATH.DS.'configs');
define('APPLICATION_ENV', getenv('APPLICATION_ENV'));

// Ensure library/ is on include_path
set_include_path(implode(PATH_SEPARATOR, array(
    ROOT_PATH.DS.'library',
    get_include_path(),
)));

/** Zend_Application */
require_once 'Zend/Application.php';

// Create application, bootstrap, and run
$application = new Zend_Application(
        APPLICATION_ENV, CONFIG_PATH.DS.'application.ini'
);
$application->bootstrap()->run();