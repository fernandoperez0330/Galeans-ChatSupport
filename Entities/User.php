<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Users
 *
 * @author Fernando
 */
class User {
	var $userId;
	var $fullName;
	var $password;
	var $email;
	var $registeredDate;
	var $status;
	var $company;
	
	function getUserId(){
		return $userId;
	}
	function setUserId($value){
		$this->userId=$value;
	}	
	function getFullName(){
		return $fullName;
	}
	function setFullName($value){
		$this->fullName=$value;
	}	
	function getPassword(){
		return $password;
	}
	function setPassword($value){
		$this->password=$value;
	}	
	function getEmail(){
		return $email;
	}
	function setEmail($value){
		$this->email=$value;
	}	
	function getRegisteredDate(){
		return $registeredDate;
	}
	function setRegisteredDate($value){
		$this->registeredDate=$value;
	}	
	function getStatus(){
		return $status;
	}
	function setStatus($value){
		$this->status=$value;
	}	
	function getCompany(){
		return $company;
	}
	function setCompany($value){
		$this->company=$value;
	}	

}
?>
