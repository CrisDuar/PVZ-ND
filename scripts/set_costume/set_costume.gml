function set_costume() {
	var _yy = -1

	if ds_grid_value_exists(global.costumes, 0, 0, 0, ds_grid_height(global.costumes)-1, menuselectplan_obj.plant){
	    _yy = ds_grid_value_y(global.costumes, 0, 0, 0, ds_grid_height(global.costumes)-1, menuselectplan_obj.plant);    
	}

	if ds_grid_get_max(global.costumes, 4, _yy, ds_grid_width(global.costumes)-1, _yy) > 0{
	    //al contador se le agrega uno mientras dicha posición sea igual a cero
	    global.costumes[# 2, _yy]+=1
    
	    //Empieza en 0 + 3
	    var _con = global.costumes[# 2, _yy]
    
	    //Buscar otro disfraz, y si no encuentra, vuelve a cero
	    while((global.costumes[# _con+3, _yy])!=1 and _con!=0){
	        global.costumes[# 2, _yy]+=1
	        _con = global.costumes[# 2, _yy]
        
	        //Si n empieza desde 3; n>=5, entonces el contador es cero
	        if _con+3>=ds_grid_width(global.costumes){
	            global.costumes[# 2, _yy]=0
	            _con = 0
	            break;
	        }
	    }
    
	    //el disfraz actual es igual al disfraz en la posición [_yy, 3||default, 4, 5... width-1]
	    global.costumes[# 1, _yy]=global.costumes[# _con+3, _yy]
	}

	with(globalselect_obj){
	    if packet==menuselectplan_obj.plant{
	        update_info()
	    }
	}

	with(selectanim_obj){
	    set_costume_sprites();
	}



}
