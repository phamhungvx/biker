<?php

class Default_Bootstrap extends Zend_Application_Module_Bootstrap
{
    protected function _initAutoload() {
        
        // $autoloader = new Zend_Loader_Autoloader_Resource(array(
        //     'namespace' => 'Default', 
        //     'basePath' => APPLICATION_PATH.DS.'modules'.DS.'default'
        // ));
        // $autoloader->addResourceType('controllers', '/controllers', 'Controller');
    }
}