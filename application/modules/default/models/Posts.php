<?php
/**
* 
*/
class Default_Model_Posts extends Zend_Db_Table_Abstract{
	
	protected $_db;
	
	public function init(){
		$this->_db = Zend_Registry::get('db');
	}

	/**
	 * Get All data
	 *
	 * @param 	$arrParams	Array params to search
	 * @param  	$intLimut		row per page
	 * @param 	$intPage		page request
	 *
	 * @return 	$arrResult
	 */
	public function getAll($arrParams, $intLimit = 10, $intPage = 1){

		$strSelect = $this->_db->select()
						->from('users');

		if( isset($arrParams['status']) && $arrParams['status'] != 0){
			$strSelect = $strSelect->where('status = ?', $arrParams['status']);
		}
		if( isset($arrParams['author']) && $arrParams['author'] != 0){
			$strSelect = $strSelect->where('author = ?', $arrParams['author']);
		}
		if( isset($arrParams['name']) && $arrParams['name'] != ''){
			$strSelect = $strSelect->where('title like %?%', $arrParams['author']);
		}

		$arrResult = $this->_db->fetchAll($strSelect);
		return $arrResult;
	}

	public function count(){

	}
}