draw_set_font(plants_fnt)
draw_set_valign(fa_middle)
draw_set_halign(fa_left)

var c = make_colour_rgb(135, 83, 39);
//draw_text_ext_colour(x,y,text,32,440,color,color,color,color,image_alpha)

if room==menu_rm_{
    if global.lang=="es"{
        draw_text_ext_colour(3320,128,string_hash_to_newline("¡Accediste como " + "@" + string(username) + "!"),32,440,c,c,c,c,image_alpha)
    }else{
        draw_text_ext_colour(3320,128,string_hash_to_newline("You're logged in as " + "@" + string(username) + "!"),32,440,c,c,c,c,image_alpha)    
    }
}

