if (image_alpha<1) image_alpha+=0.05;

if (global.iniciogame){
	
	if (x>1100) instance_destroy();
	
}else{
	
	image_alpha = 1;
}

if position_meeting(mouse_x,mouse_y,self){
	with(zombieprev_obj){
		drawname = false;
	}
	drawname = true;

	var namecheck = "";
	
	if (global.lang = "en") {
		namecheck = name_eng;
	}else if global.lang = "es"{
		namecheck = name_esp;
	}
	
	var _w=(string_width(string_hash_to_newline(namecheck))/2)+5
	var _h=(string_height(string_hash_to_newline(namecheck))/2)+1
	
	if xx+_w+4 > 1532 {xx=1520-_w}
	if yy+_h+4 > 640 {yy=636-_h}
	
}else{
	drawname=false
	yy=y+15
	xx=x
}


