<?php
	public class UserSection{
	
	private $userSectionId;
	private $name;
	private $email;
	private $company;

	public UserSection($userSectionId, $name, $email, $company) {
		$this->userSectionId = $userSectionId;
		$this->name = $name;
		$this->email = $email;
		$this->company = $company;		
	}
	
	public function setUserSectionId($userSectionId){
		$this->userSection = $userSectionId;
	}
	
	public function getUserSectionId(){
		return $this->userSectionId;
	}
	
	public function setName($name){
		$this->name = $name;
	}
	
	public function getName(){
		return $this->name;
	}
	
	public function setEmail($email){
		$this->email = $name;
	}
	
	public function getEmail(){
		return $this->email;
	}
	
	public function setCompany($company){
		$this->company =$company;
	}
	public function getCompany(){
		$this->company;
	}

}
?>
