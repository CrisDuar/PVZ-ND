var sha = random_range(-sh,sh)

if sprite_exists(spr){
    if water==false{  
        draw_sprite_ext(sprite_index,image_index,x+sha,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
        draw_sprite_ext(sprite_index,image_index,x+sha,y,image_xscale,image_yscale,image_angle,c_black,alpha/2)
        switch(loottype){
            default:
            draw_sprite_ext(spr,0,x+sha,y-10,0.6,0.6,image_angle,c_white,alpha/3)
            break
            
            case 1:
            draw_sprite_ext(spr,0,x+sha,y-40,0.5,0.5,image_angle,c_white,alpha/3)
            break
            
            case 2:
            draw_sprite_ext(spr,0,x+sha,y-40,1,1,image_angle,c_white,alpha/3)
            break
        }
        
    }else{
        draw_sprite_part_ext(sprite_index, image_index, 0, 0, sprite_width, 115, x-sprite_xoffset+sha, y-sprite_yoffset+30, image_xscale, image_yscale, c_white, image_alpha);
        draw_sprite_part_ext(sprite_index, image_index, 0, 0, sprite_width, 115, x-sprite_xoffset+sha, y-sprite_yoffset+30, image_xscale, image_yscale, c_black, alpha/2);
        switch(loottype){
            default:
            draw_sprite_ext(spr,0,x+sha,y-10,0.6,0.6,image_angle,c_white,alpha/3)
            break
            
            case 1:
            draw_sprite_ext(spr,0,x+sha,y-40,0.5,0.5,image_angle,c_white,alpha/3)
            break
            
            case 2:
            draw_sprite_ext(spr,0,x+sha,y-40,1,1,image_angle,c_white,alpha/3)
            break
        }
        draw_sprite(agua2_spr,image_index,x,y)
    }
}


