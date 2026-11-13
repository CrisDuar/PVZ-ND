y-=15
speed = 8;
direction=180
image_speed=0

bounce_tm = 45;
bounce_t = 0;
bounce_angle = 135;

damage = 15;

get_sunk = function(){
	audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.85,1.15))
	with(instance_create(x,y,tierra1_obj)){sprite_index=agua1_spr}
	with(instance_create(x,y,tierra3_obj)){sprite_index=agua3_spr; image_alpha=1}
	instance_create(x,y,aguaex_obj)
	instance_destroy()	
}

do_bounce = function(){
    
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
}

audio_play_sound(bulborodando_snd,1,false)