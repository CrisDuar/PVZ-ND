device_mouse_dbclick_enable(false);
show_debug_log(true)

initialize_packets()
initialize_tile_objs()

if (os_type != os_android) gamepad_force_focus();

mouse_sprites = [
[cursor1_spr, cursorb1_spr],
[cursor2_spr, cursorb2_spr],
[cursor3_spr, cursorb3_spr],
[cursor4_spr, cursorb4_spr],
[cursor5_spr, cursorb5_spr],
[cursor6_spr, cursorb6_spr],
[cursor7_spr, cursorb7_spr],
]



a=0
b=false

//volume
volevel=25
sfxvol=25
musicvol=25
os=0
showf3=false
showhitboxes=false
shadows=true
global.videoq = 2
//modo dios
global.godmode=false
global.settings_sec = 0
//horas

global.hours = 0
global.game_time = 0

//GUI
//So you can't interact with background buttons if there's a popup open
global.popup_open = 0;

//time_played = 0
//time_crrnt = get_timer()/3600000000

//screenshots
var file
var lvl
var dnr
//Auto save
save_lph=0
save_t=5*60*60


if !directory_exists(game_save_id + "\\screenshots"){
directory_create(game_save_id + "\\screenshots")
}

//Progress
global.progress = ds_map_create();
global.load_level = "";
global.load_route = "";

ds_map_add(global.progress, "niveles", 0);
ds_map_add(global.progress, "vasebreaker", 0);

ds_map_add(global.progress, "levelhard", array_create(4, 0));

//SHOP
ds_map_add(global.progress, "plant", array_create(5, 0));
ds_map_add(global.progress, "costume", array_create(8, 0));
ds_map_add(global.progress, "upgrade", array_create(5, 0));

//plantas
global.plant0=false
global.plant1=false
global.plant2=false
global.plant3=false
global.plant4=false
//disfraz
global.costume0=false
global.costume1=false
global.costume2=false
global.costume3=false
global.costume4=false
global.costume5=false
global.costume6=false
global.costume7=false
//mejoras
global.upgrade0=false
global.upgrade1=false
global.upgrade2=false
global.upgrade3=false
global.upgrade4=false
global.upgrade5=false


//variables importantes
global.niveles=0
global.dinero=0
global.interpolation=true

//hardmode
global.levelhard1=0
global.levelhard2=0
global.levelhard3=0
global.levelhard4=0
//Rompe jarrones
global.vasebreaker=0

global.price=""
global.nota=0

if (os_get_language()=="es"){
    global.lang="es"
}else{
    global.lang="en"
}

global.cursor=0
global.cursorcolor=0
global.lastroom=menu_rm_
globalvar dlt;
global.list=array_create(8)//Crear las plantas para reseleccionar
global.shovelpress=false

//Versus mode
global.z_up=vk_up
global.z_down=vk_down
global.z_left=vk_left
global.z_right=vk_right
global.z_ch1 = ord("B")
global.z_ch2 = ord("M")
global.z_place = ord("N")

global.p_up=ord("W")
global.p_down=ord("S")
global.p_left=ord("A")
global.p_right=ord("D")
global.p_ch1 = ord("Q")
global.p_ch2 = ord("E")
global.p_place = ord("F")
global.p_remove = ord("R")
global.p_action = vk_shift

global.gamepad_plant=-1
global.gamepad_zombie=-1

global.gamepad_list=ds_list_create()

global.idp_kb[0]=false//IS GAMEPAD DISABLED? I'd prefer keyboard, dude
global.idp_kb[1]=false

global.vs_mtouch[0] = false
global.vs_mtouch[1] = false

global.vstouch=false
global.vsgamemode=1
global.vsmap=0
global.vsmaxmap=0
global.vsbanning = true;

global.vs_log = true
global.vs_log_plants = ""
global.vs_log_zombies = ""

if os_type==os_android{
    global.vs_log = false
    global.vs_mtouch[0] = true
    global.vs_mtouch[1] = true
}

//Battle mode
global.battle_diff=0
global.battle_map=0

//SURVIVAL ENDLESS
global.survival_ver = 1

//GAMEJOLT
global.user=""
global.token=""
global.sv_cnfg_user = true;

///LOAD ALMANAC & DIALOGS
global.almanac_data = 0//csv_to_grid("almanac.csv", true)
global.dialog_data = 0//csv_to_grid("dialog.csv", true)

//Initialize the tables of costumes
global.costumes = 0;
global.costumelist = 0;
global.costume_unlock = 0;

//Rewards table
global.rewards = 0;
global.notes = 0;

//Is loading a custom level?
global.is_customlvl = false;

//saving and loading data
global.acc_ls = ds_map_create();
global.acc_id = -1;
global.acc_name = "";
load_game_data();
/*
if file_exists("savedata.nd") and !file_exists("savedata.ini"){
    load_old_data();
}

if file_exists("savedata.ini"){
    load_game("savedata.ini");
}else{
    if file_exists("savedata_backup.ini"){
        load_game("savedata_backup.ini");
        save_game();
    }
}*/
splash=false

global.cursorcolor = clamp(global.cursorcolor,0,1);
global.cursor = clamp(global.cursor,0,7);

switch(os_type){
    case os_android:
        os="Android" 
        global.cursor=0
        global.cursorcolor=0
    break
    
    case os_windows: os="Windows" break
}

///EXPERIMENT UTC
/*
var _crnt_timezone = date_get_timezone()

date_set_timezone(timezone_local);

var h_local = date_get_hour(date_current_datetime());
var d_local = date_get_day(date_current_datetime());

date_set_timezone(timezone_utc);

var h_utc = date_get_hour(date_current_datetime());
var d_utc = date_get_day(date_current_datetime());

date_set_timezone(_crnt_timezone);

if d_local>d_utc{
    h_local += 24
}

utc = h_local - h_utc

