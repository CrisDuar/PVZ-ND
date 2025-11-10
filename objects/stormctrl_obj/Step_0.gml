if thunderalpha>0 thunderalpha-=0.04
if alpha<1 alpha+=choose(0.01,-0.01,-0.02,0.02,0.04)
if (global.videoq > 1) part_particles_create(control_obj.part, random(room_width), -10, control_obj.p6, 1)

if !audio_is_playing(rain_snd) and control_obj.terminado=false
and global.nivelterminado=false{
    audio_play_sound(rain_snd,1,true)
}

if t>0{
    if collision_rectangle(0,0,450,640,eatfather_obj,false,false){
        t-=2
    }else{
        t--
    }
}else{
    t=60*random_range(4,18)

    audio_sound_pitch(audio_play_sound(thunder_snd,1,false),random_range(0.8,1.3))
    thunderalpha=1
    alpha=0
}

if audio_is_playing(music_chooseseeds_snd){
    audio_stop_sound(music_chooseseeds_snd)
}

