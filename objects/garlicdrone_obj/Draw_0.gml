if disfraz=1{
    switch(sprite_index){
        case garlicdrone_spr:
            draw_sprite_ext(garlicds_spr,image_index,x,y+yy,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
        break
        
        case garlicshoot_spr:
            draw_sprite_ext(garlicdsshoot_spr,image_index,x,y+yy,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
        break
        
        case garlicfly1_spr:
            draw_sprite_ext(garlicdsfly_spr,image_index,x,y+yy,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
        break
    }
}else{
    draw_sprite_ext(sprite_index,image_index,x,y+yy,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}

