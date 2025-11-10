/// @description TO EDIT
//-------------------------------------

filename = "pool_surv.ini"
surv_type = 1

//-------------------------------------
lvld_es="Zona de infinito (Robert)"
lvld_en="Endless zone (Robert)"

//-------------------------------------

// zombie, point cost, odds, difficulty
ds_list_add(lst_data
,array(zombie1_obj, 1, 100, 1)
,array(imp_obj, 1, 90, 1)
,array(duckzombie_obj, 1, 90, 1)

,array(zombieheadbox_obj, 2, 90, 2)
,array(zombiecarecono_obj, 2, 90, 2)
,array(zombiedoor_obj, 4, 90, 3)
,array(zombiecarecubo_obj, 4, 90, 3)
,array(futbolzombi_obj, 4, 90, 4)

,array(zombiepapsho_obj, 2, 60, 2)
,array(zombiebuzo_obj, 2, 60, 2)
,array(icezombie_obj, 2, 75, 2)

,array(zombiejardinero_obj, 3, 60, 3)
,array(zombierocket_obj, 3, 75, 3)
,array(skeleton_obj, 3, 75, 3)
,array(trashcanzombie_obj, 4, 75, 3)
,array(zompanel_obj, 4, 75, 3)

,array(protestantzombie_obj, 3, 60, 4)
,array(zombiesecta1_obj, 4, 75, 4)
,array(zombieglobo_obj, 4, 75, 4)
,array(zomboni_obj, 5, 75, 4)
)

ds_list_add(lst_armor, lst_data[| 0], lst_data[| 1], lst_data[| 2], lst_data[| 3], lst_data[| 4], lst_data[| 5], lst_data[| 6], lst_data[| 7])

ds_list_add(lst_trick, lst_data[| 8], lst_data[| 9], lst_data[| 10], lst_data[| 11], lst_data[| 12], lst_data[| 13], lst_data[| 14], lst_data[| 15], lst_data[| 16], lst_data[| 17], lst_data[| 18], lst_data[| 19])

//-------------------------------------

bg1 = poolday_bg
bg2 = poolsunset_bg
bg3 = poolnight_bg

//Rows
f1=152
f2=236
f3=339
f4=422
f5=527
f6=615

challenges[0,1] = true
challenges[1,1] = true
challenges[2,1] = true
challenges[3,1] = true

a=array(f1,f2,f3,f4,f5,f6)
g=array(f1,f2,f5,f6)
w=array(f3,f4)
//-------------------------------------
