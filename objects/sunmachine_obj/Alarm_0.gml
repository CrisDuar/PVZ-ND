if global.gameover=false
and global.iniciogame=true
and global.nivelterminado=false{
    audio_sound_pitch(audio_play_sound(sol_snd,1,false),random_range(0.9,1.1))
    control_obj.soles += 25
    instance_create(x,y-20,solmove_obj)
}

var _t = 8

if (instance_exists(zs_endless_obj)){
    _t = max(3, 8 - 0.1*zs_endless_obj.h)
}

alarm[0]=room_speed*_t


