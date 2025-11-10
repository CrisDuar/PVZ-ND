//To edit level
pt=12//Grace time
fn=16//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 70"
lvl_en="Level 70"
//To edit prize
sprite=nota_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=71//level number
money=200//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=nota_rm//what room go to after passing the level

zombie_preview(imp_obj,1)
zombie_preview(zombiecarecono_obj,1)
zombie_preview(zombiecarecubo_obj,2)

zombie_preview(zombielector_obj,2)
zombie_preview(zompanel_obj,2)
zombie_preview(zombiepole_obj,1)
zombie_preview(zombiecop_obj,1)

wf[9]=1
wf[fn-1]=2

f[0,0] = array(imp_obj,a,1)

f[1,0] = array(imp_obj,a,1)

f[2,0] = array(imp_obj,a,2)

f[3,0] = array(zombiecarecono_obj,a,1)
f[3,1] = array(imp_obj,a,1)

f[4,0] = array(zombiecarecono_obj,a,2)
f[4,1] = array(zombielector_obj,a,1)

f[5,0] = array(zombiecarecono_obj,a,2)
f[5,1] = array(imp_obj,a,2)

f[6,0] = array(zombielector_obj,a,2)
f[6,1] = array(imp_obj,a,2)

f[7,0] = array(zombiepole_obj,a,1)
f[7,1] = array(zombiecarecono_obj,a,2)

f[8,0] = array(zombiecarecubo_obj,a,2)
f[8,1] = array(imp_obj,a,3)

//wave 2
f[9,0] = array(zabanderado_obj,array(f3),1)
f[9,1] = array(imp_obj,a,3)
f[9,2] = array(zombiecarecono_obj,a,3)
f[9,3] = array(zombiecarecubo_obj,a,2)
f[9,4] = array(zombielector_obj,a,2)
f[9,5] = array(zombiepole_obj,a,4)

f[10,0] = array(zombiecop_obj,a,1)

f[11,0] = array(imp_obj,a,2)
f[11,1] = array(zombielector_obj,a,1)
f[11,2] = array(zombiecarecubo_obj,a,1)

f[12,0] = array(zompanel_obj,a,1)
f[12,1] = array(zombiecarecono_obj,a,2)

f[13,0] = array(zombiecarecubo_obj,a,2)
f[13,1] = array(zombiecop_obj,a,1)
f[13,2] = array(zombiecarecono_obj,a,1)

f[14,0] = array(zombiepole_obj,a,2)
f[14,1] = array(zompanel_obj,a,2)

//wave 2
f[15,0] = array(zabanderado_obj,array(f3),1)
f[15,1] = array(zombiecop_obj,a,2)
f[15,2] = array(zombiecarecono_obj,a,3)
f[15,3] = array(zombiecarecubo_obj,a,2)
f[15,4] = array(imp_obj,a,4)
f[15,5] = array(zombiepole_obj,a,1)
f[15,6] = array(zombielector_obj,a,2)
