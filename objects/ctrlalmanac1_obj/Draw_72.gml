if __view_get( e__VW.YView, 0 )>0{
    draw_set_colour(make_colour_rgb(231, 231, 231))
    draw_rectangle(755, 325+__view_get( e__VW.YView, 0 ), 1066, 610+__view_get( e__VW.YView, 0 ), false)
    draw_set_color(c_white)
    
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    draw_set_font(almanac_fnt)
    
    
    var txt;
    
    if global.lang="es"{
    
        txt = descrip_es[global.almanacpage]
        limit=string_height_ext(string_hash_to_newline(descrip_es[global.almanacpage]),18,285)-200
    }else{
    
        txt = descrip_en[global.almanacpage]
        limit=string_height_ext(string_hash_to_newline(descrip_en[global.almanacpage]),18,285)-200
    }
    
    if (scroll > limit) scroll = limit
    if (scroll < 0) scroll = 0
    
    if global.almanacpage==0{
        
        draw_text_multi_color(xx-158, yy-6-scroll, txt, 9.5, 290, 21, c_black)
    }else{
    
        var c = make_colour_rgb(77,76,79)//gray
        draw_set_font(soles_fnt);        
        draw_text_ext_colour(xx-145, yy-3-scroll, string_hash_to_newline(txt),24,285,c,c,c,c,1)
        
    }
    
        //load_almanac
        //draw_text(mouse_x, mouse_y, txt)
        /*draw_set_font(soles_fnt);
        if global.lang="es"{
            draw_text_ext_colour(xx-165, yy-6-scroll,descrip_es[1],20,280,5196877,5196877,5196877,5196877,1)
            limit=string_height_ext(descrip_es[global.almanacpage],15,285)-200
        }
        else{
            draw_text_ext_colour(xx-165, yy-6-scroll,descrip_en[1],20,280,5196877,5196877,5196877,5196877,1)
            limit=string_height_ext(descrip_en[global.almanacpage],15,285)-200
        }*/
    

    draw_sprite(grass1_spr,grass,xx,yy-130)
    part_system_drawit(part)
    draw_sprite_ext(unitsprite,floor(subimage),xx,yy-90 + sine_yy,1,1,1,c_white,1)
}

/* */
/*  */
