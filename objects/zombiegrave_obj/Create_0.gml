image_speed=0
image_index=random_range(0,9)
h=172
obj=z_zombie_obj
sprite_index=object_get_sprite(obj)

w=0
surf=-1
water = false
animwater = false
f=false

if (point_in_rectangle(x,y,305,284,1100,423) and __background_get( e__BG.Index, 0 )=poolday_bg)
or (collision_rectangle(x-40,y-10,x-10,y+30,charco_obj,false,false)){
    water=true
    animwater=true
}

if (global.videoq > 0) create_dirt(animwater)

if animwater==false{
    audio_sound_pitch(audio_play_sound(gravesound_snd,1,false),random_range(0.85,1.1))
}else{
    audio_sound_pitch(audio_play_sound(aguazom_snd,1,false),random_range(0.85,1.15))
}

