/// @description TO EDIT
//-------------------------------------

filename = "weather_surv.ini"
surv_type = 2

//-------------------------------------

lvld_es = "Zona de infinito (Claire)"
lvld_en = "Endless zone (Claire)"

//-------------------------------------

// zombie, point cost, odds, difficulty
ds_list_add(lst_data
,array(z_zombie_obj, 1, 100, 1)
,array(z_imp_obj, 1, 90, 1)

,array(z_headbox_obj, 1, 95, 2)
,array(z_conehead_obj, 2, 95, 2)
,array(z_screendoor_obj, 4, 90, 3)
,array(z_buckethead_obj, 4, 95, 3)
,array(z_allstar_oj, 4, 90, 4)
,array(z_coffin_obj, 4, 90, 4)

//truco
,array(z_paperthrower_obj, 2, 60, 2)
,array(z_icehead_obj, 2, 75, 2)
,array(cajaspawn_obj, 2, 75, 2)
,array(z_gardener_obj, 2, 60, 2)
,array(z_polevaulter_obj, 2, 75, 2)
,array(z_jackinthebox_obj, 2, 75, 2)
,array(z_statue_obj, 3, 75, 2)
,array(z_magician_obj, 3, 75, 2)

,array(z_ghost_obj, 2, 50, 3)
,array(z_newspaper_obj, 3, 60, 3)
,array(z_rocket_obj, 3, 60, 3)
,array(z_skeleton_obj, 3, 75, 3)
,array(z_torch_obj, 3, 75, 3)
,array(z_balloon_obj, 4, 60, 3)
,array(z_trashcan_obj, 4, 75, 3)
,array(z_solarpanel_obj, 4, 75, 3)
,array(z_molotov_obj, 4, 75, 3)

,array(z_doctor_obj, 3, 60, 4)
,array(z_necromancer_obj, 4, 75, 4)
,array(z_riotpolice_obj, 4, 80, 4)
,array(z_zomboni_obj, 5, 75, 4)
)

ds_list_add(lst_armor, lst_data[| 0], lst_data[| 1], lst_data[| 2], lst_data[| 3], lst_data[| 4], lst_data[| 5], lst_data[| 6], lst_data[| 7])

for(var i = 8; i < ds_list_size(lst_data); i++){
    ds_list_add(lst_trick, lst_data[| i])
}

//-------------------------------------

bg1 = claire2_bg
bg2 = claire3_bg
bg3 = claire_bg

challenges[0,1] = true
challenges[1,1] = true
challenges[2,1] = true
challenges[3,1] = true
challenges[4,1] = true
challenges[5,1] = true
challenges[6,1] = true
challenges[7,1] = true

//-------------------------------------