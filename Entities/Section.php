<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Sections
 *
 * @author Fernando
 */
class Section {
  	private $sectionId;
	private $date;
	private $conversation;
	private $user;
	private $userSection;
	
	public Section($date, $conversation, $user, $userSection){
		$this->date = $date;
		$this->conversation = $conversation;
		$this->user = $user;
		$this->userSection = $userSection;
	}
	
	public function setDate($date){
		$this->date = $date;
	}
	public function getDate(){
		return $this->date;
	}
	public function setConversation($conversation){
		$this->conversation = $conversation;
	}
	public function getConversation(){
		return $this->conversation;
	}
	public function setUser($user){
		$this->user = $user;
	}
	
	public function getUser(){
		return $this->user;
	}
	
	public function setUserSection($userSection){
		$this->userSection = $userSection;
	}
	
	
}

?>
