/*
 * description  :   
 * created      : 16-09-2011
 * created by   : fernando perez
 * version      : 1.0
 */
//variable que identificara la session a utilizar
var session = 0;
//variable que identifica el directorio de las sessiones
dirChatSessions = "chatsessions/";


function refreshChat(){
    if (session == 0) return false;
    $.ajax({
        type: "GET",
        url: dirChatSessions + session + ".xml",
        dataType: "xml",
        success: function(xml) {
            countXml = $(xml).find('message').length;
            countMessage = $("#areachat .message").length;      
            if (countXml != countMessage){
                if (countXml > countMessage) {
                   numberLast = countXml;
                   numberFrom = countMessage;
                }
                else {
                    numberLast = countMessage;
                    numberFrom = countXml;
                }
                for(i = numberFrom; i < numberLast; i++){
                    ActualElement = $(xml).find('message')[i];
                    $("#areachat").append(generaLiConversacion($(ActualElement).find('sender').text(),$(ActualElement).find('date').text(),$(ActualElement).find('content').text()));
                    var objDiv = document.getElementById("areachat");
                    objDiv.scrollTop = objDiv.scrollHeight;
                }
  
            }
        }
    });  
}

$(document).ready(function(){
    session = 1;
    refreshChat();
    setInterval("refreshChat()",1000 * 4);
    /*
     *
     */
    
    var url = "ajax.genchat.php";
    $("#submitChat").click(function(){
       if ($("#inputChat").val() == "") return false;
       var session = 1;
       var sender = "Operador 1";
       var senderId = 1;
       var content = $("#inputChat").val();
       $.ajax({
            type: "POST",
            url: url,
            data: "session=" + session + "&sender=" + sender + "&senderId=" + senderId + "&content=" + content,
            success: function(data) {
                refreshChat();
            },
            cache:false
        });
       $("#inputChat").val(""); 
    }); 
   
    /*
     *
     */
    $("#inputChat").keypress(function(event) {
          //cuando presiona la tecla de enter
          if (event.which == 13){
              $("#submitChat").click();
              return false;
          }
    }); 
});

