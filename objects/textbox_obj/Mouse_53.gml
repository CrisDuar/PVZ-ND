if point_in_rectangle(mouse_x,mouse_y,x-wth,y-hth,x+wth,y+hth){
    if os_type == os_android{
        if global.lang=="es"{
            req = get_string_async(txt_es,str)
        }else{
            req = get_string_async(txt_en,str)
        } 
    }else{
        keyboard_string=str
        if keyboard_string==str selected=true
    }
}else{
    selected=false
    //keyboard_string=""
}

