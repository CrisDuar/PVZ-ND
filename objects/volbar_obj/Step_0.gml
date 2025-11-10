if global.lang="es"{
    text=name_es
}else{
    text=name_en
}

if mouse_check_button_pressed(mb_left){
    if point_in_rectangle(mouse_x,mouse_y,minlimit-15,y-20,maxlimit+15,y+20) hold=true
}

if mouse_check_button_released(mb_left) hold=false

if hold variable_instance_set(ctrlmenu_id,volname,clamp(((mouse_x-minlimit)/(maxlimit-minlimit))*100,0,100))

