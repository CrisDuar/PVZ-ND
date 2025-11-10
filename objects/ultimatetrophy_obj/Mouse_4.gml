if sprite_index!=invisible3_spr
{
audio_stop_all();
with(instance_create(x,y,newplantcenter_obj)){
sprite_index=other.sprite_index
}
global.dinero+=500
audio_play_sound(diamond_snd,1,false)
audio_play_sound(finalprize_snd,1,false)
    if room==levelhard1_6_rm{if global.levelhard1<=5{global.levelhard1=6}}
    if room==levelhard2_6_rm{if global.levelhard2<=5{global.levelhard2=6}}
    if room==nivel30_rm{if global.niveles<=30{global.niveles=31}}
    
sprite_index=invisible3_spr
alarm[0]=room_speed/2.01
}

