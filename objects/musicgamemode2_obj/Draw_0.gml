if room!=configsurv_rm{
    var txt_opt
    var txt_pcon
    var txt_zcon
    
    if global.lang="es"{
        txt_opt = "Opciones del duelo"
        txt_pcon = "Controles de planta"
        txt_zcon = "Controles de Zombi"
        
        txt_adv = "Opciones avanzadas"
    }else{
        txt_opt = "Versus options"
        txt_pcon = "Plant controls"
        txt_zcon = "Zombie controls"
        
        txt_adv = "Advanced options"
    }
    
    draw_set_font(yougotaprize_fnt)
    draw_set_valign(fa_top)
    draw_set_halign(fa_center)
    
    draw_text_ext_colour(538,32,string_hash_to_newline(txt_opt),100,500,c_black,c_black,c_black,c_black,image_alpha)
    draw_text_ext_colour(536,30,string_hash_to_newline(txt_opt),100,500,c_white,c_white,c_white,c_white,image_alpha)
    
    draw_text_ext_colour(1360,32,string_hash_to_newline(txt_pcon),100,500,c_black,c_black,c_black,c_black,image_alpha)
    draw_text_ext_colour(1358,30,string_hash_to_newline(txt_pcon),100,500,c_white,c_white,c_white,c_white,image_alpha)
    
    draw_text_ext_colour(1904,32,string_hash_to_newline(txt_zcon),100,500,c_black,c_black,c_black,c_black,image_alpha)
    draw_text_ext_colour(1902,30,string_hash_to_newline(txt_zcon),100,500,c_white,c_white,c_white,c_white,image_alpha)
    
    draw_text_ext_colour(538 + 1088,32 + 640,string_hash_to_newline(txt_adv),100,500,c_black,c_black,c_black,c_black,image_alpha)
    draw_text_ext_colour(536 + 1088,30 + 640,string_hash_to_newline(txt_adv),100,500,c_white,c_white,c_white,c_white,image_alpha)
}

