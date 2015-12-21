<?php

class Bootstrap extends Zend_Application_Bootstrap_Bootstrap
{    
    protected function _initViewHelpers() {
        Zend_Layout::startMvc();
    }

    
    protected function _initDatabase(){
        $db = $this->getPluginResource('db')->getDbAdapter();
        Zend_Registry::set('db', $db);
    }


    // protected function _initRouter() {
    //     $frontController = Zend_Controller_Front::getInstance();
    //     $router = $frontController->getRouter();

    //     $staticRouters = new Zend_Config_Ini(CONFIG_PATH.DS. 'router.ini', 'setup-router');
    //     $router->addConfig($staticRouters,'routers');
    // }
}