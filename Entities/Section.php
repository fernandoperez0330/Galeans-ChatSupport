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
  	var $sectionId;
	var $date;
	var $conversation;
	var $user;
	var $userSection;
	
	function __construct($date, $conversation, $user, $userSection){
		$this->date = $date;
		$this->conversation = $conversation;
		$this->user = $user;
		$this->userSection = $userSection;
	}
	
	function setDate($date){
		$this->date = $date;
	}
	function getDate(){
		return $this->date;
	}
	function setConversation($conversation){
		$this->conversation = $conversation;
	}
	function getConversation(){
		return $this->conversation;
	}
	function setUser($user){
		$this->user = $user;
	}
	
	function getUser(){
		return $this->user;
	}
	
	function setUserSection($userSection){
		$this->userSection = $userSection;
	}
	
	
}

?>
