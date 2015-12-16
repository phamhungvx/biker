<?php

class Bootstrap extends Zend_Application_Bootstrap_Bootstrap
{    
    protected function _initViewHelpers() {
        Zend_Layout::startMvc();
    }

    
    // protected function _initDatabase()
    // {
    //     $path = CONFIG_PATH .DS. 'db.ini';
    //     if(is_file($path)){
    //         $config = new Zend_Config_Ini( $path , APPLICATION_ENV );
            
    //         //Factory db select
    //         if(isset($config->multidb->db1)){
    //             $db1 = $config->multidb->db1;
    //             $adapter = Zend_Db::factory($db1);
    //             Zend_Registry::set('db1', $adapter);
    //             if($db1->isDefaultAdapter)
    //                 Zend_Db_Table::setDefaultAdapter($adapter);
    //         }
            
    //         if(isset($config->multidb->db2)){
    //             $db2 = $config->multidb->db2;
    //             $adapter = Zend_Db::factory($db2);
    //             Zend_Registry::set('db2', $adapter);
    //             if($db2->isDefaultAdapter)
    //                 Zend_Db_Table::setDefaultAdapter($adapter);
    //         }    
    //     }
        
    // }


    // protected function _initRouter() {
    //     $frontController = Zend_Controller_Front::getInstance();
    //     $router = $frontController->getRouter();

    //     $staticRouters = new Zend_Config_Ini(CONFIG_PATH.DS. 'router.ini', 'setup-router');
    //     $router->addConfig($staticRouters,'routers');
    // }
}