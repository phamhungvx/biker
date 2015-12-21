<?php
/**
* 
*/
class PostsController extends Zend_Controller_Action
{
	
	public function indexAction(){
		$model = new Default_Model_Posts();
		$data = $model->getAll();
		$this->view->data = $data;
		var_dump($data);
		exit;
	}
}