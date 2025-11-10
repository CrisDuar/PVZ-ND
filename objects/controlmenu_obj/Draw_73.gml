if keyboard_check(vk_f3) or showf3=true{
//show_debug_overlay(true)
//dibujar variables
draw_set_font(f3_fnt)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_text_colour_outline(__view_get( e__VW.XView, 0 )+4,__view_get( e__VW.YView, 0 )+32,"PVZ ND " + GM_version + " " + os,c_white,c_white,1,c_black,c_black,1,1,10,1,1,0)
draw_text_colour_outline(__view_get( e__VW.XView, 0 )+4,__view_get( e__VW.YView, 0 )+48,"Instances: " + string(instance_number(all)),c_white,c_white,1,c_black,c_black,1,1,10,1,1,0)

var a = layer_get_all();
draw_text_colour_outline(__view_get( e__VW.XView, 0 )+4,__view_get( e__VW.YView, 0 )+64,"Layers (" + string(array_length(a)) + "): ",c_white,c_white,1,c_black,c_black,1,1,10,1,1,0)

for (var i = 0; i < array_length(a); i++;)
{
    draw_text_colour_outline(__view_get( e__VW.XView, 0 )+4,__view_get( e__VW.YView, 0 )+80 + 16*i,layer_get_name(a[i]),c_white,c_white,1,c_black,c_black,1,1,10,1,1,0)
}




draw_text_colour_outline(mouse_x+20,mouse_y-20,"("+string(mouse_x)+", "+string(mouse_y)+")",c_white,c_white,1,c_black,c_black,1,1,10,1,1,0)

}
else{
//show_debug_overlay(false)
}

if showhitboxes=true{
    with(all){
        draw_set_color(c_black)
        draw_set_alpha(image_alpha)
        draw_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_top,true)
        draw_set_alpha(1)
        draw_set_color(c_white)
    }
}

if save_lph>0{
    draw_set_font(f3_fnt)
    draw_set_halign(fa_left)
    draw_set_valign(fa_bottom)
    var save_txt = "Saving..."
    if global.lang="es" save_txt = "Guardando..."
    draw_text_colour(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),string_hash_to_newline(save_txt),c_white,c_white,c_white,c_white,0.5)
}

///EXPERIMENTO HORA


