function create_packet_ingame(_x, _y, _type, _unit_id, _costume){
	
	var _packet;
	var _unit;
	if (_type == 0){
			
		_unit = global.plants_packets[_unit_id];
		_packet = instance_create_layer(_x, _y,"GUI", menuplants_obj)
		
			
	}else{
		
		_unit = global.zombies_packets[_unit_id];
		_packet = instance_create_layer(_x, _y,"GUI", menuzombi_obj);
		
	}
	
	with(_packet){
				
		sprite_index = _unit.packet_sprite;
				
		select = _unit_id + 1;
		xx = struct_get_default(_unit, "xx", 0);
		yy = struct_get_default(_unit, "yy", 0);
		tags = struct_get_default(_unit, "tags", []);
		
		if (_type == 0){
			plant = _unit.plant; //Plant object
		}else{
			zombie = _unit.zombie;	
		}
		sprite = _unit.sprite; //Plant sprite
		cost = _unit.cost;
		timer = _unit.timer; //Recharge time
		recargstart = struct_get_default(_unit, "recargstart", true); //Does it recharge when the level starts?

		vs_cost = struct_get_default(_unit, "vs_cost", cost);
		vs_recharge = struct_get_default(_unit, "vs_recharge", timer);
		vs_recargstart = struct_get_default(_unit, "vs_recargstart", recargstart);
		sd_recharge = struct_get_default(_unit, "sd_recharge", true);
				
		if (variable_struct_exists(_unit, "costume") and _costume >= 0){
					
			var _costumes = _unit.costume;
			var _cstm = _costumes[_costume]
					
			cost = _cstm.cost;
			timer = _cstm.timer;
			sprite_index = _cstm.packet_sprite;
			sprite = _cstm.sprite;
			
			costume_packet = _costume + 1;
		}
	}
	
	
	return _packet;
}