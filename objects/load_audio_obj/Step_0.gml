if halo<360{
    halo+=2
}else{
    halo=0
}

load = (audio_group_load_progress(SFX) + audio_group_load_progress(Music))/2;

if (!load_data and load>=50){
    gj_init(read("NzZzNzRjNzFtNzZ4NzViNzh2"),read("NzhyNzBkMTIyZjEyM283NHYxMTlzMTIzdDEyMngxMjJ5NzVpNzNtNzJ4NzRtNzZiNzJ5MTE5YzEyMmM3M3M3N3Y3OXQ3OG03MmM3OHU3MHE3OWk3MnU3M3M3M3o3NWc3OW03NGIxMjFt"))
    gj_user_autologin()

    ///LOAD ALMANAC & DIALOG
    global.almanac_data = csv_to_grid("almanac.csv", true)
    global.dialog_data = csv_to_grid("dialog.csv", true)
	
	load_rewards_data();
	load_notes_data();
    
	//disfraces
	init_costumes();
    load_data = true;
}

if audio_group_is_loaded(Music) and audio_group_is_loaded(SFX){
    room_goto_next()
}

