function spawn_plant(_p_id, _cos){
	//Specially for Battles, spawns a plant without the seedpacket
	//Must be excuted in a pastoinv_obj instance
	
	var _p_data = global.plants_packets[_p_id];
	
	var _xx = struct_get_default(_p_data, "xx", 0);
	var _yy = struct_get_default(_p_data, "yy", 0);
	var _plant = _p_data.plant;
	var _cost = struct_get_default(_p_data, "vs_cost", _p_data.cost);
	
	with(instance_create_layer(floor(x + _xx),floor(y + _yy - offset), "Instances", _plant)){
		
	    disfraz = _cos;
	    event_user(0)
            
	    plant_cost =  _cost
	    tileyy = _yy
	    tilexx = _xx
	}
}