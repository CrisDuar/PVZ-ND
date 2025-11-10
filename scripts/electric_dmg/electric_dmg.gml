/// @description electric_dmg(obj, dmg)
/// @param obj
/// @param  dmg
function electric_dmg(argument0, argument1) {

	var _obj = argument0
	var dmg = argument1

	audio_play_sound(choose(pea_impact_snd,pea_impact2_snd),1,false)

	if (object_get_parent(_obj.object_index) != eatfather_obj and object_get_parent(_obj.object_index) != eatfather_shield_obj) or _obj.object_index==zombieglobo_obj{
	    if control_obj.invisible==false _obj.image_alpha=0.5
	    _obj.vida-=dmg
    
	}else{
	    if (_obj.vida-dmg > 0){
    
	        repeat(2){part_particles_create(control_obj.part, _obj.x, _obj.y-irandom(60), control_obj.p19, 2)}
	        if control_obj.invisible==false _obj.image_alpha=0.5
	        _obj.vida-=dmg
	    }else{
    
	        audio_sound_pitch(audio_play_sound(electricded_snd,1,false),random_range(0.8,1.2))
	        repeat(15){part_particles_create(control_obj.part, _obj.x, _obj.y-irandom(60), control_obj.p19, 2)}
        
	        instance_create(_obj.x,_obj.y-60+30*_obj.water,destroygrave_obj)
	        with(_obj){event_user(0)}
	    } 
	}



}
