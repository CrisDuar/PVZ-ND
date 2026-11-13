event_inherited();

broke=peabroke_spr
particle=peaparticle_spr
snd = [pea_impact_snd, pea_impact2_snd];


//Zombie collision
dmg_zom = 10;
hit_zom = -1;//ds_list_create()
maxhit_zom = 0;

//Piercing projectiles
pierce_obst = false;	//If it get destroyed with obstacles or shields or can pierce them
pierce_door = false;	//If the projectile can pass through a door and damage the zombie
pierce_grave = false;

//Bounce
bounce = false;
bounce_angle = 45
bounce_t = 0
bounce_tm = 45
bounce_mode = 0;

//Effect (freezing, poisoning, etc)
apply_effect = function(_id){
	
}

// On collision do this (Explosions, for example)
on_collision = function(){
	
}

sunbean = function(_id){
	
	var _dmg_m = (dmg_zom / 10)
	
	with(_id){
		var _sun = sunmode * 10 * _dmg_m;
		var _am = ceil(_sun / 50);
		
		for (var i = 0; i < _am; i++){
			
			var _cost = (_sun - 50 < 0) ? _sun % 50 : 50;
			_sun -= 50;
			
			create_sun(x + 10*i, y - 30, sol_flower_obj, _cost, 0.25 + 0.75 * (_cost / 50));
		}
	}
}

do_bounce = function(){
	if (bounce_t == 0){
		if (bounce_mode == 0){
			
			var _low_angle = 360 - bounce_angle;
			
			switch(direction){
                
		        case (_low_angle):
		            direction = bounce_angle
		        break
                
		        case bounce_angle:
		            direction = _low_angle;
		        break
				
				default:
					direction = choose(bounce_angle, _low_angle)
		    }
		}else if (bounce_mode == 1){
			
			direction += bounce_angle;
		}else if (bounce_mode == 2){
			
			direction = 180 - bounce_angle;
		}
	}else{
		bounce_t = bounce_tm;	
	}
}

col_haspar = false;
col_partsys = control_obj.part;
col_part = control_obj.p20;
col_am = 4;