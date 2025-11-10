if sprite_index=bolsa_monedas_spr
{
audio_stop_all();
with (instance_create(x,y,newplantcenter_obj)){
sprite_index=bolsa_monedas_spr
}
global.dinero+=100
audio_play_sound(coins_snd,1,false)
audio_play_sound(newplant_snd,1,false)

    if room==nivel4_rm_{if global.niveles<=4{global.niveles=5}}
    if room==nivel8_rm{if global.niveles <=8{global.niveles=9}}
    if room==nivel13_rm{if global.niveles <=13{global.niveles=14}}
    if room==nivel24_rm{if global.niveles <=24{global.niveles=25}}
    if room==nivel26_rm{if global.niveles <=26{global.niveles=27}}
    //modo dificil
    if room==levelhard1_1_rm{if global.levelhard1 <=0{global.levelhard1=1}}
    if room==levelhard1_3_rm{if global.levelhard1 <=2{global.levelhard1=3}}
    if room==levelhard1_4_rm{if global.levelhard1 <=3{global.levelhard1=4}}
    if room==levelhard1_5_rm{if global.levelhard1 <=4{global.levelhard1=5}}
    //modo dificil noche
    if room==levelhard2_1_rm{if global.levelhard2 <=0{global.levelhard2=1}}
    if room==levelhard2_3_rm{if global.levelhard2 <=2{global.levelhard2=3}}
    if room==levelhard2_4_rm{if global.levelhard2 <=3{global.levelhard2=4}}
    if room==levelhard2_5_rm{if global.levelhard2 <=4{global.levelhard2=5}}
sprite_index=invisible2
alarm[0]=room_speed/2.01
}

