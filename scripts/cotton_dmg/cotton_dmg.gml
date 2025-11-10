/// @description cotton_dmg(knockback)
/// @param knockback
function cotton_dmg(argument0) {
	knock = argument0/10

	var retro = clamp((knock-peso)*10,0,100)

	if (x < 1100){
	    if variable_instance_exists(id, "puertavida"){
	        if puertavida<=0{
	            x += retro
	            if control_obj.invisible==false image_alpha=0.5
	        }
	    }else{
	        x += retro
	        if control_obj.invisible==false image_alpha=0.5
	    }
    
	    //blover_obj
    
	    if (x > 1100) x = 1100
	}
	if other.sprite_index==cotton2_spr{
	    with(instance_create(x,y-20, damage_obj)){
	        value = choose("BAH!", "BAAH!", "BAHH!")
	        timer = 75
	    }
	}



}
