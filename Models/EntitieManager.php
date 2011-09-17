<?php
	abstract class EntitieManager{
		abstract protected function create($value);
		abstract protected function modify($value);
		abstract protected function find($value);
		abstract protected function listAll($value);
		abstract protected function delete($value);
	}
?>