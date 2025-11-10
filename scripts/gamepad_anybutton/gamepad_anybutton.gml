/// @description gamepad_anybutton_check_pressed(device)
/// @param device
function gamepad_anybutton(argument0) {
	_gm = argument0

	if gamepad_button_check_pressed(_gm, gp_face1)
	or gamepad_button_check_pressed(_gm, gp_face2)
	or gamepad_button_check_pressed(_gm, gp_face3)
	or gamepad_button_check_pressed(_gm, gp_face4)
	or gamepad_button_check_pressed(_gm, gp_shoulderl)
	or gamepad_button_check_pressed(_gm, gp_shoulderlb)
	or gamepad_button_check_pressed(_gm, gp_shoulderr)
	or gamepad_button_check_pressed(_gm, gp_shoulderrb)
	or gamepad_button_check_pressed(_gm, gp_select)
	or gamepad_button_check_pressed(_gm, gp_start)
	or gamepad_button_check_pressed(_gm, gp_face2)
	or gamepad_button_check_pressed(_gm, gp_stickl)
	or gamepad_button_check_pressed(_gm, gp_stickr)
	or gamepad_button_check_pressed(_gm, gp_padu)
	or gamepad_button_check_pressed(_gm, gp_padd)
	or gamepad_button_check_pressed(_gm, gp_padl)
	or gamepad_button_check_pressed(_gm, gp_padr)
	or gamepad_button_check_pressed(_gm, gp_axislh)
	or gamepad_button_check_pressed(_gm, gp_axislv)
	or gamepad_button_check_pressed(_gm, gp_axisrh)
	or gamepad_button_check_pressed(_gm, gp_axisrv){
	    return true;
	}else{
	    return false;
	}



}
