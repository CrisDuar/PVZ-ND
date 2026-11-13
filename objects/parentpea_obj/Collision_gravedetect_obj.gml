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
	
	#region Grave collision
	
	var _dmg = dmg_zom;
	if (bounce) do_bounce();
	on_collision();
	
	with(other){
		
		if (drop_part and global.videoq > 0){
		    repeat(3){
		        with(instance_create(x,y-48,nutparticle_obj)){
		            sprite_index=zomgravepart_spr
		        }
		    }
		}
		image_alpha=0.5
		vida -= _dmg
	}
	
	if (!pierce_grave && !bounce) _num_z = maxhit_zom;
	
	#endregion
	
	#region Destroy
	
	if (_num_z >= maxhit_zom){
		
		if broke != -1{
		    with(instance_create(x,y+yy,globalbroke_obj)){sprite_index=other.broke}
		}
		
		instance_destroy();
	}
}