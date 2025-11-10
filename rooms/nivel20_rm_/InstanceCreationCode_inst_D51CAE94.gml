//To edit level
pt=12//Grace time
fn=15//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 20"
lvl_en="Level 20"

//To edit prize
sprite=menufume1_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=21//level number
money=100//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level

zombie_preview(zombie1_obj,1)
zombie_preview(zombiepapsho_obj,2)
zombie_preview(zombieheadbox_obj,2)
zombie_preview(zombiepole_obj,2)
zombie_preview(zombiecarecubo_obj,2)
zombie_preview(zomtorch_obj,2) 

wf[fn-1]=2


f[0,0] = array(zombie1_obj,a,1)

f[1,0] = array(zombie1_obj,a,1)

f[2,0] = array(zombie1_obj,a,1)

f[3,0] = array(zombieheadbox_obj,a,1)
f[3,1] = array(zombie1_obj,a,1)

f[4,0] = array(zombieheadbox_obj,a,1)

f[5,0] = array(zomtorch_obj,a,1)

f[6,0] = array(zombie1_obj,a,2)
f[6,1] = array(zombieheadbox_obj,a,1)

f[7,0] = array(zombiecarecubo_obj,a,1)

f[8,0] = array(zomtorch_obj,a,1)
f[8,1] = array(zombieheadbox_obj,a,2)

f[9,0] = array(zombiepole_obj,a,1)

f[10,0] = array(zombiepapsho_obj,a,1)
f[10,1] = array(zombie1_obj,a,3)

f[11,0] = array(zombiepole_obj,a,1)
f[11,1] = array(zombieheadbox_obj,a,2)
f[11,2] = array(zombie1_obj,a,2)

f[12,0] = array(zombiepapsho_obj,a,2)
f[12,1] = array(zombiecarecubo_obj,a,2)
f[12,2] = array(zombieheadbox_obj,a,1)

f[13,0] = array(zombiepapsho_obj,a,1)
f[13,1] = array(zomtorch_obj,a,1)
f[13,2] = array(zombieheadbox_obj,a,1)

//final wave
f[14,0] = array(zabanderado_obj,array(f3),1)
f[14,1] = array(zomtorch_obj,a,2)
f[14,2] = array(zombiepole_obj,a,2)
f[14,3] = array(zombiepapsho_obj,a,2)
f[14,4] = array(zombiecarecubo_obj,a,2)
f[14,5] = array(zombieheadbox_obj,a,2)
