function load_objects_struct(_struct){
	/*
		_struct = {
			obj: {
				obj_index: gamepadtest_obj,
				obj_layer: "Instances"
				
				pos: [
					{x: 300, y: 39},
					{x: 350, y: 39},
					{x: 400, y: 39}
				],

				vars: {
					image_index: 1,
					image_xscale: 1,
					image_blend: c_blue,
					t: 1
				}
			}
		}
	*/
	
	// Get the keys of the structs
	var _obj_keys = variable_struct_get_names(_struct);

	// Loop through each key (object)
	for (var i = 0; i < array_length(_obj_keys); i++) {
	
	    var _obj_k = _obj_keys[i];
	    var _obj_struct = _struct[$ _obj_k]; //Access the struct
		
		//For duplicateds
		var _len = array_length(_obj_struct.pos);
	
		//For each position
		for (var k = 0; k < _len; k++){
			
			//Creates the object
		    var _inst = instance_create_layer(_obj_struct.pos[k].x, _obj_struct.pos[k].y, _obj_struct.obj_layer, _obj_struct.obj_index);
			
			var _inst_vars = _obj_struct.vars;
			var _vars_keys = variable_struct_get_names(_inst_vars);
			
			for (var j = 0; j < array_length(_vars_keys); j++) {
		
				var _name = _vars_keys[j]; // Access the keys, which are the variable names
				var _value = _inst_vars[$ _name]; // Access the struct of variables, which has the values
		
		
				if (variable_instance_exists(_inst, string(_name))){
					
					variable_instance_set(_inst, string(_name), _value);
				}
			}
		}
	}
}