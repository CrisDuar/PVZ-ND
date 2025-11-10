draw_self();
draw_set_font(plants_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_center)

draw_text_ext_colour(x,y-115,string_hash_to_newline(name),32,440,color,color,color,color,image_alpha)
if locked=false{
    
    var _txt1 = "Current flags: "
    var _txt2 = "Press again#to confirm"
    
    var _txt3 = "Your saved game is from a different version and may become corrupted."

    if global.lang=="es"{
        _txt1 = "Banderas actuales: "
        _txt2 = "Pulse de nuevo#para confirmar"
        _txt3 = "Tu partida es de una versión diferente y puede corromperse."
    }
    
    draw_text_ext_colour(x,y+85,string_hash_to_newline("Record: " + string(record)),32,440,color,color,color,color,image_alpha)
    draw_text_ext_colour(x,y+115, string_hash_to_newline(_txt1 + string(progress)),32,440,color,color,color,color,image_alpha)
    
    if confirm==true draw_text_ext_colour(x,y+260,string_hash_to_newline(_txt2),32,440,color,color,color,color,image_alpha)
    
    
    ///botones
    
    //continuar
    var _size1 = 1
    if point_in_rectangle(mouse_x,mouse_y,x-69,y+180-22,x+69,y+180+22) _size1 = 1.05
    
    //new game
    var _size2 = 1
    if point_in_rectangle(mouse_x,mouse_y,x-69,y+230-22,x+69,y+230+22) _size2 = 1.05
    
    if progress>0{
        draw_sprite_ext(continue_spr,0,x,y+180,_size1,_size1,0,c_white,1)
        draw_sprite_ext(newgame_spr,0,x,y+230,_size2,_size2,0,c_white,1)
    }else{
        draw_sprite_ext(newgame_spr,0,x,y+180,_size1,_size1,0,c_white,1)
    }
    
    ///WARNING
    if (version != global.survival_ver){
        draw_sprite(warning_spr, 0, x+73, y-73)
        draw_set_valign(fa_bottom)
        if (point_in_rectangle(mouse_x,mouse_y,x+73-15, y-73-15, x+73+15, y-73+15) or _size1!=1) draw_text_ext_colour(544,__view_get( e__VW.YView, 0 )+550,string_hash_to_newline(_txt3),32,1000, c_maroon, c_maroon, c_maroon, c_maroon, 1)
        
    }
    
}else{
    draw_sprite(lockgamemode_spr,0,x,y)
}

