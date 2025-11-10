audio_master_gain(volevel/100);
audio_group_set_gain(SFX, sfxvol/100,0)
audio_group_set_gain(Music, musicvol/100,0)

//delta time
dlt = (delta_time*60)/1000000
global.game_time += delta_time/1000000;