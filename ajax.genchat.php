<?php
/*
 * description  :   
 * created      : 16-09-2011
 * created by   : Fernando Perez
 * version      : 1.0
 */
if (!(isset($_POST['session']) && isset($_POST['senderId']) && isset($_POST['sender']) && isset($_POST['content']))) return json_encode(array("error"=>"Faltan parametros para procesar"));
$session  = $_POST['session'];
$senderId  = $_POST['senderId'];
$sender = $_POST['sender'];
$content = $_POST['content'];

$filename = "chatSessions/$session.xml";

$xmlContent = "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n";
$xmlContent.= "<chat>\n";
$lastId = 0;

$xml = @simplexml_load_file($filename);
if (isset($xml->message)){
    foreach ($xml->message as $k=>$v){
        $arrAttrMessage = $v->attributes();
        $xmlContent.= "<message id=\"" .$arrAttrMessage['id']."\">\n";
        $xmlContent.= "<date>{$v->date}</date>\n";
        $xmlContent.= "<senderId>{$v->senderId}</senderId>\n";
        $xmlContent.= "<sender>{$v->sender}</sender>\n";
        $xmlContent.= "<content>{$v->content}</content>\n";
        $xmlContent.= "</message>\n\n";
        $lastId = $arrAttrMessage['id'];
    }    
}

$xmlContent.= "<message id=\"" . ($lastId + 1) ."\">\n";
$xmlContent.= "<date>" . date("Y-m-d H:i:s") . "</date>\n";
$xmlContent.= "<senderId>$senderId</senderId>\n";
$xmlContent.= "<sender>$sender</sender>\n";
$xmlContent.= "<content>$content</content>\n";
$xmlContent.= "</message>\n";

$xmlContent.= "</chat>";
$resFile = fopen($filename,'r+');
fwrite($resFile,$xmlContent);
fclose($resFile);
?>

