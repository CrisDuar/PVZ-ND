if point_in_rectangle(mouse_x,mouse_y,x-wth,y-hth,x+wth,y+hth){
    if global.lang=="es"{
        req = get_string_async(txt_es,str)
    }else{
        req = get_string_async(txt_en,str)
    }     
}else{
    selected=false
    //keyboard_string=""
}

