//To edit level
pt=9//Grace time
fn=15//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel difícil 1-2"
lvl_en="Hard level 1-2"
//To edit prize
sprite=bolsa_monedas_spr//prize sprite
prizevar="levelhard1"//prize variable to modify
lvl=2//level number
money=300//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=hardmode_day_rm//what room go to after passing the level

zombie_preview(zombie1_obj,2)
zombie_preview(zombiepapsho_obj,2)
zombie_preview(zombiepole_obj,5)
zombie_preview(zombiecarecubo_obj,2)
zombie_preview(zombiecarecono_obj,2)
zombie_preview(zombiestatua_obj,4)

wf[7]=1
//wf[13]=1
wf[fn-1]=2


f[0,0] = array(zombie1_obj,a,1)

f[1,0] = array(zombie1_obj,a,1)

f[2,0] = array(zombie1_obj,a,2)

f[3,0] = array(zombiecarecono_obj,a,1)

f[4,0] = array(zombiepole_obj,a,1)
f[4,1] = array(zombiestatua_obj,a,2)

f[5,0] = array(zombiepapsho_obj,a,2)
f[5,1] = array(zombiecarecono_obj,a,1)

f[6,0] = array(zombiepole_obj,a,2)
f[6,1] = array(zombiestatua_obj,a,1)
f[6,2] = array(zombiepapsho_obj,a,1)

//wave 1
f[7,0] = array(zabanderado_obj,array(f3),1)
f[7,1] = array(zombiepapsho_obj,a,2)
f[7,2] = array(zombiepole_obj,a,3)
f[7,3] = array(zombiecarecono_obj,a,1)
f[7,4] = array(zombie1_obj,a,1)
f[7,5] = array(zombiestatua_obj,a,4)
f[7,6] = array(zombiecarecubo_obj,a,3)

f[8,0] = array(zombiepapsho_obj,a,2)

f[9,0] = array(zombiepole_obj,a,2)
f[9,1] = array(zombiepapsho_obj,a,1)

f[10,0] = array(zombiepapsho_obj,a,1)
f[10,1] = array(zombiestatua_obj,a,2)
f[10,2] = array(zombiecarecono_obj,a,2)

f[11,0] = array(zombiestatua_obj,a,3)
f[11,1] = array(zombiepole_obj,a,2)
f[11,2] = array(zombie1_obj,a,2)

f[12,0] = array(zombiestatua_obj,a,2)
f[12,1] = array(zombiecarecubo_obj,a,2)
f[12,2] = array(zombiepole_obj,a,2)

f[13,0] = array(zombiepole_obj,a,2)
f[13,1] = array(zombie1_obj,a,3)

//Final wave
f[14,0] = array(zabanderadohard_obj,array(f3),1)
f[14,1] = array(zombiepapsho_obj,a,3)
f[14,2] = array(zombiepole_obj,a,3)
f[14,3] = array(zombiecarecono_obj,a,1)
f[14,4] = array(zombie1_obj,a,1)
f[14,5] = array(zombiestatua_obj,a,3)
f[14,6] = array(zombiecarecubo_obj,a,2)
