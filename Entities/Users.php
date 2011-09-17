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
class Users {
    //put your code here
	var $userId;
    var $ullName;
	var $password;
	var $email;
    var $registredDate;
	var $status;
	var $Empresa_idEmpresa;
	
	function getUserId(){
		return this->$userId;
	}
	
	function setUserId(){
	
	}
}

?>
