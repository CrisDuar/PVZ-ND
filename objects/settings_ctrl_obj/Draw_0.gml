if room!=menu_rm_{
    var txt_graph
    var txt_audio
    var txt_lang
    
    if global.lang="es"{
        txt_graph = "Gráficos"
        txt_audio = "Audio"
        txt_lang = "Idioma"
    }else{
        txt_graph = "Graphics"
        txt_audio = "Audio"
        txt_lang = "Language"
    }
    
    draw_set_font(yougotaprize_fnt)
    draw_set_valign(fa_top)
    draw_set_halign(fa_center)
    
    draw_text_ext_colour(538, 32,string_hash_to_newline(txt_graph),100,500,c_black,c_black,c_black,c_black,image_alpha)
    draw_text_ext_colour(536, 30,string_hash_to_newline(txt_graph),100,500,c_white,c_white,c_white,c_white,image_alpha)
    
    draw_text_ext_colour(538, 32 + 640,string_hash_to_newline(txt_audio),100,500,c_black,c_black,c_black,c_black,image_alpha)
    draw_text_ext_colour(536, 30 + 640,string_hash_to_newline(txt_audio),100,500,c_white,c_white,c_white,c_white,image_alpha)
    
    draw_text_ext_colour(538, 32 + 640*2,string_hash_to_newline(txt_lang),100,500,c_black,c_black,c_black,c_black,image_alpha)
    draw_text_ext_colour(536, 30 + 640*2,string_hash_to_newline(txt_lang),100,500,c_white,c_white,c_white,c_white,image_alpha)
}

