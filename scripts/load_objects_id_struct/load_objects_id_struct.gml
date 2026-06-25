function load_objects_id_struct(_objects){
    
    function find_pos(_xt, _yt){
        if (instance_exists(pastoinv_obj)){
                    
            var _x = 0
            var _y = 0;
                    
            with(pastoinv_obj){
                if (column == _xt && row == _yt){
                            
                    _x = x;
                    _y = y;
                    break;
                }
            }
            //show_debug_message("FOUND POS AT " + string(_x) + ", " + string(_y))
            return [_x, _y];
        }
        
        return [0, 0];
    }
    
    function create_object(_xt, _yt, _x_offset, _y_offset, _object_inst, _tile_mode){
        
        var _pos = find_pos(_xt, _yt);
        var _xx = _pos[0];
        var _yy = _pos[1];
        
        if (_tile_mode == 1){
            
            _xx = _xt;
            _yy = zombispawn_obj.rows_arr[_yt];
        }
        
        show_debug_message("CREATING " + string(_object_inst) + " AT ", string(_xx + _x_offset) + ", " + string(_yy + _y_offset)) 
        
        return instance_create_layer(_xx + _x_offset, _yy + _y_offset, "Instances", _object_inst);
    }
    
	/*
		_struct = {
			objects: [
				{
					obj_type: 0,
					obj_id: 1 
				
					pos: [
						{x: 0, y: 0},
						{x: 0, y: 1},
						{x: 0, y: 1}
					],

					vars: [false, 0]
				}
			]
		}
	*/

	// Loop through each object
    show_debug_message("LOADING OBJECTS")
	for (var i = 0; i < array_length(_objects); i++) {
        show_debug_message("LOADING OBJECT: " + string(i))
        var _object = _objects[i];
        show_debug_message(_object)
        var _object_id = _object.obj_id;
        var _object_inst = noone;
        var _object_vars = [];
        var _x_offset = 0;
        var _y_offset = 0;
        var _tile_mode = 0;
        
        if (_object.obj_type == 0){ //Plant
            
            _x_offset = struct_get_default(global.plants_packets[_object_id], "xx", 0);
            _y_offset = struct_get_default(global.plants_packets[_object_id], "yy", 0);
            _object_inst = global.plants_packets[_object_id].plant;
            _object_vars = global.plant_variables;
            
        }else if (_object.obj_type == 1){ //Tile object
            
            _x_offset = struct_get_default(global.tile_objects[_object_id], "xx", 0);
            _y_offset = struct_get_default(global.tile_objects[_object_id], "yy", 0);
            _object_inst = global.tile_objects[_object_id].object;
            _object_vars = struct_get_default(global.tile_objects[_object_id], "vars", []);
        }else if (_object.obj_type == 2){   //Zombies
            
            _x_offset = struct_get_default(global.zombies_packets[_object_id], "xx", 0);
            _y_offset = struct_get_default(global.zombies_packets[_object_id], "yy", 0);
            _object_inst = global.zombies_packets[_object_id].zombie;
            _object_vars = global.zombies_packets;
            _tile_mode = 1;
        }
        
        var _len = array_length(_object.pos);
        
		for (var k = 0; k < _len; k++){
			
			//Creates the object
            
		    var _inst = create_object(_object.pos[k].x, _object.pos[k].y, _x_offset, _y_offset, _object_inst, _tile_mode);
			
            //Assigns variables
			for (var j = 0; j < array_length(_object.vars); j++) {
                
                var _name = _object_vars[j];
                var _value = _object.vars[j];
		
				if (!variable_instance_exists(_inst, _name)) continue;
                    
                if (_value == undefined) continue;
					
                variable_instance_set(_inst, _name, _value);
			}
		}
	}
}