//To edit level
pt=12//Grace time
fn=15//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 21"
lvl_en="Level 21"

//To edit prize
sprite=nota_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=22//level number
money=100//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=nota_rm//what room go to after passing the level

zombie_preview(zombie1_obj,3)
zombie_preview(imp_obj,2)
zombie_preview(zombieheadbox_obj,2)
zombie_preview(zombiecarecono_obj,3)
zombie_preview(zombiecarecubo_obj,3)
zombie_preview(zombielector_obj,2)
zombie_preview(zombiesecta1_obj,4) 

wf[10]=1
wf[fn-1]=2


f[0,0] = array(zombie1_obj,a,1)

f[1,0] = array(zombie1_obj,a,2)

f[2,0] = array(imp_obj,a,1)
f[2,1] = array(zombie1_obj,a,1)

f[3,0] = array(zombieheadbox_obj,a,1)
f[3,1] = array(imp_obj,a,2)

f[4,0] = array(zombieheadbox_obj,a,1)
f[4,1] = array(zombie1_obj,a,1)
f[4,2] = array(imp_obj,a,1)

f[5,0] = array(zombiesecta1_obj,a,1)
f[5,1] = array(zombie1_obj,a,2)

f[6,0] = array(zombielector_obj,a,1)
f[6,1] = array(zombie1_obj,a,2)
f[6,2] = array(imp_obj,a,1)

f[7,0] = array(zombiesecta1_obj,a,1)
f[7,1] = array(zombie1_obj,a,2)
f[7,2] = array(zombiecarecono_obj,a,1)

f[8,0] = array(zombiecarecubo_obj,a,1)
f[8,1] = array(zombie1_obj,a,1)

f[9,0] = array(zombieheadbox_obj,a,2)
f[9,1] = array(zombielector_obj,a,1)

//wave 1
f[10,0] = array(zabanderado_obj,array(f3),1)
f[10,1] = array(zombiecarecubo_obj,a,2)
f[10,2] = array(zombieheadbox_obj,a,3)
f[10,3] = array(zombiecarecono_obj,a,2)
f[10,4] = array(zombielector_obj,a,2)
f[10,5] = array(zombie1_obj,a,3)
f[10,6] = array(zombiesecta1_obj,a,2)

f[11,0] = array(zombiecarecono_obj,a,1)
f[11,1] = array(zombielector_obj,a,2)
f[11,1] = array(zombie1_obj,a,1)

f[12,0] = array(zombiesecta1_obj,a,1)
f[12,1] = array(zombiecarecono_obj,a,2)

f[13,0] = array(zombiecarecubo_obj,a,1)
f[13,1] = array(zombiecarecono_obj,a,2)
f[13,2] = array(zombielector_obj,a,1)

//final wave
f[14,0] = array(zabanderado_obj,array(f3),1)
f[14,1] = array(zombiecarecubo_obj,a,2)
f[14,2] = array(zombiesecta1_obj,a,2)
f[14,3] = array(zombielector_obj,a,2)
f[14,4] = array(zombiecarecono_obj,a,2)
f[14,5] = array(zombieheadbox_obj,a,2)
f[14,6] = array(zombie1_obj,a,4)
