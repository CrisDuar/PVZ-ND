/// @description crushed_plant
function crushed_plant() {

	if !((collision_rectangle(305,284,1055,423,self,false,false) and __background_get( e__BG.Index, 0 )=poolday_bg) or (distance_to_object(charco_obj)<1)){

	    audio_play_sound(choose(pea_impact_snd,pea_impact2_snd),0.5,false)
    
	    with(instance_create(x,y,crushedplant_obj)){
	        sprite_index=other.sprite_index
	        image_index=other.image_index
	        depth = other.depth+100 - other.overlay
	    }
    
	    if (costume_img != noone){
	        with(instance_create(x,y,crushedplant_obj)){
	            sprite_index=other.costume_img
	            image_index=other.image_index
	            depth = other.depth + 99 - other.overlay_cos
	        }
	    }
	}

	vida = 0



}
