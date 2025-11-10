draw_set_colour(c_black)
draw_set_alpha(0.5)
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),false)
draw_set_colour(c_white)
draw_set_alpha(1)

var n_devices = ds_list_size(global.gamepad_list)
/*
var gp_num = gamepad_get_device_count();
for (var i = 0; i < gp_num; i++;){
    if gamepad_is_connected(i) n_devices++
}*/
/*
draw_text(view_xview+(view_wview/2), view_yview+(view_hview/2)-300, done)
draw_text(view_xview+(view_wview/2), view_yview+(view_hview/2)-250, gamepad)
draw_text(view_xview+(view_wview/2), view_yview+(view_hview/2)-200, select)
draw_text(view_xview+(view_wview/2), view_yview+(view_hview/2)-150, keyboard)
//draw_text(mouse_x-60, mouse_y, gamepad_get_description(gamepad[0]))
//draw_text(mouse_x+60, mouse_y, gamepad_get_description(gamepad[1]))
*/
draw_sprite(gamemode_spr,10,__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)+200,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2)//zom
draw_sprite(gamemode_spr,11,__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)-200,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2)//plant*
//draw_sprite(keyboardicon_spr,0,view_xview+(view_wview/2),view_yview+view_hview/2+40)//keyboard
draw_sprite(nogamepad_spr,0,__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+30)//no gamepad

var _offset = 0
if (select[0] = select[1]) _offset = 40;

if gamepad[0]!=-1{
    if gamepad[1]==-1{
    
        draw_sprite(playericon_spr,2,__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)+200*select[0],__view_get( e__VW.YView, 0 )+(__view_get( e__VW.HView, 0 )/2)-120*select[0]*select[0])//selection 1
    }else{
        
        draw_sprite(playericon_spr,2,__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)-_offset+200*select[0],__view_get( e__VW.YView, 0 )+(__view_get( e__VW.HView, 0 )/2)-120*select[0]*select[0])//selection 1
        draw_sprite(playericon_spr,3,__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)+_offset+200*select[1],__view_get( e__VW.YView, 0 )+(__view_get( e__VW.HView, 0 )/2)-120*select[1]*select[1])//selection 2
    }
      
}

draw_set_font(yougotaprize_fnt)
draw_set_valign(fa_top)
draw_set_halign(fa_center)

var txt_title = string(n_devices)
var txt_p = "Plants"
var txt_z = "Zombies"
var txt_ready = "Ready!"
var txt_k = "No gamepad"
var txt_help = "Use the D-Pad to pick your side and press A to select it#Change your choice by pressing Y#You can select 'No gamepad' by pressing Enter in the keyboard"

if global.lang="es"{
    if n_devices==1 txt_title += " control detectado" else txt_title += " controles detectados"
    
    txt_title += "#¡Escoje tu bando!"
    txt_p = "Plantas"
    txt_z = "Zombis"
    txt_k = "No usar control"
    txt_ready = "¡Listo!"
    txt_help = "Usa la cruceta para escojer el bando y pulsa A para seleccionarlo#Cambia tu elección presionando Y. Puedes seleccionar 'No usar control' pulsando Enter en el teclado"
}else{
    if n_devices==1 txt_title += " control detected" else txt_title += " controllers detected"
    
    txt_title += "#Pick your side!"
}

//title
draw_text_ext_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,32,string_hash_to_newline(txt_title),50,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,30,string_hash_to_newline(txt_title),50,500,c_white,c_white,c_white,c_white,image_alpha)

draw_set_font(plants_fnt)

//sides names
draw_text_ext_colour(__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+65,string_hash_to_newline(txt_k),20,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+65-2,string_hash_to_newline(txt_k),20,500,c_white,c_white,c_white,c_white,image_alpha)

draw_text_ext_colour(__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)+200,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-110,string_hash_to_newline(txt_z),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)+200,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-110-2,string_hash_to_newline(txt_z),100,500,c_white,c_white,c_white,c_white,image_alpha)

draw_text_ext_colour(__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)-200,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-110,string_hash_to_newline(txt_p),100,500,c_black,c_black,c_black,c_black,image_alpha)
draw_text_ext_colour(__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)-200,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-110-2,string_hash_to_newline(txt_p),100,500,c_white,c_white,c_white,c_white,image_alpha)

//ready
if done[0]{

    draw_sprite(iconcheck_spr,0,__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)-_offset+200*select[0],__view_get( e__VW.YView, 0 )-46+(__view_get( e__VW.HView, 0 )/2)-120*select[0]*select[0])//selection 1

    draw_text_ext_colour(__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)+200*select[0],__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+100,string_hash_to_newline(txt_ready),100,500,c_black,c_black,c_black,c_black,image_alpha)
    draw_text_ext_colour(__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)+200*select[0],__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+100-2,string_hash_to_newline(txt_ready),100,500,c_white,c_white,c_white,c_white,image_alpha)
}

if done[1]{

    draw_sprite(iconcheck_spr,0,__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)+_offset+200*select[1],__view_get( e__VW.YView, 0 )-46+(__view_get( e__VW.HView, 0 )/2)-120*select[1]*select[1])//selection 2

    draw_text_ext_colour(__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)+200*select[1],__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+100,string_hash_to_newline(txt_ready),100,500,c_black,c_black,c_black,c_black,image_alpha)
    draw_text_ext_colour(__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )/2)+200*select[1],__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+100-2,string_hash_to_newline(txt_ready),100,500,c_white,c_white,c_white,c_white,image_alpha)
}

draw_set_valign(fa_bottom)
draw_set_halign(fa_left)
draw_set_colour(c_white)
draw_set_alpha(0.8)
draw_text_ext_transformed(__view_get( e__VW.XView, 0 )+16,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-16, string_hash_to_newline(txt_help), 30,800, 0.75, 0.75, 0);
draw_set_alpha(1)

/* */
/*  */
