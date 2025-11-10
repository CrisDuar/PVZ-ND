if sprite_index!=invisible2
{
audio_stop_all();
with (instance_create(x,y,newplantcenter_obj)){
sprite_index=zombieswin_spr
}
audio_play_sound(seedpack_snd,1,false)
audio_play_sound(finalprize_snd,1,false)
sprite_index=invisible2
global.iniciomusica=false
alarm[0]=room_speed/2.01
}

