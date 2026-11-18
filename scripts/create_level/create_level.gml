/// @description create_level(grace time, n waves, n flags, hard flag?, zombies data [ds_list], rows [array], difficulty)
function create_level(_lst_zombies, _difficulty) {
    
    //Control_obj parameters
    control_obj.soles = 50 + 50 * floor(_difficulty / 2)
    
    if (control_obj.daytime == 2 || _difficulty > 4){
        
        control_obj.graves = 0 + floor(_difficulty * 1.5);
        control_obj.maxgraves = 4 + (_difficulty * 2);
    }else{
        control_obj.graves = 0;
        control_obj.maxgraves = 0;
    }
    
    //Grace time
    pt = 15 + 5 * _difficulty;
    
    //Number of waves && flags
    fn = 9 + 3 * _difficulty;
    var _flags = floor(1 + 0.5 * _difficulty);
    wf=array_create(fn);
    
    var _adjusted_difficulty = floor(_difficulty * 0.35)
    //var _points_multiplier = floor(1 + _difficulty * 0.5);
    //var _points_addition = _difficulty
    var _points_multiplier = (1 + _adjusted_difficulty) / 3;
    var _points_addition = _difficulty / 2
    
    show_debug_message("WAVES " + string(fn))
    show_debug_message("FLAGS " + string(_flags))
    
    for (var i = 0; i < _flags; i++){
        
        var _offset = floor(fn / _flags)
        
        wf[fn - 1 - _offset * i] = 1;
        
        var _pos = fn - 1 - _offset * i
        show_debug_message("FLAG " + string(_pos))
    }
    
    wf[fn - 1] = 2;
    
    //for zombie preview
    var _z_total = 0;
    var _zombie_prev = ds_map_create();
    
    //Waves info
    f = array_create(fn);
    var _picked_zombies = ds_map_create();
    
    var _cheapest_zombie_value = 999999;
    
    for (var i = 0; i <array_length(_lst_zombies); i++){
        
        _cheapest_zombie_value = min(_cheapest_zombie_value, global.zombies_packets[_lst_zombies[i]].wavePoints)
    }
    
    show_debug_message("NUMBER OF WAVES: " + string(fn));
    show_debug_message("NUMBER OF FLAGS: " + string(_flags));
    show_debug_message("CHEAPEST ZOMBIE: " + string(_cheapest_zombie_value));
    
    for (var i = 0; i < fn; i++){   
        show_debug_message("--------------------WAVE: " + string(i + 1));
        var _is_flag = 0;
        if (wf[i] == 1 || wf[i] == 2) _is_flag = 1;
        
        //Pick zombies
        //var _points = max((_points_multiplier * i) + _points_addition, _cheapest_zombie_value)
        var _points = floor(_cheapest_zombie_value + ((i + _points_addition) * _points_multiplier))
        //var _points = max(_target_points, _cheapest_zombie_value)
        
        _points *= _is_flag ? 4 : 1;
        
        show_debug_message("---TOTAL POINTS: " + string(_points));
        
        var _zombies_to_pick = array_shuffle(_lst_zombies);
        var _zombie_index = 0;
        while(_points > 0 && _points >= _cheapest_zombie_value){
            show_debug_message("POINTS:")
            show_debug_message(_points);
            var _zombie = _zombies_to_pick[_zombie_index]
            var _spawnPoints = global.zombies_packets[_zombie].wavePoints;
            show_debug_message("WAVEPOINTS:")
            show_debug_message(_spawnPoints);
            
            if (_points >= _spawnPoints){
                
                if (ds_map_exists(_picked_zombies, _zombie)){
                    
                    _picked_zombies[? _zombie]++;
                }else{
                    _picked_zombies[? _zombie] = 1;
                }
                
                if (ds_map_exists(_zombie_prev, _zombie)){
                    
                    _zombie_prev[? _zombie]++;
                }else{
                    _zombie_prev[? _zombie] = 1;
                }
                
                _z_total++;
                _points -= _spawnPoints;
                
                show_debug_message("ADDED A ZOMBIE:")
            }
            
            _zombie_index++;
            if (_zombie_index >= array_length(_zombies_to_pick)){
                _zombie_index = 0;
                _zombies_to_pick = array_shuffle(_lst_zombies);
            }
        }
        
        //Add the zombies to the wave
        
        var _size = ds_map_size(_picked_zombies);
        var _key = ds_map_find_first(_picked_zombies);
        f[i] = array_create(_size + _is_flag);
        
        show_debug_message("HORDA " + string(i));
        for (var j = 0; j < _size; j++) {
            
            //show_debug_message("f["+ string(i) + ", " +string(j)+ "] "+object_get_name(zombies[| j]) + " " + string(amount)+ " cost: "+ string(og_p-points))
            show_debug_message("ZOMBI : " + string(global.zombies_packets[_key].zombie));
            show_debug_message("AMOUNT : " + string(_picked_zombies[? _key]));
            
            f[i][j] = [global.zombies_packets[_key].zombie, rows_arr, _picked_zombies[? _key]]
            _key = ds_map_find_next(_picked_zombies, _key);
        }
        
        if (_is_flag){
            
            var _flag_zombie = _difficulty >= 4 ? z_rally_obj : z_flag_obj;
            
            f[i][_size] = [_flag_zombie, rows_arr, 1];
        }
        
        ds_map_clear(_picked_zombies);
    }
    
    for (var i = 0; i < array_length(_lst_zombies); i++;){
        
        show_debug_message("CREATING: " + string(global.zombies_packets[_lst_zombies[i]].zombie));
        var _amount = 0;
        
        if (ds_map_exists(_zombie_prev, _lst_zombies[i])) _amount = clamp(round((_zombie_prev[? _lst_zombies[i]] * 15)/_z_total), 1, 5)
        
        if (_amount > 0) zombie_preview(global.zombies_packets[_lst_zombies[i]].zombie, _amount)
    }
    
    ds_map_destroy(_picked_zombies);
    ds_map_destroy(_zombie_prev);
    
    //Zombie preview
    
    /*
	pt=argument[0]//Grace time
	fn=argument[1]//number of waves
	var hn = argument[2] //number of flags
	var am_flags = 0
	f=0

	var skip_zom = 0
	var con_flag = 0;
	var new_flag;

	if hn = 0{
	    new_flag = 1
	}else{
	    new_flag = floor(fn/(hn+1))
	}

	wf=array_create(fn)

	var flag_type;

	if argument[3]{
	    flag_type = z_rally_obj;
	}else{
	    flag_type = z_flag_obj
	}

	var data = argument[4]
	var a = argument[5]//rows

	var zombies = get_zombies(data);
	zombies = sort_zombie_list(zombies)

	for(var i = 0; i < ds_list_size(zombies); i++){
	    zombie_preview(zombies[| i], clamp(2-i,1,2))
    
	    show_debug_message(string(object_get_name(zombies[| i]) + " " + string(get_zombie_points(zombies[| i]))))
	}

	//CREAR EL ARRAY
	var dif = argument[6]
	var real_points = 1

	for(var i = 0; i < fn; i++){
	    var points = 0;
	    var is_flag = false;
	    real_points += dif/5
    
    
	    if (i >= fn-1){
	        //final wave
	        points = i + 5 + dif*2 -1
	        is_flag = true
	    }

	    if con_flag>=new_flag{
	        if am_flags<hn{
	            //common flag
	            con_flag=0;
	            am_flags++;
	            //points += min(i+10,30);
	            points = i + dif*2 -1
	            is_flag = true
	        }
	    }
    
	    if is_flag=false points = floor(real_points)
    
	    //crear el array
	    var pos = 0;
	    show_debug_message("points: " + string(points))
    
	    var omision = 0;
    
	    if (!is_flag) omision = clamp(floor(i*dif/5), 0 , 2)
    
	    for(var j = 0; j < ds_list_size(zombies); j++){
        
	        //show_debug_message(j)
	        var og_p = points
        
	        var odds = irandom(100)
	        //var og_cost = j*2.25
	        var og_cost = get_zombie_points(zombies[| j])
	       // var cost = max(1, og_cost)//*clamp(i/fn,1,3)
	        var cost = og_cost
	        var amount = 0;
        
	        var max_amount = irandom_range(floor(1+(dif/15)),floor(3 +(dif/10)))
	        if i <= 0 max_amount = 1
        
	        var zombie_odds;
        
	        if (og_cost >= omision){
	            if (con_flag<new_flag or j = 0){
	                zombie_odds = 100
	            }else{
	                zombie_odds = get_zombie_odds(zombies[| j])
	            }
	        }else{
	            zombie_odds = 60;
	        }
        
	        while(amount < max_amount and cost<=points and odds<=zombie_odds){
	            points -= cost
	            //cost += og_cost/8
	            amount++;
	            odds = irandom(100)
	        }
        
	        if amount>0{
	            show_debug_message("f["+ string(i) + ", " +string(pos)+ "] "+object_get_name(zombies[| j]) + " " + string(amount)+ " cost: "+ string(og_p-points))
            
	            var rows = a;
            
	            if (surv_type==1){
                
	                if (i < 3 or zombies[| j] == z_zomboni_obj or zombies[| j] == z_solarpanel_obj) and (zombies[| j] != z_snorkel_obj){
                
	                    rows = g
                    
	                }else if (zombies[| j] == z_snorkel_obj){
                    
	                    rows = w
                    
	                }else{
	                    rows = a
	                }
	            }else{
	                rows = a
	            }
            
	            f[i,pos] = array(zombies[| j], rows, amount)///clamp(floor((3*i*(ds_list_size(zombies)-j))/fn),1,3)
	            pos++
            
	        }
        
	        if (pos > 0 and i <= 0) break;
	    }
        
	    if (is_flag){
	        wf[i] = 1
	        f[i,pos] = array(flag_type,a, 1)
	        show_debug_message("f["+ string(i) + ", " +string(pos)+ "] "+object_get_name(flag_type))
	    }
    
	    show_debug_message("after points: " + string(points))
	    if hn>0 con_flag++;
	}

	wf[fn-1]=2

*/


}
