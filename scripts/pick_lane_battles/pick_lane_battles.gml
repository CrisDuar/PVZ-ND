/// @description pick_lane_battles()
function pick_lane_battles() {
	var lanes = ds_list_create()

	for (var i = 0; i < maxbrains; i++){
	    collision_line_list(0,get_closest_row(zombispawn_obj.f1+90*i),950,get_closest_row(zombispawn_obj.f1+90*i),eatfather_obj,false,false, temp_list, true)
	    var total_hp = 0;
    
	    if temp_list!=noone{
	        for(var j = 0; j<ds_list_size(temp_list); j++){
	            with(temp_list[| j]){
	                if variable_instance_exists(id, "vida"){
	                    total_hp += vida;
	                }
	            }
	        }
	        var n_zom = collision_line_first(0,get_closest_row(zombispawn_obj.f1+90*i),950,get_closest_row(zombispawn_obj.f1+90*i),eatfather_obj,false,false).x
        
	        total_hp = total_hp + 200 - clamp(abs((270-n_zom)/1000), 0, 1)*200;
        
	        ds_list_destroy(temp_list)
	    }
    
	    temp_list = ds_list_create();
	    collision_rectangle_list(0,get_closest_row(zombispawn_obj.f1+90*i)-20,1600,get_closest_row(zombispawn_obj.f1+90*i)+5,typeplant2_obj,false,false, temp_list, false)
	    var total_dmg = 0;
    
	    if temp_list!=noone{
	        for(var j = 0; j<ds_list_size(temp_list); j++){
	            with(temp_list[| j]){
	                if variable_instance_exists(id, "dmg"){
	                    total_dmg += dmg;
	                }
	            }
	        }
	    }
    
	    lanes[| i] = total_hp - total_dmg
	    show_debug_message("row: " + string(i+1) + "| ttlhp: " + string(total_hp)+ "| ttdmg: " + string(total_dmg))
	}

	var maxlanes = 0
	var maxhp = lanes[| 0]

	for (var i = 0; i < maxbrains; i++){
	    if lanes[| i] > maxhp{
	        maxlanes = i;
	        maxhp = lanes[| i]
	    }
	    show_debug_message("row: " + string(i+1) + "| hp: " + string(lanes[| i]))
	}

	ds_list_destroy(lanes)
	ds_list_destroy(temp_list)

	return get_closest_row(zombispawn_obj.f1+90*maxlanes);



}
