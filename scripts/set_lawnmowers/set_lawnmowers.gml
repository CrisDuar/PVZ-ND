/// @description set_lawnmowers(mowers[])
/// @param _mowers Array of lawnmowers
function set_lawnmowers(_mowers) {
	
	for (var i = 0; i<array_length(_mowers); i++){
		
	    switch(_mowers[i]){
	        case 0:
	            instance_create_layer(260, 170+95*i, "Instances", podadora_obj)
	        break
        
	        case 1:
	            instance_create_layer(260, 170+95*i, "Instances", podadora2_obj)
	        break
        
	        case 2:
	            instance_create_layer(260, 170+95*i, "Instances", podadora3_obj)
	        break
	    }
	}
}