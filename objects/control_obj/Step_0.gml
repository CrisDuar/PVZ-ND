if (gameplay_modifier[3]) cansun = false;

soles = clamp(soles,0,9975)
zomes = clamp(zomes,0,9975)

drawsoles = clamp(drawsoles,0,9975)
drawzomes = clamp(drawzomes,0,9975)

if pala seleccionado=0
if drawsoles<soles drawsoles+=5
if drawsoles>soles drawsoles-=5

if drawzomes<zomes drawzomes+=5
if drawzomes>zomes drawzomes-=5


if (global.iniciogame){
	
    if (gameplay_modifier[6]){
    
        if (gm_indecisive_timer <= gm_indecisive_timer_max){
            
            gm_indecisive_timer++;
        }else{
            gm_indecisive_timer = 0;
            
            with(eatfather_obj){
                if y = zombispawn_obj.f6{
                    garlic_yy = get_closest_row(y-90)
                }else if y = zombispawn_obj.f1{
                    garlic_yy = get_closest_row(y+90)
                }else{
                    garlic_yy = get_closest_row(y+choose(-90,90))
                }
            }
        }
    }
    
    
    if (!start_sun && !instance_exists(ctrlcinta1_obj)){
        start_sun = true;
	
       	//Sun
       	alarm[0]=60*5;
       	
       	//Wind
       	alarm[2]=60*30;
    }
}

if audio_is_playing(newplant_snd)
or audio_is_playing(finalprize_snd){terminado=true}

if global.gameover=true or terminado=true{
	seleccionado=0
	pala=false
}

if mazo==true{
   cursor_sprite=invisible3_spr
   window_set_cursor(cr_default)
}

if global.godmode==true{
    if keyboard_check(vk_control){soles += 5; zomes+=5}
    
    if keyboard_check(vk_alt)
    and (instance_exists(cargpaquete_obj) or instance_exists(cargzombi_obj)){
        instance_destroy(cargpaquete_obj);
        instance_destroy(cargzombi_obj);
    }

}

//Ambiente
if (rain and !audio_is_playing(rain_snd) and !terminado and !global.nivelterminado){
	
    audio_play_sound(rain_snd, 1, true);
}

if (global.iniciogame and !ambient){
    ambient=true

    if string(string_delete(room_get_name(room),10, 6)) == "levelhard"{
        if random(100)>=80 audio_play_sound(ambient3_snd,0.1,false)
    }
}

//Sun sfx
if sunpitch>1 sunpitch-=0.01
if sunpitch>2 sunpitch=2

//Game over blackout
if global.gameover==true and gmov_a<1{
    gmov_a+=0.05
}


///VFX

//shaking
if !instance_exists(camaractrl_obj){
	if shake > 0{
		//if screenshake is enabled
		shake--;
		
		var _vx = camera_get_view_x(view_camera[0]);
		var _vy = camera_get_view_x(view_camera[0]);
		
		camera_set_view_pos(view_camera[0], vx+random_range(-4,4), vy)
	}

	if (shake == 0){
		camera_set_view_pos(view_camera[0], vx, vy)
	}
}


//rain
var _npart = 1

if (global.videoq > 0) _npart = 3
if rain==true repeat(_npart){part_particles_create(part, random(room_width), -10, p6, 1)};

if (leaves and global.videoq > 1){
    if (leaves_t > 0){
        leaves_t--;
    }else{
        leaves_t = choose(30, 60, 90, 120)
        part_particles_create(part, random(room_width), -10, p28, 1)
    }
}


//wind
if (wind) part_particles_create(part, random_range(300,1200), random(room_height), p15, 1);
if (!global.iniciogame and windy) part_particles_create(part, random_range(300,1200), random(room_height), p15, 1);

