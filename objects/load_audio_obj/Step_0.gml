if halo<360{
    halo+=2
}else{
    halo=0
}

load = (100*(state + 1))/8;//(audio_group_load_progress(SFX) + audio_group_load_progress(Music))/2;

if (t > 0) t-- else t = t_max;

if (!load_data and t = t_max){
	
	switch(state){
		
		case 0:
			audio_group_load(SFX);
			state++;
		break;
		
		case 1:
			if (audio_group_is_loaded(SFX)) state++;
		break;
		
		case 2:
			audio_group_load(Music);
			state++;
		break;
		
		case 3:
			if (audio_group_is_loaded(Music)) state++;
		break;
		
		case 4:
		    gj_init(read("NzZzNzRjNzFtNzZ4NzViNzh2"),read("NzhyNzBkMTIyZjEyM283NHYxMTlzMTIzdDEyMngxMjJ5NzVpNzNtNzJ4NzRtNzZiNzJ5MTE5YzEyMmM3M3M3N3Y3OXQ3OG03MmM3OHU3MHE3OWk3MnU3M3M3M3o3NWc3OW03NGIxMjFt"))
		    gj_user_autologin();
			
			state++;
		break;

		case 5:
		    ///LOAD ALMANAC & DIALOG
		    global.almanac_data = csv_to_grid("almanac.csv", true)
		    global.dialog_data = csv_to_grid("dialog.csv", true)
            global.challenges_desc = csv_to_grid("challenges.csv", true)
			create_almanac_map();
			
			state++;
		break;
		
		case 6:
			audio_group_set_gain(Music, 0.25)
			audio_group_set_gain(SFX, 0.25)
			
			load_rewards_data();
			load_notes_data();
			
			state++;
		break;
    
		//disfraces
		case 7:
			init_costumes();
			
			//state++;
		    load_data = true;
		break;
	}
}

if (load_data){
	
    room_goto_next()
}

