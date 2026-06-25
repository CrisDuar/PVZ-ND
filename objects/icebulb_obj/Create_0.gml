event_inherited();
image_index=1;

apply_effect = function(_id){
	//CONGELAMIENTO
	with(_id){
	image_blend=c_frost
		if (!congelado and canfreeze){
			audio_play_sound(zombifrost_snd,1,false); 
			congelado=true
		}

		if (frozenstop < 60*10){
			frozenstop = 60*10;
			timecongelado = 60*15;
		}
	}
}

on_collision = function(){
	with(eatfather_obj){
        if collision_rectangle(other.x-110,other.y-140,other.x+110,other.y+100,self,false,false){
            if (timecongelado < 60*8) timecongelado = 60*8;
            image_blend=c_frost
        }
    }	
	part_particles_create(control_obj.part, x, y, control_obj.p20, 40);
	instance_create(x,y-30,destroygrave_obj)
    with(instance_create(x,y,luzcafe_obj)){sprite_index=luzicelettuce_spr}
}
/*event_inherited()

spd = 10;
spd_max = 10;
shadow_h = 5;
image_speed = 0;
image_index = 1;
msk = sprite_index;
audio_play_sound(bulborodando_snd,1,false)

hit_zom = ds_list_create()
dmg_zom = 120;
hitmax_zom = 100;

bounce = true;

broke= -1
particle= -1
snd1=bulbocongela_snd
snd2=bulbocongela_snd

get_sunk = function(){
	audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.85,1.15))
	with(instance_create(x,y,tierra1_obj)){sprite_index=agua1_spr}
	with(instance_create(x,y,tierra3_obj)){sprite_index=agua3_spr; image_alpha=1}
	instance_create(x,y,aguaex_obj)
	instance_destroy()	
}

apply_effect = function(_id){
	//CONGELAMIENTO
	with(_id){
	image_blend=c_frost
		if (!congelado and canfreeze){
			audio_play_sound(zombifrost_snd,1,false); 
			congelado=true
		}

		if (frozenstop < 60*10){
			frozenstop = 60*10;
			timecongelado = 60*15;
		}
	}
}

on_collision = function(){
	with(eatfather_obj){
        if collision_rectangle(other.x-110,other.y-140,other.x+110,other.y+100,self,false,false){
            if (timecongelado < 60*8) timecongelado = 60*8;
            image_blend=c_frost
        }
    }	
	
	instance_create(x,y-30,destroygrave_obj)
    with(instance_create(x,y,luzcafe_obj)){sprite_index=luzicelettuce_spr}
}