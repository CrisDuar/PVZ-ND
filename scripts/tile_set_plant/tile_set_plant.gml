function tile_set_plant() {
	if control_obj.pala==true{
	    //with(instance_create(x,y,desplantar_obj)){image_yscale=other.image_yscale}
	    tile_shovel();
	}

	switch(able_to_plant(control_obj.seleccionado)){
	    case 1:
	        set_plant();
	    break
    
	    case 2:
	        wallnut_first_aid(instance_nearest(x,y,typeplant_obj));
	    break
    
	    case 3:
	        wallnut_first_aid(instance_nearest(x,y,pumpkin_obj));
	    break
	}
}
