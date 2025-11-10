/// @description load_almanac(typeyy mult, ID optional)
/// @param typeyy mult
/// @param  ID optional
function load_almanac() {
	var init_y = 1
	var yy_mult = 1

	yy_mult = argument[0]

	if(argument_count > 1) {
    
	    if argument[1] != 0{

	        for (var i = 1; i < ds_grid_height(global.almanac_data); i++){ 
	            if real(global.almanac_data[# 0, i]) == argument[1]{
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

	for (var i = init_y; i < ds_grid_height(global.almanac_data); i++){ 
	    if real(global.almanac_data[# 0, i]) != argument[1] - 1{
        
	        with(instance_create(112 + 136*xx ,152 + yy*72 + typeyy,almanacselect_obj)){
        
	            rendery = typeyy
            
	            name_es = global.almanac_data[# 0, i]
	            name_en = global.almanac_data[# 1, i]
	            lvl = real(global.almanac_data[# 2, i])
	            cond = global.almanac_data[# 3, i]
	            sprite= asset_get_index(global.almanac_data[# 4, i])
	            locked= asset_get_index(global.almanac_data[# 5, i])
	            cost = real(global.almanac_data[# 6, i])
	            plantsprite= asset_get_index(global.almanac_data[# 7, i])
	            bg = real(global.almanac_data[# 8, i])
            
	            desc_en[0] = replace_quotations("<c4>" + global.almanac_data[# 9, i] + "<as><sl>" + read_stats(global.almanac_data[# 10, i]) + "<as><sl><c3>" + global.almanac_data[# 11, i])
            
	            if (global.almanac_data[# 12, i]=="") desc_en[1] = "[Description not found.]" else desc_en[1] = replace_quotations(global.almanac_data[# 12, i])

	            desc_es[0] = replace_quotations("<c4>" + global.almanac_data[# 13, i] + "<as><sl>" + read_stats(global.almanac_data[# 14, i]) + "<as><sl><c3>" + global.almanac_data[# 15, i])
            
	            if (global.almanac_data[# 16, i]=="") desc_es[1] = "[Descripción no encontrada.]" else desc_es[1] = replace_quotations(global.almanac_data[# 16, i])
            
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
