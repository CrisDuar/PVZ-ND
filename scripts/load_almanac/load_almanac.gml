/// @description load_almanac(typeyy mult, ID optional)
/// @param typeyy mult
/// @param  ID optional
function load_almanac() {
	var init_y = 1
	var yy_mult = 1
	var rsrc_load = 0;
	/*
	0: loading plants
	-1: loading costumes
	-2: loading zombies
	*/
	
	yy_mult = argument[0]
	rsrc_load = argument[1];
	
	if(argument_count > 1) {
    
	    if argument[1] != 0{

	        for (var i = 1; i < ds_grid_height(global.almanac_data); i++){ 
	            if (global.almanac_data[# 0, i] == string(argument[1])){
	                init_y = i + 1;
                
	                //show_debug_message("I found it in " + string(i) + " total" + string(ds_grid_height(almanac_data)))
                
	                break;
	            }
	        }
	    }
	}

	var typeyy = 640 * yy_mult

	var max_x = 5
	var xx = 0
	var yy = 0
	
	//costumes
	var _cos_p = -1 //Current source plant
	var _cos_c = -1 //Current costume

	for (var i = init_y; i < ds_grid_height(global.almanac_data); i++){ 
	    if (global.almanac_data[# 0, i] != string(argument[1] - 1)){
        
	        with(instance_create(112 + 136*xx ,152 + yy*72 + typeyy,almanacselect_obj)){
        
	            rendery = typeyy
            
	            name_es = global.almanac_data[# almanac_data.NAME_EN, i]
	            name_en = global.almanac_data[# almanac_data.NAME_ES, i]
	            lvl = real(global.almanac_data[# almanac_data.LEVEL, i])
	            cond = global.almanac_data[# almanac_data.COND, i]
				locked= asset_get_index(global.almanac_data[# almanac_data.LOCKED_SPR, i])
				plantsprite= asset_get_index(global.almanac_data[# almanac_data.UNIT_SPR, i])
	            bg = real(global.almanac_data[# almanac_data.BG, i])
				
				var _plant_id = real(global.almanac_data[# almanac_data.UNIT_ID, i])
				
				if (_plant_id != -1){
					switch(rsrc_load){
						case 0:
							sprite = global.plants_packets[_plant_id].packet_sprite;
							cost = global.plants_packets[_plant_id].cost;
						break
					
						case -1:
						
							_cos_c++;
						
							if (_cos_p != _plant_id){
							
								_cos_p = _plant_id;
								_cos_c = 0;
							}
						
							var _cos_data = global.plants_packets[_plant_id].costume
						
							if (_cos_c < array_length(_cos_data)){
								sprite = _cos_data[_cos_c].packet_sprite;
								cost = _cos_data[_cos_c].cost;
							}else{
								sprite = menupea1_spr;
								cost = 888;
							}
						break
					
						case -2:
							sprite = global.zombies_packets[_plant_id].packet_sprite;
							cost = global.zombies_packets[_plant_id].cost;
						break
					}
				}else{
					sprite = menupea1_spr;
					cost = 888;
				}
	            //sprite = //asset_get_index(global.almanac_data[# 4, i])
	            
				
	            //cost = //real(global.almanac_data[# 6, i])
	            
            
	            desc_en[0] = replace_quotations("<c4>" + global.almanac_data[# almanac_data.DESC_EN, i] + "<as><sl>" + read_stats(global.almanac_data[# almanac_data.STATS_EN, i]) + "<as><sl><c3>" + global.almanac_data[# almanac_data.EXTRA_EN, i])
            
	            if (global.almanac_data[# 12, i]=="") desc_en[1] = "[Description not found.]" else desc_en[1] = replace_quotations(global.almanac_data[# almanac_data.FLAVOR_EN, i])

	            desc_es[0] = replace_quotations("<c4>" + global.almanac_data[# almanac_data.DESC_ES, i] + "<as><sl>" + read_stats(global.almanac_data[# almanac_data.STATS_ES, i]) + "<as><sl><c3>" + global.almanac_data[# almanac_data.EXTRA_ES, i])
            
	            if (global.almanac_data[# 16, i]=="") desc_es[1] = "[Descripción no encontrada.]" else desc_es[1] = replace_quotations(global.almanac_data[# almanac_data.FLAVOR_EN, i])
            
	        }
        
	        xx++
        
	        if (xx>= max_x){
	            xx = 0;
	            yy++
	        }
        
        
	        //show_debug_message("loaded: " + almanac_data[# 0, i])
        
        
	    }else{
    
	        //show_debug_message("RIP: " + string(almanac_data[# 0, i]))
	        //typeyy += 640;
	        //xx = 0;
	        //yy = 0;
        
	        break;
	    }
	}



}
