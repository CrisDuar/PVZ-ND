if (instance_exists(origin)){
    if (origin.costume_img != noone){
        draw_sprite_ext(origin.costume_img,origin.image_index,origin.x+irandom_range(-origin.shake, origin.shake),origin.y+origin.yy, origin.image_xscale*origin.xmod ,origin.image_yscale,origin.image_angle,origin.image_blend,origin.image_alpha*origin.lph_mod)
        
        if (origin.freeze){
            draw_sprite_ext(origin.costume_img,origin.image_index,origin.x+irandom_range(-origin.shake, origin.shake),origin.y+origin.yy, origin.image_xscale*origin.xmod ,origin.image_yscale,origin.image_angle,origin.c_frost,origin.image_alpha*0.8*origin.lph_mod)
        }
    }
}

