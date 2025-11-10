event_inherited();

if con==true{
    draw_set_blend_mode(bm_add)
    draw_set_colour(c_white)
    
    for (var i = 0; i<trail-1; i++){
        draw_line_width(array_posX[| i],array_posY[| i],array_posX[| i+1],array_posY[| i+1],2)
        draw_sprite_ext(raypart_spr,0,array_posX[| i+1],array_posY[| i+1],1,1,array_rotation[| i+1],c_aqua,0.3)
    }
    draw_set_blend_mode(bm_normal)
}

draw_text(x,y,string_hash_to_newline(string(xx) + ", " + string(yy)))
draw_text(x,y+20,string_hash_to_newline(string(objx) + ", " + string(objy)))
draw_text(x,y+40,string_hash_to_newline(string(array_posX[| ds_list_size(array_posX)-1]) + ", " + string(array_posY[| ds_list_size(array_posY)-1])))
draw_text(x,y+60,string_hash_to_newline(string(ds_list_size(array_posY))))
draw_text(x,y+80,string_hash_to_newline(trail))
draw_text(x,y+100,string_hash_to_newline("con " + string(con) + ", con2me: " + string(con2me)))

