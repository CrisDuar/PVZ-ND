/// @description set_costume_sprites(Only for selectanim_obj)
/// @param Only for selectanim_obj
function set_costume_sprites() {
	
	if seed==menuselectplan_obj.plant{
		
		var p_id = menuselectplan_obj.plant;
		var p_data = global.plants_packets[p_id]
	
		if (variable_struct_exists(p_data, "costume")){
		
			//costume data
			var pc_data = p_data.costume;
		
			//Current costume selected
			var p_costume = ds_list_find_value(global.costumes[? p_id], 0)
			
			if (p_costume == 0){
				
				sprite_index=seedsprite
				costume=0
				
			}else{
	        
				sprite_index = struct_get_default(pc_data[p_costume - 1], "packet_sprite", p_data.packet_sprite)
	            costume = p_costume
			}
		}
	}
}
