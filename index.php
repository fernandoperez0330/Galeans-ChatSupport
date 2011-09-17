<?php
/*
 * description  :   
 * created      : 16-09-2011
 * created by   : fernando perez
 * version      : 1.0
 */
//incluir la clase del config
include("Configs/Config.php");
//obtener el title por defecto de la pagina 
$title = Config::$title;
//este sera el header qeu tendra la pagina, por defecto sera el logo del producto
$header = file_get_contents(Config::$directories['views'] . "header.html");
//esta sera la variable que guardará los contenidos dinamicos (que cambian) (pueden agregarse mas variable en el cual utilizara la vista)
$content = "";
include(Config::$directories['views'] . "frontpage.html");
?>
