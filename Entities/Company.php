<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Companies
 *
 * @author Fernando
 */
class Company {
    var $companyId;
	var $name;
	var $address;
	var $telephone;
	var $registeredDate;
	var $description;
	
	function getCompanyId(){
		return $companyId;
	}
	function setCompanyId($value){
		$this->companyId=$value;
	}	
	function getName(){
		return $name;
	}
	function setName($value){
		$this->name=$value;
	}	
	function getAddress(){
		return $address;
	}
	function setAddress($value){
		$this->address=$value;
	}	
	function getTelephone(){
		return $telephone;
	}
	function setTelephone($value){
		$this->telephone=$value;
	}
	
	function getRegisteredDate(){
		return $registeredDate;
	}
	function setRegisteredDate($value){
		$this->registeredDate=$value;
	}	
	
	function getDescription(){
		return $description;
	}
	function setDescription($value){
		$this->description=$value;
	}	
	
}

?>
