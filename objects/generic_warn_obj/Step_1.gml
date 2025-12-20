if (!init){
	//Confirmation
	if (can_cancel){
		
		ds_list_add(btn_bounds, add_button(_x + 50, _y + 140, 75, 52))
		ds_list_add(btn_sprites, add_button_graph(btn_true_spr, 0, 1, 2, 0));
		ds_list_add(btn_bounds, add_button(_x - 50, _y + 140, 75, 52))
		ds_list_add(btn_sprites, add_button_graph(btn_false_spr, 0, 1, 2, 0));
	}else{
		ds_list_add(btn_bounds, add_button(_x, _y + 140, 75, 52))
		ds_list_add(btn_sprites, add_button_graph(btn_true_spr, 0, 1, 2, 0));
	}
	
	switch(type){
	
		case 1:
			textbar_id = instance_create_depth(_x, _y + 35, depth - 1, textbox_obj)
		
			with(textbar_id){
				wth = 100;
				gui = true;
				c1 = make_colour_rgb(74, 84, 84); //box
				c1_sel = make_colour_rgb(86, 94, 94); //box
				c2 = make_colour_rgb(184, 184, 184); //line
				c3 = c_white; //text
				
				fnt = levelname_fnt;
				txt_es = other.text_es;
				txt_en = other.text_en;
				str = other.text_def;
				str_limit = 21;
			}
		break
	
	}
	
	if (can_cancel){
		
	}else{
		
	}
	
	init = true;
}
