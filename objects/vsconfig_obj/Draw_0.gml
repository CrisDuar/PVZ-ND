var n_devices = 0
var gp_num = gamepad_get_device_count();
for (var i = 0; i < gp_num; i++;){
    if gamepad_is_connected(i) n_devices++
}

var txt_drag = "Drag"
var txt_click = "Click"
var txt_hold = "Hold"
var color = make_colour_rgb(135, 83, 39);
if global.lang="es"{
    txt_drag = "Arrastrar"
    txt_hold = "Presionar"
}

if os_type==os_android txt_click = "Tap"

draw_set_font(pages_fnt)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)

if room==configvs_rm and !instance_exists(gamepadconfig_obj){
    if global.gamepad_plant!=-1{
        draw_sprite(button2_spr,1,1280,224)
        draw_sprite(button2_spr,0,1280+gamepad_axis_value(global.gamepad_plant, gp_axislh)*10,224+gamepad_axis_value(global.gamepad_plant, gp_axislv)*10)
        
        draw_sprite_ext(button4_spr,gamepad_button_check(global.gamepad_plant, gp_padu),1188,224,1,1,0,c_white,1)
        draw_sprite_ext(button4_spr,gamepad_button_check(global.gamepad_plant, gp_padl),1188,224,1,1,90,c_white,1)
        draw_sprite_ext(button4_spr,gamepad_button_check(global.gamepad_plant, gp_padd),1188,224,1,1,180,c_white,1)
        draw_sprite_ext(button4_spr,gamepad_button_check(global.gamepad_plant, gp_padr),1188,224,1,1,270,c_white,1)
        
        draw_sprite(button3_spr,gamepad_button_check(global.gamepad_plant, gp_shoulderl),1232,304)
        draw_sprite(button3_spr,2+gamepad_button_check(global.gamepad_plant, gp_shoulderr),1280,304)
        
        draw_sprite(button1_spr,gamepad_button_check(global.gamepad_plant, gp_face1),1256,400)
        draw_sprite(button1_spr,2+gamepad_button_check(global.gamepad_plant, gp_face2),1256,480)
        draw_sprite(button1_spr,4+gamepad_button_check(global.gamepad_plant, gp_face3),1256,568)
    }else{
        if global.vs_mtouch[0] = true{
            draw_text_ext_colour(1280,224-40,string_hash_to_newline(txt_drag),20, 100,color,color,color,color,1)
            draw_sprite(iconsmini_spr,0,1280,224)
            draw_sprite(handsctrl_spr,2,1280,224-20)
            
            draw_text_ext_colour(1280,304-25,string_hash_to_newline(txt_click),20, 100,color,color,color,color,1)
            draw_sprite(seedpacketicon_spr,0,1280,304)
            draw_sprite(handsctrl_spr,1,1280,304)
            
            draw_text_ext_colour(1280,400-40,string_hash_to_newline(txt_click),20, 100,color,color,color,color,1)
            draw_sprite(iconsmini_spr,0,1280,400)
            draw_sprite(handsctrl_spr,1,1280,400)
            
            draw_text_ext_colour(1280,480-40,string_hash_to_newline(txt_hold),20, 100,color,color,color,color,1)
            draw_sprite(iconsmini_spr,0,1280,480)
            draw_sprite(handsctrl_spr,0,1280 + random_range(-1,1),480 + random_range(-1,1))
            
            draw_text_ext_colour(1280,568-40,string_hash_to_newline(txt_click),20, 100,color,color,color,color,1)
            draw_sprite(iconsmini_spr,0,1280,568)
            draw_sprite(handsctrl_spr,1,1280,568)
        }
    }
    
    if global.gamepad_zombie!=-1{
        draw_sprite(button2_spr,1,1280+544,224)
        draw_sprite(button2_spr,0,1280+544+gamepad_axis_value(global.gamepad_zombie, gp_axislh)*10,224+gamepad_axis_value(global.gamepad_zombie, gp_axislv)*10)
        
        draw_sprite_ext(button4_spr,gamepad_button_check(global.gamepad_zombie, gp_padu),1188+544,224,1,1,0,c_white,1)
        draw_sprite_ext(button4_spr,gamepad_button_check(global.gamepad_zombie, gp_padl),1188+544,224,1,1,90,c_white,1)
        draw_sprite_ext(button4_spr,gamepad_button_check(global.gamepad_zombie, gp_padd),1188+544,224,1,1,180,c_white,1)
        draw_sprite_ext(button4_spr,gamepad_button_check(global.gamepad_zombie, gp_padr),1188+544,224,1,1,270,c_white,1)
        
        draw_sprite(button3_spr,gamepad_button_check(global.gamepad_zombie, gp_shoulderl),1232+544,304)
        draw_sprite(button3_spr,2+gamepad_button_check(global.gamepad_zombie, gp_shoulderr),1280+544,304)
        
        draw_sprite(button1_spr,gamepad_button_check(global.gamepad_zombie, gp_face1),1256+544,400)
    }else{
        if global.vs_mtouch[1] = true{
            draw_text_ext_colour(1280 + 544,224-40,string_hash_to_newline(txt_drag),20, 100,color,color,color,color,1)
            draw_sprite(iconsmini_spr,1,1280+544,224)
            draw_sprite(handsctrl_spr,2,1280+544,224-20)
            
            draw_text_ext_colour(1280 + 544,304-25,string_hash_to_newline(txt_click),20, 100,color,color,color,color,1)
            draw_sprite(seedpacketicon_spr,1,1280+544,304)
            draw_sprite(handsctrl_spr,1,1280+544,304)
            
            draw_text_ext_colour(1280 + 544,400-40,string_hash_to_newline(txt_click),20, 100,color,color,color,color,1)
            draw_sprite(iconsmini_spr,1,1280+544,400)
            draw_sprite(handsctrl_spr,1,1280+544,400)
        }
    }
    
    
}

