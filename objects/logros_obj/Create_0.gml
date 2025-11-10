//Declarar los logros

global.num_logros = 31

global.real_logros = 0
global.unlock_logros = 0
update_logros = false
check_logros = 5;
/*
n achievement ID
[# 0, n] achievement status
[# 1, n] achievement name EN
[# 2, n] achievement name ES
[# 3, n] achievement desc EN
[# 4, n] achievement desc ES
[# 5, n] achievement icon
[# 6, n] achievement type 
    [0] normal
    [1] Hard
    [2] secret
    [3] just notification
*/
global.logros = ds_grid_create(7, global.num_logros);

//loop through the grid
for(var i = 0; i < ds_grid_width(global.logros); i++){
    for(var j = 0; j < ds_grid_height(global.logros); j++){
        global.logros[# i, j] = 0
    }
}

//declarar cola de logros (máximo 1 en pantalla)
global.logros_fila = ds_queue_create();

//add_achievement(0, "Achievement test1", "Logro test1", "Descripción en español", "Description in english", 0, 0)
//add_achievement(1, "Achievement test2", "Logro test2", "Descripción en español", "Description in english", 0, 0)
//add_achievement(2, "Hard mode unlocked", "Modo difícil desbloqueado", "", "", 0, 3)
load_achievements();

//Animation when unlocking an achievement
id_show = 0
timer = 0
max_t = room_speed*3
alpha = 0

do_anim = false
do_sound = true;

///Variables for achievements
strike = false
haunted_ghost = false
explodonator = 0;
pool_closed = true;
hydrophobic = true
healthy_garden = true;
healthy_garden_start = false
sans = false
long_enough = true;
no_fungus = true
good_morning = false
mower_care = true
low_budget = true
ruby = false
zmind = false
pmind = false
levelpassed = false;

/* */
/*  */
