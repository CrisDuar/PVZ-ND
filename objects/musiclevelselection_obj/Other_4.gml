if instance_exists(casa_sl_obj) or room==vase_sl_rm{
    if !audio_is_playing(music_levelselection_snd){
        audio_stop_all();
        audio_play_sound(music_levelselection_snd,0.9,true)
    }
}

if room==level2_sl_rm
or room==hardmode_night_rm
or room==hardmode_pool_rm
or room==hardmode_claire_rm
or room==level4_sl_rm
or room==vase_sl_rm{
    __background_set( e__BG.HSpeed, 1, -0.2 )
    __background_set( e__BG.VSpeed, 1, 0.2 )
}

