//To edit level
pt=12//Grace time
fn=12//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 16"
lvl_en="Level 16"

//To edit prize
sprite=menusetasolar1_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=17//level number
money=100//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level

zombie_preview(zombie1_obj,2)
zombie_preview(imp_obj,4)
zombie_preview(zombieheadbox_obj,2)
zombie_preview(zombiecarecono_obj,2)
zombie_preview(zombiedoor_obj,2)

wf[fn-1]=2


f[0,0] = array(zombie1_obj,a,1)

f[1,0] = array(zombie1_obj,a,1)

f[2,0] = array(imp_obj,a,1)

f[3,0] = array(imp_obj,a,1)
f[3,1] = array(zombieheadbox_obj,a,1)

f[4,0] = array(zombiecarecono_obj,a,1)

f[5,0] = array(zombiecarecono_obj,a,1)
f[5,1] = array(imp_obj,a,1)

f[6,0] = array(zombiedoor_obj,a,1)

f[7,0] = array(zombieheadbox_obj,a,2)
f[7,1] = array(zombie1_obj,a,1)

f[8,0] = array(imp_obj,a,2)
f[8,1] = array(zombie1_obj,a,2)

f[9,0] = array(zombiecarecono_obj,a,2)
f[9,1] = array(zombiedoor_obj,a,1)

f[10,0] = array(zombiecarecono_obj,a,2)
f[10,1] = array(imp_obj,a,3)

//final wave
f[11,0] = array(zombieheadbox_obj,a,2)
f[11,1] = array(zabanderado_obj,array(f3),1)
f[11,2] = array(imp_obj,a,2)
f[11,3] = array(zombiecarecono_obj,a,2)
f[11,4] = array(zombiedoor_obj,a,1)
f[11,5] = array(zombie1_obj,a,2)
