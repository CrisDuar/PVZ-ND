/// @description create_dirt(is_Water?)
/// @param is_Water?
function create_dirt(argument0) {

	var wa = argument0

	switch(wa){
	    default:
	        instance_create(x,y+5,tierra1_obj)
	        instance_create(x+5,y+20,tierra3_obj)
	        instance_create(x,y+5,tierra2_obj)
	        with(instance_create(x,y+5,tierra2_obj)){hspeed=-2}
	    break
    
	    case 1:
	        with(instance_create(x,y+5,tierra1_obj)){sprite_index=agua1_spr}
	        with(instance_create(x,y+5,tierra3_obj)){sprite_index=agua3_spr; image_alpha=1}
	        instance_create(x,y,aguaex_obj)
	    break
	}



}
