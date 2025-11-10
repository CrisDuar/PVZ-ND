function create_packet(_list) {
	
	lvl=_list[0];
	cond=_list[1];
	packet=_list[2]; //Packet_id
	
	locked=_list[3];
	name_es=_list[4];
	name_en=_list[5];
	page=_list[6];
	bg=_list[7];
	plantsprite=_list[8];
	type=_list[9];
	
	sprite = global.plants_packets[packet].packet_sprite
	
	if (control_obj.multijugador){
		
		//Use the Vs cost, if the key doesn't exist, use cost instead.
		cost = struct_get_default(global.plants_packets[packet], "vs_cost", global.plants_packets[packet].cost)
	}else{
		
		cost = global.plants_packets[packet].cost;
	}
}