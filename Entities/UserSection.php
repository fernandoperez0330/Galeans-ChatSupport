<?php
	class UserSection{
	
	var $userSectionId;
	var $name;
	var $email;
	var $company;

	function __construct($userSectionId, $name, $email, $company) {
		$this->userSectionId = $userSectionId;
		$this->name = $name;
		$this->email = $email;
		$this->company = $company;		
	}
	
	function setUserSectionId($userSectionId){
		$this->userSection = $userSectionId;
	}
	
	function getUserSectionId(){
		return $this->userSectionId;
	}
	
	function setName($name){
		$this->name = $name;
	}
	
	function getName(){
		return $this->name;
	}
	
	function setEmail($email){
		$this->email = $name;
	}
	
	function getEmail(){
		return $this->email;
	}
	
	function setCompany($company){
		$this->company =$company;
	}
	function getCompany(){
		$this->company;
	}

}
?>
