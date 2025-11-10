if !window_has_focus() or os_is_paused(){
selected=false
}

if selected==true and os_device != os_android{
    if keyboard_check(vk_control){
        if keyboard_check_pressed(ord("V")) and clipboard_has_text(){
          keyboard_string += clipboard_get_text();
        }
    }
    
    if string_length(keyboard_string)>=30{
        keyboard_string = str
    }
    
    str = keyboard_string
}else{
    line=""
}

