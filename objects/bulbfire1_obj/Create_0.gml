event_inherited();
image_index=2;

on_collision = function(){
	with(instance_create(x,y,powie_obj)){sprite_index=strike_spr}
    part_particles_create(control_obj.part, x-random_range(-10,12), y, control_obj.p1, 40);
    create_explosion(x,y+10,0,3,3,bulboexplota_snd)
    instance_destroy();
}

/*image_speed=0
image_index=2
speed=10
audio_play_sound(bulborodando_snd,1,false)

event_inherited()

spd = 10;
shadow_h = 5;
image_speed = 0;
image_index = 2;
msk = sprite_index;
audio_play_sound(bulborodando_snd,1,false);

broke= -1
particle= -1
snd1=nada_snd;
snd2=nada_snd;

get_sunk = function(){
	audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.85,1.15))
	with(instance_create(x,y,tierra1_obj)){sprite_index=agua1_spr}
	with(instance_create(x,y,tierra3_obj)){sprite_index=agua3_spr; image_alpha=1}
	instance_create(x,y,aguaex_obj)
	instance_destroy()	
}


on_collision = function(){
	with(instance_create(x,y,powie_obj)){sprite_index=strike_spr}
    part_particles_create(control_obj.part, x-random_range(-10,12), y, control_obj.p1, 40);
    create_explosion(x,y+10,0,3,3,bulboexplota_snd)
    instance_destroy();
}