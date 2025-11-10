if global.iniciogame==true
and global.gameover=false{
    if control_obj.multijugador==false{
        for (var i=0; i<8; i++){
            draw_sprite(cintatranspor_spr,img,31,32+66*i)
            if i=0 draw_sprite(cintatop_spr,0,31,32+66*0)
            if i=7 draw_sprite(cintabottom_spr,0,31,32+66*7)
        }
    }
    else{
        for (var i=0; i<8; i++){
            draw_sprite(cintatranspor_spr,img,133,32+66*i)
            if i=0 draw_sprite(cintatop_spr,0,133,32+66*0)
            if i=7 draw_sprite(cintabottom_spr,0,133,32+66*7)
            
            draw_sprite_ext(cintatranspor_spr,img,1221,32+66*i,-1,1,0,c_white,1)
            if i=0 draw_sprite_ext(cintatop_spr,0,1221,32+66*0,-1,1,0,c_white,1)
            if i=7 draw_sprite_ext(cintabottom_spr,0,1221,32+66*7,-1,1,0,c_white,1)
        }
    
        
    }
}

