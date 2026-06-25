event_inherited()

spd = 10;
msk = sprite_index;
shadow_h = 5;
image_speed=0
audio_play_sound(bulborodando_snd,1,false)

hit_zom = ds_list_create()
dmg_zom = 120;
maxhit_zom = 100;

bounce = true;

broke= -1
particle= -1
snd1=bulbopimact_snd
snd2=bulbopimact_snd

get_sunk = function(){
	audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.85,1.15))
	with(instance_create(x,y,tierra1_obj)){sprite_index=agua1_spr}
	with(instance_create(x,y,tierra3_obj)){sprite_index=agua3_spr; image_alpha=1}
	instance_create(x,y,aguaex_obj)
	instance_destroy()	
}