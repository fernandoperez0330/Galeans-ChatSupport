<?php

	public class Case{
	
		private $caseId;
		private $description;
		private $notes;
		private $solution;
		private $section;
		
		public Case($description, $notes,
		 			$solution, $section ){
			$this->description = $description;
			$this->notes = $notes;
			$this->solution = $solution;
			$this->section = $section;
		}
		
		public function setCaseId($caseId){
			$this->caseId = $caseId;
		}
		public function getCaseId(){
			return $this->caseId;
		}
		
		public function setNotes($notes){
			$this->notes = $notes;
		}
		public function getNotes(){
			return $this->notes;
		}
		
		public function setSolution($solution){
			return $this ->solution=$solution;
		}
		
		public function getSolution(){
			return $this->solution;
		}
		
		public function setSection($section){
			$this->section = $section;
		}
		
		
	
	}


?>
