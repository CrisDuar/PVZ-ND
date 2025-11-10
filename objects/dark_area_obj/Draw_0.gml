if instance_exists(boss3_obj){
    draw_set_alpha(lph)
    draw_rectangle_colour(xx,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
    
    draw_set_alpha(full_lph)
    draw_rectangle_colour(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
    draw_set_alpha(1)
    
    draw_sprite_ext(black_deg_spr,0,xx,0,-1,room_height,0,c_black,lph)
    
}

