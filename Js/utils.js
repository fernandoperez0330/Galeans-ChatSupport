/*
 * description  :   
 * created      : 16-09-2011
 * created by   : fernando perez
 * version      : 1.0
 */
/*
 *
 */
function generaLiConversacion(usuario,fecha,mensaje){
    return "<li class=\"message\"><strong>" + usuario + "</strong> <span id=\"fecha\">[" + fecha + "]</span> dice: " + mensaje + "</li>";
}


