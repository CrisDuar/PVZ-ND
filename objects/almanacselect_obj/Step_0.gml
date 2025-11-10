if variable_global_get(cond)>lvl{
    sprite_index=sprite
}else{
    sprite_index=locked
}

if round(__view_get( e__VW.YView, 0 ))!=rendery{
    visible=false
    y=ystart
    scroll=0
    instance_deactivate_object(id)
}else{
    visible=true
}

switch(rendery){
    default:
        limit=0
    break
    
    case 640:
        limit=312
    break
    
    case 1920:
        limit=240
    break
}

/*
if y>512 or y<128{
    if image_alpha>0.5 image_alpha-=0.05
}else{
    if image_alpha<1 image_alpha+=0.05
}
*/
if point_in_rectangle(mouse_x,mouse_y,0,rendery,752,rendery + 640) and visible==true{
if (mouse_check_button_pressed(mb_left)){
    dy = mouse_y
    drag=scroll
    draggin=true
}
//scroll with mouse

if mouse_wheel_up() scroll=clamp(scroll-15,0,limit) y=ystart-scroll;
if mouse_wheel_down() scroll=clamp(scroll+15,0,limit) y=ystart-scroll;
}

if (mouse_check_button_released(mb_left)) {draggin=false}

if (mouse_check_button(mb_left))
and visible=true
and draggin=true{
    scroll = dy-(mouse_y-drag)
    scroll = clamp(scroll,0,limit)
    y=ystart-scroll
}

scroll = clamp(scroll,0,limit)

if y<=118+rendery or y>=572+rendery{
    if image_alpha>0.5 image_alpha-=0.05
}else{
    if image_alpha<1 image_alpha+=0.05
}

/* */
/*  */
