<?php 
class Backend_Bootstrap extends Zend_Application_Module_Bootstrap{ 

    protected function _initAutoload() {
        
        $autoloader = new Zend_Loader_Autoloader_Resource(array(
            'namespace' => 'Backend', 
            'basePath' => APPLICATION_PATH.DS.'modules'.DS.'backend'
        ));
        $autoloader->addResourceType('controllers', '/controllers', 'Controller');
    }

    protected function _initConst() {
        $options = $this->getApplication()->getOptions();
        $url = $options['staticUrl'];
        define('FRONT_STATIC_URL', $url);
    }
}