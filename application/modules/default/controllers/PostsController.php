<?php
/**
* 
*/
class PostsController extends Zend_Controller_Action
{
	protected $_modePost;
	public function init(){
		$this->_modePost = new Default_Model_Posts();
	}

	public function indexAction(){
		$arrParams = array();
		// Default public post
		$intLimit = 10;
		$intPage = 1;
		$intStatus = 1;

		$data = $this->_request->getParams();

		if( isset($data['page']) && $data['page'] != 0){
			$intPage = $data['page'];
		}
		if( isset($data['status']) && $data['status'] != 0){
			$intStatus = $data['status'];
			$arrParams['status'] = $intStatus;
		}
		if( isset($data['author']) && $data['author'] != 0){
			$arrParams['author'] = $data['author'];
		}
		if( isset($data['name']) && $data['name'] != ''){
			$arrParams['name'] = $data['name'];
		}


		$arrPostData = $model->getAll($arrParams, $intLimit, $intPage);
		$this->view->data = $arrPostData;
		var_dump($arrPostData);
		exit;
	}
}