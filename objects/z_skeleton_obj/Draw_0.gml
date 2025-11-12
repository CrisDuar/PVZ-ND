event_inherited();
if sans=true{
    switch(sprite_index){
    case skeleton2_spr:
    draw_sprite_ext(sans1_spr,image_index,x,y+30*water,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
    break
    
    case skeleton3_spr:
    draw_sprite_ext(sans2_spr,image_index,x,y+30*water,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
    break
    }
}

