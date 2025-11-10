if __view_get( e__VW.YView, 0 )>0{
    
    if point_in_rectangle(mouse_x,mouse_y,xx-149, yy-6,xx+149, yy+259){
        if (mouse_check_button_pressed(mb_left)) {
            dy = mouse_y
            drag=scroll
            draggin=true
        }
        //scroll with mouse
        if mouse_wheel_up() scroll=clamp(scroll-10,0,limit)
        if mouse_wheel_down() scroll=clamp(scroll+10,0,limit)
    }
    
    if (mouse_check_button_released(mb_left)) {draggin=false}
    if (mouse_check_button(mb_left)) and draggin=true{scroll=clamp(dy - (mouse_y - drag),0,limit)}
    
}else{
    grass=0
    unitcost=""
    unitname_es=""
    unitname_en=""
    unitsprite=0
    subimage=0
    imagespeed=0
    maximage=0
    descrip_es[0]=""
    descrip_es[1]=""
    descrip_en[0]=""
    descrip_en[1]=""
    scroll=0
}

