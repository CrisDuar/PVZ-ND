audio_stop_sound(music_levelselection_snd)

if (!audio_is_playing(music_chooseseeds_snd) and !instance_exists(dialogctrl_obj)){
	
	audio_play_sound(music_chooseseeds_snd, 1, true)
}

loop = false;
finalwave=false

idlesong=grasswalk_sng
hordesong=grasswalk_fw_sng

if (room != generic_level_rm){
	if __background_get( e__BG.Index, 0 )=claire2_bg
	or __background_get( e__BG.Index, 0 )=claire3_bg{
	idlesong=burnout_sng
	hordesong=burnout_final_sng
	}

	if __background_get( e__BG.Index, 0 )=poolday_bg{
	idlesong=pool_sng
	hordesong=poolhorde_sng
	}

	if __background_get( e__BG.Index, 0 )=poolnight_bg
	or __background_get( e__BG.Index, 1 )=poolnight_bg{
	idlesong=poolnight_sng
	hordesong=poolnighthorde_sng
	}

	if __background_get( e__BG.Index, 0 )=night_bg{
	idlesong=music_moongrains_snd
	hordesong=music_finalwavenight_snd
	}

	if __background_get( e__BG.Index, 0 )=claire_bg{
	idlesong=spookbrains_sng
	hordesong=finalspookbrains_sng
	}


	switch(room){
	case levelhard1_1_rm:
	case levelhard1_2_rm:
	case levelhard1_3_rm:
	case levelhard1_4_rm:
	case levelhard1_5_rm:
	case levelhard1_6_rm:
	case nivel10_rm:
	idlesong=music_hardbattle_snd
	hordesong=finalhardbattle_sng
	break

	case levelhard2_1_rm:
	case levelhard2_2_rm:
	case levelhard2_3_rm:
	case levelhard2_4_rm:
	case levelhard2_5_rm:
	case nivel25_rm:
	idlesong=hardbattle2_sng
	hordesong=finalhardbattle2_sng
	break

	case levelhard3_1_rm:
	case levelhard3_2_rm:
	case levelhard3_3_rm:
	case levelhard3_4_rm:
	case levelhard3_5_rm:
	idlesong=poolnight_sng
	hordesong=poolnighthorde_sng
	break
	}
}
