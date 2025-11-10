if global.playerReady=true{image_alpha-=0.2}
if image_alpha<=0{instance_destroy()}

x=((xx-75)+142*xcount)+5
y=(yy+78*ycount)+36

var up=keyboard_check_pressed(global.z_up)
var down=keyboard_check_pressed(global.z_down)
var left=keyboard_check_pressed(global.z_left)
var right=keyboard_check_pressed(global.z_right)

var ch1 = keyboard_check_pressed(global.z_ch1)
var ch2 = keyboard_check_pressed(global.z_ch2)

var place = keyboard_check_pressed(global.z_place)

if gamepad_is_connected(global.gamepad_zombie){
   up=gamepad_button_check_pressed(global.gamepad_zombie, gp_padu)
   down=gamepad_button_check_pressed(global.gamepad_zombie, gp_padd)
   left=gamepad_button_check_pressed(global.gamepad_zombie, gp_padl)
   right=gamepad_button_check_pressed(global.gamepad_zombie, gp_padr)
   
   ch1=gamepad_button_check_pressed(global.gamepad_zombie, gp_shoulderl)
   ch2=gamepad_button_check_pressed(global.gamepad_zombie, gp_shoulderr)
   
   place=gamepad_button_check_pressed(global.gamepad_zombie, gp_face1)
}



if (up){if ycount>0{ycount--}}
if (down){if ycount<2{ycount++}}
if (left){if xcount>0{xcount--}}
if (right){if xcount<1{xcount++}}

if (ch1){
    if menuselectplan_obj.zompag > 0{
        menuselectplan_obj.zompag--
        audio_play_sound(seleccionarplantas_snd,1,false)
    }else{
        audio_play_sound(errorseed_snd,1,false);
    }
}
if (ch2){
    if menuselectplan_obj.zompag < menuselectplan_obj.zommaxpag{
        menuselectplan_obj.zompag++
        audio_play_sound(seleccionarplantas_snd,1,false)
    }else{
        audio_play_sound(errorseed_snd,1,false);
    }
}

if (place){instance_create(x,y,pick_obj)}

