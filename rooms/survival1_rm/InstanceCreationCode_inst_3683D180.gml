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
,array(z_zombie_obj, 1, 100, 1)
,array(z_imp_obj, 1, 90, 1)

,array(z_headbox_obj, 1, 90, 2)
,array(z_conehead_obj, 2, 90, 2)
,array(z_screendoor_obj, 4, 90, 3)
,array(z_buckethead_obj, 4, 90, 3)
,array(z_allstar_oj, 4, 90, 4)

,array(z_paperthrower_obj, 2, 60, 2)
,array(z_gardener_obj, 3, 60, 2)
,array(z_statue_obj, 3, 75, 2)
,array(z_polevaulter_obj, 2, 75, 2)

,array(z_newspaper_obj, 3, 75, 3)
,array(z_skeleton_obj, 3, 75, 3)
,array(z_torch_obj, 3, 75, 3)
,array(z_necromancer_obj, 4, 75, 4)
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
