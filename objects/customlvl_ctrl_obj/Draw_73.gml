if (highlight){
    
    draw_set_colour(c_white)
    draw_set_alpha(0.5)
    draw_rectangle(0, 0, room_width, room_height, false)
    draw_set_alpha(1)
    
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    draw_set_font(sudden_fnt)
    
    var _txt = "Drop your files here.";
    if (global.lang == "es") _txt = "Suelta tus archivos aquí."
    
    draw_text_colour_outline(room_width/2, room_height/2, "Drop your files here", c_white, c_white, 1, c_dkgray, c_dkgray, 1, 3, 5, 1, 1, 0)
}   