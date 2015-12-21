<?php
/**
* 
*/
class Default_Model_Posts extends Zend_Db_Table_Abstract{
	
	protected $_db;
	
	public function init(){
		$this->_db = Zend_Registry::get('db');
	}
	public function getAll($arrFields, $arrWhere = array()){
		if(empty($arrFields)){
			$arrFields = '*'
		}
		$strSql = $this->_db->select($arrFields)
						->from('users');
		if(!empty($arrWhere)){
			$strSql = $strSql->where();
		}
		$result = $this->_db->fetchAll($strSql);
		return $result;
	}

	public function count(){

	}
}