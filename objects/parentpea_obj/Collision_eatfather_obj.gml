var _check = (hit_zom != -1);
var _ev = -1;
var _num_z = 0;

if (_check){
	_ev = ds_list_find_index(hit_zom, other.id);
	_num_z = ds_list_size(hit_zom);
}

if (bounce && bounce_t > 0) exit;

if (_ev == -1){
	
	if (_check) {
		ds_list_add(hit_zom, other.id)
		_num_z++;
	}
	
	if (col_haspar and global.videoq > 0){
		part_particles_create(col_partsys, x, y, col_part, 4);
		
		if (particle != -1){
		    repeat(4){
		        with(instance_create(x,y+yy,peaparticle_obj)){sprite_index=other.particle}
		    }
		}
	}
	audio_play_sound(snd[irandom_range(0, array_length(snd) - 1)], 1, false)
	
	#region Zombie collision
	if (bounce) do_bounce();
	on_collision();
	
	var _is_shield = false;
	var _dmg = dmg_zom;
	
	with(other){
		
		other.sunbean(id);
		if (!control_obj.invisible) image_alpha = 0.5;
		
        if (object_index==z_statue_obj or object_index == trashcan_obj) _is_shield = true
		
		if (other.pierce_door){
			
			puertavida -= _dmg;
			vida -= _dmg;
			other.apply_effect(id);
			
		}else{
			if (puertavida > 0) _is_shield = true;	
			
			if (puertavida > 0 and other.x < x){
	    
			    puertavida -= _dmg;
				_is_shield = true;
			}else{
		
			    vida -= _dmg;
				other.apply_effect(id);
			}
		}
		
		if soltarproteccion=false audio_play_sound(choose(hurtsnd,hurt2snd),1,false);
	}
	if (_is_shield and pierce_obst == false and bounce == false) _num_z = maxhit_zom;
	
	#endregion
	
	#region Destroy
	if (_num_z >= maxhit_zom){
		
		if broke != -1{
		    with(instance_create(x,y+yy,globalbroke_obj)){sprite_index=other.broke}
		}
		
		instance_destroy();
	}
}