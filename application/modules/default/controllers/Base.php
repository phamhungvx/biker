<?php
/**
* 
*/
class Default_Controller_Base extends Zend_Controller_Action
{
	
	public function addAction(){
		$formName = $this->formName;
		$form = new $formName();
		if($this->_request->isPost()){
			if($form->isValid($this->_request->getPost())){
				$data = $this->_request->getPost();
				$this->_model->add($data);
				$this->_redirect($this->view->url(array(
					'action' => 'index',
					'id' => null
				)));
			} else {
				$msgs = $form->getMessages();
				$form->populate($this->_request->getPost());
			}
		}
		$this->view->form = $form;
	}

	public function editAction(){
		$id = $this->_request->getParam('id');
		$formName = $this->formName;
		$form = new $formName();
		if($this->_request->isPost()){
			if($this->isValid($this->_request->getPost())){
				$data = new $this->_request->getPost();
				$this->_model->update($data, $id);
				$this->_redirect($this->view->url(array(
					'action' => 'index',
					'id' => null
				)))
			} else {
				// not valid data
				$form->populate($this->_request->getPost());
			}
		} else {
			$this->view->item = $this->_model->getData($id);
			$form->populate($this->view->item->toArray());
		}
		$this->view->form = $form;
	}
}