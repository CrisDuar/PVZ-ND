/*if other.object_index!=beachballdrop_obj{
if room=izombie_rm{
y=y-1000
audio_stop_all();
audio_play_sound(prize_snd,1,false)
instance_create(655,335,zombiswin2p_obj)
}

if control_obj.multijugador=false{
if room!=izombie_rm{
global.gameover=true
audio_play_sound(gameover_snd,1,false)
instance_create(0,0,gameover_obj)
alarm[1]=room_speed*4
alarm[0]=room_speed*2
y=y-1000
control_obj.seleccionado=0
control_obj.pala=false}
}else{
y=y-1000
audio_stop_all();
audio_play_sound(gameover_snd,1,false)
instance_create(655,335,zombiswin2p_obj)
}

if room=survival1_rm survival_newgame(file);
if room=survival2_rm survival_newgame("pool_surv.ini");
}

/* */
/*  */
