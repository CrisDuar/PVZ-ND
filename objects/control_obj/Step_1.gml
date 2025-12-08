if (!init_stage){
	init_stage = true;
	
	//Save n Load level
	if (save_struct){
		var level_json = json_stringify(save_level_struct(), true);

		var _file = file_text_open_write(working_directory + "levels/stage1/" + string_trim(zombispawn_obj.lvl_en) + ".json");
		file_text_write_string(_file, level_json);

		file_text_close(_file);
	}else{
		
		if (do_load_level) load_level();
		
		instance_create_layer(limit, 80, "Instances", trazo_obj)
		set_lawnmowers(mowers);
		
		show_debug_message("stage: " + string(stage) + " daytime: " + string(daytime))
		
		//Set the background
		var _bg = bgs_lvl[stage][daytime<array_length(bgs_lvl[stage]) ? daytime : (array_length(bgs_lvl[stage]) - 1)]
		layer_background_sprite(layer_background_get_id(layer_get_id("BG_stage")), _bg)	
	}
	
	
	switch(stage){
        case 0:
            spawn_tiles(pastoinv_obj,"","","","",2,3)
        break
        
        case 1:
            spawn_tiles(pastoinv_obj,"","","","",1,4)
        break
		
		default:
            spawn_tiles(pastoinv_obj)
        break
        
        case 3:
            spawn_tiles(pastoinv_obj,"","",0.85,"",0,2,70,0.99)
            spawn_tiles(pastoinv_obj,"","",0.85,true,0,2,252,0.99)
            spawn_tiles(pastoinv_obj,"","",0.85,"",0,2,448,0.99)
        break
    }
	
	//Set the scream noise on game over
	if (stage == 4){
	    scream_type = 2
	}
}