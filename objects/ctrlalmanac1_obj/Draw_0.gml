if __view_get( e__VW.YView, 0 )>0{
    
    draw_sprite(almanacfg_spr, 0 ,12, __view_get( e__VW.YView, 0 ))

    draw_set_halign(fa_middle)
    draw_set_valign(fa_center)
    draw_set_font(soles_fnt);
    
    var _cost = string(unitcost)
    
    if real(unitcost)<0{
        _cost = "???"
    }
    
    draw_text_colour(xx,yy-68,string_hash_to_newline(_cost),c_black,c_black,c_black,c_black,1)
    
    if global.lang="es"{
        draw_text_colour(xx,yy-205,string_hash_to_newline(unitname_es),c_black,c_black,c_black,c_black,1)
    }else{
        draw_text_colour(xx,yy-205,string_hash_to_newline(unitname_en),c_black,c_black,c_black,c_black,1)
    }
}