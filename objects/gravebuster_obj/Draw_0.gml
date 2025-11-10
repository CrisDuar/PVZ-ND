event_inherited();

if disfraz==1{
    draw_sprite_ext(gbcostume1_spr,image_index,x,y+yy,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
    
    if freeze==true{
        draw_sprite_ext(gbcostume1_spr,image_index,x,y+yy,image_xscale,image_yscale,image_angle,c_frost,image_alpha*0.8)
    }
}

