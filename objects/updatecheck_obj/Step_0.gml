if file_exists("updatecheck.ini"){
ini_open("updatecheck.ini");
    str = ini_read_string("version", "num", 0)
ini_close();
    str=real(str)
}


if global.lang=="es"{
    text="HAY UNA NUEVA VERSIÓN DISPONIBLE.#PRESIONA PARA DESCARGAR"
}else{
    text="THERE'S A NEW VERSION AVAILABLE.#PRESS HERE TO DOWNLOAD"
}

if point_in_rectangle(mouse_x,mouse_y,0,570,315,640) and str>version{
    if mouse_check_button_pressed(mb_left){
        if os_type!=os_android{execute_shell_simple("https://gamejolt.com/games/pvznd/641658")}
        else{url_open("https://crisdevelop.itch.io/pvznd")}
    }
    c=c_yellow
}else{
    c=c_white
}

