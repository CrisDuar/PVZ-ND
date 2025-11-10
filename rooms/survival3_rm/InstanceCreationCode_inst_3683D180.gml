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
,array(zombie1_obj, 1, 100, 1)
,array(imp_obj, 1, 90, 1)

,array(zombieheadbox_obj, 1, 95, 2)
,array(zombiecarecono_obj, 2, 95, 2)
,array(zombiedoor_obj, 4, 90, 3)
,array(zombiecarecubo_obj, 4, 95, 3)
,array(futbolzombi_obj, 4, 90, 4)
,array(zombiecoffin_obj, 4, 90, 4)

//truco
,array(zombiepapsho_obj, 2, 60, 2)
,array(icezombie_obj, 2, 75, 2)
,array(cajaspawn_obj, 2, 75, 2)
,array(zombiejardinero_obj, 2, 60, 2)
,array(zombiepole_obj, 2, 75, 2)
,array(zombiecajita_obj, 2, 75, 2)
,array(zombiestatua_obj, 3, 75, 2)
,array(zombiemago_obj, 3, 75, 2)

,array(ghost_obj, 2, 50, 3)
,array(zombielector_obj, 3, 60, 3)
,array(zombierocket_obj, 3, 60, 3)
,array(skeleton_obj, 3, 75, 3)
,array(zomtorch_obj, 3, 75, 3)
,array(zombieglobo_obj, 4, 60, 3)
,array(trashcanzombie_obj, 4, 75, 3)
,array(zompanel_obj, 4, 75, 3)
,array(zombiemolotov_obj, 4, 75, 3)

,array(zombidoctor_obj, 3, 60, 4)
,array(zombiesecta1_obj, 4, 75, 4)
,array(zombiecop_obj, 4, 80, 4)
,array(zomboni_obj, 5, 75, 4)
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