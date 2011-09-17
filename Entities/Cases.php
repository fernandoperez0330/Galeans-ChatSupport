<?php
	class Cases{
		var $caseId;
		var $description;
		var $notes;
		var $solution;
		var $section;
		
		function __construct($description, $notes, $solution, $section ){
			$this->description = $description;
			$this->notes = $notes;
			$this->solution = $solution;
			$this->section = $section;
		}
		
		function setCaseId($caseId){
			$this->caseId = $caseId;
		}
		function getCaseId(){
			return $this->caseId;
		}
		
		function setNotes($notes){
			$this->notes = $notes;
		}
		function getNotes(){
			return $this->notes;
		}
		
		function setSolution($solution){
			return $this ->solution=$solution;
		}
		
		function getSolution(){
			return $this->solution;
		}
		
		function setSection($section){
			$this->section = $section;
		}
	}


?>
