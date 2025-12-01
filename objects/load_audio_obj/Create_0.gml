randomize()
halo = 0
load_data = false;
load = 0;

var full = 0

if file_exists("savedata.ini"){
    ini_open("savedata.ini")
    full = ini_read_real("Game_config", "fullscreen", 0 );
    ini_close()
}

window_set_fullscreen(full);
