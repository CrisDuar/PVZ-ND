cam = view_camera[0];
_x = camera_get_view_width(cam)/2
_y = camera_get_view_height(cam)/2

btn_bounds = ds_list_create();
btn_sprites = ds_list_create();

type = 0;
/*
	0: confirmation
	1: Text
*/
//Instance
is_global = false;
instance = noone;

//For confirmation screen.
variable = "";

//For text
txt_variable = "";

textbar_id = noone;
text_en = "";
text_es = "";
text_def = "";

init = false;

txt_es = "ES";
txt_en = "EN";
danger = false;
danger_alpha = 0;

can_cancel = true;

global.popup_open++;
level = global.popup_open;