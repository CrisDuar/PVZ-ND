if done==true{
    if spawntarget==false{
		
		if (type == 0){
			
			var _unit = global.plants_packets[seed];
			
			with(instance_create(x2, y, menuplants_obj)){
				
				sprite_index = _unit.packet_sprite;
				
				select = other.seed + 1;
				xx = struct_get_default(_unit, "xx", 0);
				yy = struct_get_default(_unit, "yy", 0);

				plant = _unit.plant; //Plant object
				sprite = _unit.sprite; //Plant sprite
				cost = _unit.cost;
				timer = _unit.timer; //Recharge time
				recargstart = struct_get_default(_unit, "recargstart", true); //Does it recharge when the level starts?

				vs_cost = struct_get_default(_unit, "vs_cost", 0);
				vs_recharge = struct_get_default(_unit, "vs_recharge", 1);
				vs_recargstart = struct_get_default(_unit, "vs_recargstart", true);
				sd_recharge = struct_get_default(_unit, "sd_recharge", true);
				
				if (variable_struct_exists(_unit, "costume") and other.costume > 0){
					
					var _costumes = _unit.costume;
					var _cstm = _costumes[other.costume]
					
					cost = _cstm.cost;
					timer = _cstm.timer;
					sprite_index = _cstm.packet_sprite;
					sprite = _cstm.sprite;
				}
	        }	
		}else{
			with(instance_create(x2+xz*type,y,menuzombi_obj)){
	            costume_packet=other.costume
	        }	
		}

        spawntarget=true
    }else{
        vspeed -= 0.5
        if vspeed < -40{instance_destroy();}
    }
}

