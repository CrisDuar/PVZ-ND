if global.vsgamemode==1{
	
	image_index = enable;
	global.vsbanning = enable;
}else{
	
	image_index = 2;
	global.vsbanning = false;
}

if (selected){
	image_xscale=1.1 ; image_yscale=1.1
}else{
	image_xscale=1 ; image_yscale=1
}

/*
if global.lang="en"{
	if global.vsgamemode!=2{
		if (enable) text = "On" else text = "Off";
	}else{
		text="disabled"
	}
}else{
	if global.vsgamemode!=2{
		if (enable) text = "Sí" else text = "No";
	}else{
		text="deshabilitado"
	}
}