//To edit level
pt=12//Grace time
fn=14//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 64"
lvl_en="Level 64"
//To edit prize
sprite=bloverslot_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=65//level number
money=200//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level

zombie_preview(imp_obj,2)
zombie_preview(zombiecarecono_obj,2)
zombie_preview(zombiecarecubo_obj,2)

zombie_preview(zombiejardinero_obj,2)
zombie_preview(zombiestatua_obj,2)
zombie_preview(ghost_obj,2)
zombie_preview(zombiepole_obj,1)

wf[7]=1
wf[fn-1]=2

f[0,0] = array(imp_obj,a,1)

f[1,0] = array(imp_obj,a,1)

f[2,0] = array(zombiecarecono_obj,a,1)

f[3,0] = array(zombiecarecono_obj,a,1)
f[3,1] = array(imp_obj,a,1)

f[4,0] = array(zombiestatua_obj,a,2)
f[4,1] = array(zombiecarecono_obj,a,2)

f[5,0] = array(zombiecarecubo_obj,a,1)

f[6,0] = array(zombiecarecono_obj,a,2)
f[6,1] = array(ghost_obj,a,1)

//wave 2
f[7,0] = array(zabanderado_obj,array(f3),1)
f[7,1] = array(imp_obj,a,2)
f[7,2] = array(zombiecarecono_obj,a,1)
f[7,3] = array(zombiecarecubo_obj,a,1)
f[7,4] = array(ghost_obj,a,2)
f[7,5] = array(zombiestatua_obj,a,3)

f[8,0] = array(zombiejardinero_obj,a,2)
f[8,1] = array(zombiecarecono_obj,a,1)

f[9,0] = array(zombiecarecubo_obj,a,2)
f[9,0] = array(imp_obj,a,2)

f[10,0] = array(zombiecarecono_obj,a,2)
f[10,1] = array(zombiepole_obj,a,2)
f[10,2] = array(zombiestatua_obj,a,2)

f[11,0] = array(zombiejardinero_obj,a,2)
f[11,1] = array(zombiecarecubo_obj,a,1)

f[12,0] = array(ghost_obj,a,3)
f[12,1] = array(zombiepole_obj,a,2)
f[12,2] = array(zombiestatua_obj,a,3)


//wave 2
f[13,0] = array(zabanderado_obj,array(f3),1)
f[13,1] = array(imp_obj,a,5)
f[13,2] = array(zombiecarecono_obj,a,2)
f[13,3] = array(zombiecarecubo_obj,a,3)
f[13,4] = array(zombiestatua_obj,a,2)
f[13,5] = array(zombiejardinero_obj,a,2)
f[13,6] = array(ghost_obj,a,2)
f[13,7] = array(zombiepole_obj,a,3)
