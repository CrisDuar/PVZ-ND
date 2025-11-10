//To edit level
pt=12//Grace time
fn=21//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 66"
lvl_en="Level 66"
//To edit prize
sprite=bolsa_monedas_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=67//level number
money=200//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=level4_sl_rm//what room go to after passing the level

zombie_preview(zombieheadbox_obj,1)
zombie_preview(zombiecarecono_obj,1)
zombie_preview(zombiedoor_obj,2)
zombie_preview(zombiecarecubo_obj,1)

zombie_preview(icezombie_obj,2)
zombie_preview(zombiemolotov_obj,2)
zombie_preview(zomtorch_obj,2)
zombie_preview(trashcanzombie_obj,1)

wf[7]=1
wf[14]=1
wf[fn-1]=2

f[0,0] = array(zombieheadbox_obj,a,1)

f[1,0] = array(zombieheadbox_obj,a,1)

f[2,0] = array(zombieheadbox_obj,a,2)

f[3,0] = array(zombiecarecono_obj,a,1)

f[4,0] = array(zombiecarecono_obj,a,2)

f[5,0] = array(zombiecarecono_obj,a,1)
f[5,1] = array(icezombie_obj,a,1)

f[6,0] = array(zombiedoor_obj,a,1)
f[6,1] = array(zombieheadbox_obj,a,2)

//wave 2
f[7,0] = array(zabanderado_obj,array(f3),1)
f[7,1] = array(zombieheadbox_obj,a,2)
f[7,2] = array(zombiecarecono_obj,a,2)
f[7,3] = array(zombiedoor_obj,a,1)
f[7,4] = array(icezombie_obj,a,2)

f[8,0] = array(zombiemolotov_obj,a,1)

f[9,0] = array(zombiecarecono_obj,a,1)
f[9,1] = array(zombiedoor_obj,a,2)

f[10,0] = array(zombiecarecubo_obj,a,1)
f[10,1] = array(zomtorch_obj,a,1)

f[11,0] = array(zomtorch_obj,a,1)
f[11,1] = array(trashcanzombie_obj,a,1)

f[12,0] = array(icezombie_obj,a,2)
f[12,1] = array(zombiemolotov_obj,a,1)

f[13,0] = array(icezombie_obj,a,1)
f[13,1] = array(zombiecarecubo_obj,a,2)
f[13,2] = array(trashcanzombie_obj,a,1)

//wave 2
f[14,0] = array(zabanderado_obj,array(f3),1)
f[14,1] = array(zombieheadbox_obj,a,1)
f[14,2] = array(zombiecarecono_obj,a,3)
f[14,3] = array(zombiedoor_obj,a,2)
f[14,4] = array(trashcanzombie_obj,a,1)
f[14,5] = array(zombiemolotov_obj,a,1)
f[14,6] = array(zomtorch_obj,a,2)
f[14,7] = array(icezombie_obj,a,2)
f[14,8] = array(zombiecarecubo_obj,a,2)

f[15,0] = array(trashcanzombie_obj,a,2)
f[15,1] = array(zombiecarecono_obj,a,1)

f[16,0] = array(zombiedoor_obj,a,2)
f[16,1] = array(trashcanzombie_obj,a,1)

f[17,0] = array(zombiecarecono_obj,a,1)
f[17,1] = array(zomtorch_obj,a,2)
f[17,2] = array(icezombie_obj,a,1)

f[18,0] = array(zombiemolotov_obj,a,2)
f[18,1] = array(zombieheadbox_obj,a,1)
f[18,2] = array(zombiecarecubo_obj,a,1)

f[19,0] = array(trashcanzombie_obj,a,1)
f[19,1] = array(icezombie_obj,a,2)
f[19,2] = array(zombiedoor_obj,a,2)

//wave 2
f[20,0] = array(zabanderado_obj,array(f3),1)
f[20,1] = array(zombieheadbox_obj,a,1)
f[20,2] = array(zombiecarecono_obj,a,1)
f[20,3] = array(zombiedoor_obj,a,2)
f[20,4] = array(trashcanzombie_obj,a,2)
f[20,5] = array(icezombie_obj,a,2)
f[20,6] = array(zombiemolotov_obj,a,2)
f[20,7] = array(zomtorch_obj,a,3)
f[20,8] = array(zombiecarecubo_obj,a,2)