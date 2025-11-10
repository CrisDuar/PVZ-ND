/// @description TO EDIT
//-------------------------------------

filename = "player_surv.ini"
surv_type = 0

//-------------------------------------

lvld_es = "Zona de infinito (jugador)"
lvld_en = "Endless zone (player)"

//-------------------------------------

// zombie, point cost, odds, difficulty
ds_list_add(lst_data
,array(zombie1_obj, 1, 100, 1)
,array(imp_obj, 1, 90, 1)

,array(zombieheadbox_obj, 1, 90, 2)
,array(zombiecarecono_obj, 2, 90, 2)
,array(zombiedoor_obj, 4, 90, 3)
,array(zombiecarecubo_obj, 4, 90, 3)
,array(futbolzombi_obj, 4, 90, 4)

,array(zombiepapsho_obj, 2, 60, 2)
,array(zombiejardinero_obj, 3, 60, 2)
,array(zombiestatua_obj, 3, 75, 2)
,array(zombiepole_obj, 2, 75, 2)

,array(zombielector_obj, 3, 75, 3)
,array(skeleton_obj, 3, 75, 3)
,array(zomtorch_obj, 3, 75, 3)
,array(zombiesecta1_obj, 4, 75, 4)
)

ds_list_add(lst_armor, lst_data[| 0], lst_data[| 1], lst_data[| 2], lst_data[| 3], lst_data[| 4], lst_data[| 5], lst_data[| 6])

ds_list_add(lst_trick, lst_data[| 7], lst_data[| 8], lst_data[| 9], lst_data[| 10], lst_data[| 11], lst_data[| 12], lst_data[| 13])

//-------------------------------------

bg1 = _state3_bg
bg2 = afternoon_bg
bg3 = night_bg

challenges[0,1] = true
challenges[1,1] = true
challenges[2,1] = true

//-------------------------------------
