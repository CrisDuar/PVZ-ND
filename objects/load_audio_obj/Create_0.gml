randomize()
halo = 0
load_data = false;
if audio_group_is_loaded(Music) and audio_group_is_loaded(SFX) and alarm[0]=-1{
    alarm[0]=60
}

var full = 0

if file_exists("savedata.ini"){
    ini_open("savedata.ini")
    full = ini_read_real("Game_config", "fullscreen", 0 );
    ini_close()
}

window_set_fullscreen(full);
