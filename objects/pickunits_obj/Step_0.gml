if (!init){
	
	if (type = 1){
		sprite_index = selectedzombie2p_spr;
		ctrls = "z_";
		gamepad = "gamepad_zombie";
		xx += 326;

		xb = 326
	}
	
	init = true;
}

if (menuselectplan_obj.unit_ban == false) banning = false;

x=((xx - 75 - (xb * banning))+142*xcount)+5
y=(yy+78*ycount)+36

var up=keyboard_check_pressed(variable_global_get(ctrls + "up"))
var down=keyboard_check_pressed(variable_global_get(ctrls + "down"))
var left=keyboard_check_pressed(variable_global_get(ctrls + "left"))
var right=keyboard_check_pressed(variable_global_get(ctrls + "right"))

var ch1 = keyboard_check_pressed(variable_global_get(ctrls + "ch1"))
var ch2 = keyboard_check_pressed(variable_global_get(ctrls + "ch2"))

var place = keyboard_check_pressed(variable_global_get(ctrls + "place"))

var _gamepad_check = variable_global_get(gamepad)

if gamepad_is_connected(_gamepad_check){
   up=gamepad_button_check_pressed(_gamepad_check, gp_padu)
   down=gamepad_button_check_pressed(_gamepad_check, gp_padd)
   left=gamepad_button_check_pressed(_gamepad_check, gp_padl)
   right=gamepad_button_check_pressed(_gamepad_check, gp_padr)
   
   ch1=gamepad_button_check_pressed(_gamepad_check, gp_shoulderl)
   ch2=gamepad_button_check_pressed(_gamepad_check, gp_shoulderr)
   
   place=gamepad_button_check_pressed(_gamepad_check, gp_face1)
}

if up{if ycount>0{ycount--}}
if down{if ycount<2{ycount++}}
if left{if xcount>0{xcount--}}
if right{if xcount<1{xcount++}}

var _indx = (banning == false) ? type : !type;
var _menupag = variable_instance_get(menuselectplan_obj, p_pag[_indx]);

if ch1{
    if (_menupag > 0){
		
		variable_instance_set(menuselectplan_obj, p_pag[_indx], _menupag - 1);
        audio_play_sound(seleccionarplantas_snd,1,false)
    }else{
        audio_play_sound(errorseed_snd,1,false);
    }
}
if ch2{
    if (_menupag < variable_instance_get(menuselectplan_obj, p_maxpag[_indx])){
		
		variable_instance_set(menuselectplan_obj, p_pag[_indx], _menupag + 1);
        audio_play_sound(seleccionarplantas_snd,1,false)
    }else{
        audio_play_sound(errorseed_snd,1,false);
    }
}

if (place){
	instance_create(x,y,pick_obj)
}

if (global.playerReady or global.vs_mtouch[type]) instance_destroy();
visible = true;