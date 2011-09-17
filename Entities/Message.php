<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Messages
 *
 * @author Fernando
 */
class Message {
    var $messageId;
	var $transmitter;
	var $receiver;
	var $subject;
	var $body;
	var $date;
	var $status;
	var $userSection;
	
	function getMessageId(){
		return $messageId;
	}
	function setMessageId($value){
		$this->messageId=$value;
	}
	function getTransmitter(){
		return $transmitter;
	}
	function setTransmitter($value){
		$this->transmitter=$value;
	}
	function getReceiver(){
		return $receiver;
	}
	function setReceiver($value){
		$this->receiver=$value;
	}
	function getSubject(){
		return $subject;
	}
	function setSubject($value){
		$this->subject=$value;
	}
	function getBody(){
		return $body;
	}
	function setBody($value){
		$this->body=$value;
	}
	function getDate(){
		return $date;
	}
	function setDate($value){
		$this->date=$value;
	}
	function getStatus(){
		return $status;
	}
	function setStatus($value){
		$this->status=$value;
	}
	function getUserSection(){
		return $userSection;
	}
	function setUserSection($value){
		$this->userSection=$value;
	}
}

?>
