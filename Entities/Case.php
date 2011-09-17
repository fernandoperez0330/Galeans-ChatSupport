<?php

	public class Case{
	
		public int $caseId;
		public string $description;
		public string $notes;
		public string $solution;
		public Section $section;
		
		public Case(string $description, string $notes,
		 string $solution, Section $section ){
			$this->$description=$description;
		}
	
	}


?>
