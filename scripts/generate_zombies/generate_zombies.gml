function generate_zombies(_lst_zombies, _difficulty) {
    
    var _list = [];
    var _max_zombies = 5 + 0.5 * floor(_difficulty);
    var i = 0;
    var _prob_addition = 0;
    _lst_zombies = array_shuffle(_lst_zombies);
    
    while(array_length(_list) < _max_zombies){
        var _zombie = _lst_zombies[i];//global.zombies_packets[_lst_zombies[i]].zombie;
        
        if (array_contains(_list, _zombie)) continue;
        
        var _pts = global.zombies_packets[_lst_zombies[i]].wavePoints;
        var _prob = 100 - (10 * _pts) + _prob_addition;
        
        if (irandom(100) <= _prob){
            
            show_debug_message("ADDED");
            show_debug_message(global.zombies_packets[_lst_zombies[i]].zombie)
            
            array_push(_list, _zombie);
        }
        
        i++
        if (i >= array_length(_lst_zombies)) {
            i = 0;
            _prob_addition += 10;
        }
    }
    
    
    /*
	///BASIC

	pts = choose(1, floor(1 + diff/2))

	temp_list = pick_zombies(0, min(pts, 2), lst_armor)

	for(var i = 0; i < ds_list_size(temp_list); i++){
	    ds_list_add(_list, temp_list[| i])
	    show_debug_message(get_zombie_type(_list[| i]))
	}

	///ARMOR

	pts = round(4 + diff)
	temp_list = pick_zombies(clamp(pts/4, 2 , 3)2, pts, lst_armor)

	for(var i = 0; i < ds_list_size(temp_list); i++){
	    ds_list_add(_list, temp_list[| i])
	    show_debug_message(get_zombie_type(_list[| i]))
	}

	///TRICK
	pts = round(4 + diff)
	//irandom_range(floor(pts/2), round(pts*2))
	temp_list = pick_zombies(clamp(random_range(0, pts/5), 0 , 3), pts, lst_trick)

	for(var i = 0; i < ds_list_size(temp_list); i++){
	    ds_list_add(_list, temp_list[| i])
	    show_debug_message(get_zombie_type(_list[| i]))
	}
    */
	show_debug_message("generating zombies:")

	for(var i = 0; i < array_length(_list); i++){
	    show_debug_message(global.zombies_packets[_list[i]].zombie)
	}

	return _list;
}
