switch(state){
    default:
        draw_sprite_ext(charco1_spr,image_index,x,y,1,1,0,c_white,image_alpha)
    break
    
    case 1:
        draw_sprite_ext(charco1_spr,image_index,x,y,1,1,0,c_white,image_alpha)
        draw_sprite_ext(charco2_spr,image_index,x,y,-1,1,0,c_white,image_alpha)
    break
    
    case 2:
        draw_sprite_ext(charco1_spr,image_index,x,y,1,1,0,c_white,image_alpha)
        draw_sprite_ext(charco2_spr,image_index,x,y,1,1,0,c_white,image_alpha)
    break
    
    case 3:
        draw_sprite_ext(charco2_spr,image_index,x,y,-1,1,0,c_white,image_alpha)
        draw_sprite_ext(charco2_spr,image_index,x,y,1,1,0,c_white,image_alpha)
    break
}

