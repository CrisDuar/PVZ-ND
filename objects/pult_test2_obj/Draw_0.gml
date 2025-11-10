draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
    if sprite_index=peashooter_spr{
        draw_sprite_ext(peadis1_spr,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
    }
    if sprite_index=peashooting_spr{
        draw_sprite_ext(peashootdis1_spr,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
    }
if instance_exists(obj){
draw_line(x+10,y+20,obj.x,obj.y)
}

