//To edit level
pt=12//Grace time
fn=12//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 6"
lvl_en="Level 6"

//To edit prize
sprite=menusnpea1_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=7//level number
money=100//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level

zombie_preview(zombie1_obj,3)
zombie_preview(zombiepapsho_obj,3)
zombie_preview(zombieheadbox_obj,2)
zombie_preview(zombiestatua_obj,2)
zombie_preview(zombiecarecono_obj,3)

wf[7]=1
wf[fn-1]=2


f[0,0] = array(zombie1_obj,a,1)

f[1,0] = array(zombie1_obj,a,1)

f[2,0] = array(zombieheadbox_obj,a,1)

f[3,0] = array(zombie1_obj,a,1)
f[3,1] = array(zombieheadbox_obj,a,1)

f[4,0] = array(zombiecarecono_obj,a,1)

f[5,0] = array(zombiestatua_obj,a,1)
f[5,1] = array(zombie1_obj,a,2)

f[6,0] = array(zombiepapsho_obj,a,1)
f[6,1] = array(zombiecarecono_obj,a,2)

//wave 1
f[7,0] = array(zombieheadbox_obj,a,2)
f[7,1] = array(zabanderado_obj,array(f3),1)
f[7,2] = array(zombiestatua_obj,a,2)
f[7,3] = array(zombiecarecono_obj,a,2)
f[7,4] = array(zombie1_obj,a,2)

f[8,0] = array(zombiecarecono_obj,a,1)
f[8,1] = array(zombiepapsho_obj,a,2)

f[9,0] = array(zombiecarecono_obj,a,2)
f[9,1] = array(zombieheadbox_obj,a,1)

f[10,0] = array(zombie1_obj,a,1)
f[10,1] = array(zombiepapsho_obj,a,2)
f[10,2] = array(zombiecarecono_obj,a,2)

//final wave
f[11,0] = array(zombieheadbox_obj,a,2)
f[11,1] = array(zabanderado_obj,array(f3),1)
f[11,2] = array(zombiepapsho_obj,a,2)
f[11,3] = array(zombiecarecono_obj,a,2)
f[11,4] = array(zombie1_obj,a,3)
f[11,5] = array(zombiestatua_obj,a,3)