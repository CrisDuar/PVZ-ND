//To edit level
pt=1//Grace time
fn=13//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=true//Is an infinite level?
infinite_loop = 4
lvl_es="Nivel 73"
lvl_en="Level 73"
//To edit prize
sprite=bolsa_monedas_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=73//level number
money=1000//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=level4_sl_rm//what room go to after passing the level
progressbar=false
horde_ttl_hp=0
/*
wf[3]=1
wf[7]=1
wf[11]=1
wf[15]=1
wf[fn-1]=2
*/
f[0,0] = array(imp_obj,a,3)

f[1,0] = array(zombie1_obj,a,1)
f[1,1] = array(imp_obj,a,2)

f[2,0] = array(zombie1_obj,a,2)
f[2,1] = array(zombiecarecono_obj,a,1)

f[3,0] = array(zombiecarecono_obj,a,1)
f[3,1] = array(zombie1_obj,a,2)

f[4,0] = array(zombieheadbox_obj,a,2)
f[4,1] = array(zombiecarecubo_obj,a,1)

f[5,0] = array(zombiecajita_obj,a,2)
f[5,1] = array(imp_obj,a,2)
f[5,2] = array(icezombie_obj,a,2)

f[6,0] = array(zombiecarecubo_obj,a,2)
f[6,1] = array(icezombie_obj,a,2)
f[6,2] = array(zombiecarecono_obj,a,2)

f[7,0] = array(zombiedoor_obj,a,2)
f[7,1] = array(zombie1_obj,a,4)
f[7,2] = array(zombiepole_obj,a,1)

f[8,0] = array(zombiecarecono_obj,a,2)
f[8,1] = array(zombiemago_obj,a,2)

f[9,0] = array(skeleton_obj,a,2)
f[9,1] = array(zombieheadbox_obj,a,2)
f[9,2] = array(icezombie_obj,a,2)

f[10,0] = array(zombiecoffin_obj,a,1)
f[10,1] = array(zombie1_obj,a,2)

f[11,0] = array(zombiepole_obj,a,2)
f[11,1] = array(zombiecarecono_obj,a,3)
f[11,2] = array(zombiecajita_obj,a,2)

f[12,0] = array(zombiecoffin_obj,a,1)
f[12,1] = array(zombiecarecubo_obj,a,2)
