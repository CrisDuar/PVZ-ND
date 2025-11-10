//To edit level
pt=3//Grace time
fn=15//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 37"
lvl_en="Level 37"

//To edit prize
sprite=bolsa_monedas_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=38//level number
money=500//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=level3_sl_rm//what room go to after passing the level
horde_ttl_hp=0.2
//Rows
f1=152
f2=236
f3=339
f4=422
f5=527
f6=615

a=array(f1,f2,f3,f4,f5,f6)

zombie_preview(zombie1_obj,2)
zombie_preview(zombiecarecubo_obj,3)
zombie_preview(zombiecarecono_obj,3)

zombie_preview(zombiepapsho_obj,3)
zombie_preview(zombiejardinero_obj,3)
zombie_preview(icezombie_obj,2)
zombie_preview(zombiebuzo_obj,2)
zombie_preview(beachballdrop_obj,3)

wf[7]=1
wf[fn-1]=2


f[0,0] = array(zombie1_obj,a,2)

f[1,0] = array(zombiecarecono_obj,a,3)
f[1,0] = array(zombie1_obj,a,1)

f[2,0] = array(zombiecarecono_obj,a,3)
f[2,1] = array(zombiepapsho_obj,a,2)

f[3,0] = array(zombiebuzo_obj,a,2)
f[3,1] = array(beachball_obj,a,4)
f[3,2] = array(zombiecarecubo_obj,a,1)

f[4,0] = array(zombiepapsho_obj,a,2)
f[4,1] = array(zombiecarecono_obj,a,3)
f[4,2] = array(zombiecarecubo_obj,a,2)

f[5,0] = array(zombiepapsho_obj,a,3)
f[5,1] = array(zombiebuzo_obj,a,3)
f[5,0] = array(icezombie_obj,a,2)

f[6,0] = array(zombiecarecubo_obj,a,3)
f[6,1] = array(icezombie_obj,a,2)

//wave 1
f[7,0] = array(zabanderado_obj,array(f3,f4),1)
f[7,1] = array(zombie1_obj,a,2)
f[7,2] = array(zombiecarecono_obj,a,4)
f[7,3] = array(zombiecarecubo_obj,a,3)
f[7,4] = array(beachball_obj,a,5)
f[7,5] = array(zombiebuzo_obj,a,4)
f[7,6] = array(icezombie_obj,a,3)
f[7,7] = array(zombiepapsho_obj,a,3)

f[8,0] = array(zombiecarecubo_obj,a,3)
f[8,1] = array(zombiejardinero_obj,a,2)

f[9,0] = array(zombiebuzo_obj,a,4)
f[9,1] = array(icezombie_obj,a,3)

f[10,0] = array(zombiecarecono_obj,a,4)
f[10,1] = array(zombiecarecubo_obj,a,2)
f[10,2] = array(zombiejardinero_obj,a,3)

f[11,0] = array(zombiebuzo_obj,a,3)
f[11,1] = array(icezombie_obj,a,2)
f[11,2] = array(zombiejardinero_obj,a,2)
f[11,3] = array(zombiecarecubo_obj,a,2)

f[12,0] = array(beachball_obj,a,4)
f[12,1] = array(zombiepapsho_obj,a,2)
f[12,2] = array(zombiecarecono_obj,a,4)

f[13,0] = array(beachball_obj,a,3)
f[13,1] = array(icezombie_obj,a,4)
f[13,2] = array(zombiejardinero_obj,a,2)

//wave 1
f[14,0] = array(zabanderado_obj,array(f3,f4),1)
f[14,1] = array(zombiecarecono_obj,a,4)
f[14,2] = array(zombiecarecubo_obj,a,5)
f[14,3] = array(zombiejardinero_obj,a,3)
f[14,4] = array(icezombie_obj,a,4)
f[14,5] = array(zombiebuzo_obj,a,5)
f[14,6] = array(beachball_obj,a,4)
f[14,7] = array(zombiepapsho_obj,a,4)
