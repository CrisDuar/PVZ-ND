//To edit level
pt=12//Grace time
fn=12//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 52"
lvl_en="Level 52"
//To edit prize
sprite=juncoslot_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=53//level number
money=100//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level

zombie_preview(zombie1_obj,3)
zombie_preview(zombiecarecubo_obj,3)
zombie_preview(zombiecarecono_obj,2)
zombie_preview(zombierocket_obj,2)
zombie_preview(zombiejardinero_obj,3)

wf[fn-1]=2

f[0,0] = array(zombie1_obj,a,1)

f[1,0] = array(zombie1_obj,a,2)

f[2,0] = array(zombiecarecono_obj,a,1)

f[3,0] = array(zombie1_obj,a,1)
f[3,1] = array(zombiecarecono_obj,a,1)

f[4,0] = array(zombiejardinero_obj,a,1)
f[4,1] = array(zombiecarecono_obj,a,1)

f[5,0] = array(zombiecarecubo_obj,a,1)

f[6,0] = array(zombierocket_obj,a,1)

f[7,0] = array(zombiecarecubo_obj,a,2)
f[7,1] = array(zombiejardinero_obj,a,2)

f[8,0] = array(zombiecarecono_obj,a,2)
f[8,1] = array(zombiejardinero_obj,a,1)

f[9,0] = array(zombiecarecono_obj,a,2)
f[9,1] = array(zombiejardinero_obj,a,1)
f[9,2] = array(zombierocket_obj,a,2)

f[10,0] = array(zombiecarecubo_obj,a,1)
f[10,1] = array(zombiecarecono_obj,a,1)
f[10,2] = array(zombie1_obj,a,3)

//wave 2
f[11,0] = array(zabanderado_obj,array(f3),1)
f[11,1] = array(zombie1_obj,a,1)
f[11,2] = array(zombiecarecono_obj,a,2)
f[11,3] = array(zombiecarecubo_obj,a,2)
f[11,4] = array(zombierocket_obj,a,3)
f[11,5] = array(zombiejardinero_obj,a,2)