event_inherited();
survival=true
record=0
survprogress=0
survtimecalc=0
dificultad=0.75

diff_incr = 0.75

version=0

flagnum = 0;
numwaves = 15;

lvl_es="Zona de infinito (jugador)"
lvl_en="Endless zone (player)"

lvld_es = "Zona de infinito (jugador)"
lvld_en = "Endless zone (player)"

//desafios
//0 status; 1 is it available
challenges[0,0] = false//save our seeds
challenges[0,1] = false
    p1=0
    p2=0
challenges[1,0] = false//sun machine
challenges[1,1] = false

challenges[2,0] = false//limit lawn
challenges[2,1] = false

challenges[3,0] = false//rain
challenges[3,1] = false

challenges[4,0] = false//fog
challenges[4,1] = false

challenges[5,0] = false//wind
challenges[5,1] = false

challenges[6,0] = false//poison puddles
challenges[6,1] = false

challenges[7,0] = false//pollution
challenges[7,1] = false

/*----------------------------*/
filename = "player_surv.ini"
surv_type = 0
/*----------------------------*/
timer=60*3
timercheck=false

//bandera
flag=false

//ZOMBIES
lst_data=ds_list_create()
lst_armor=ds_list_create()
lst_trick=ds_list_create()

zombie_list = ds_list_create();

loaded_zom = false

// zombie, point cost, odds, difficulty
/*
ds_list_add(lst_data
,array(zombie1_obj, 1, 100, 1)
,array(imp_obj, 1, 90, 1)

,array(zombieheadbox_obj, 2, 90, 2)
,array(zombiecarecono_obj, 2, 90, 2)
,array(zombiedoor_obj, 3, 85, 3)
,array(zombiecarecubo_obj, 4, 85, 3)
,array(futbolzombi_obj, 4, 85, 4)

,array(zombiepapsho_obj, 2, 75, 1)
,array(zombiestatua_obj, 3, 75, 1)
,array(zombiejardinero_obj, 2, 75, 2)
,array(zombiepole_obj, 2, 75, 2)
,array(zombielector_obj, 3, 60, 3)
,array(skeleton_obj, 3, 60, 3)
,array(zombiesecta1_obj, 4, 60, 4)
)
*/

//ds_list_add(lst_armor, lst_data[| 0], lst_data[| 1], lst_data[| 2], lst_data[| 3], lst_data[| 4], lst_data[| 5], lst_data[| 6])


//ds_list_add(lst_trick, lst_data[| 7], lst_data[| 8], lst_data[| 9], lst_data[| 10], lst_data[| 11], lst_data[| 12], lst_data[| 13])

//-------------------------------------

bg1 = _state3_bg
bg2 = afternoon_bg
bg3 = night_bg

a = array(f1,f2,f3,f4,f5)
g = array(f1,f2,f3,f4,f5)

//-------------------------------------

load = false

//mostrar zombis
alarm[1]=5

/* */
/*  */
