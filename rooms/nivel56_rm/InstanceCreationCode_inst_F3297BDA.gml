//To edit level
pt=6//Grace time
fn=15//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 56"
lvl_en="Level 56"
//To edit prize
sprite=planternslot_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=57//level number
money=200//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level

zombie_preview(zombie1_obj,2)
zombie_preview(zombiecarecono_obj,3)
zombie_preview(futbolzombi_obj,2)
zombie_preview(zombiepapsho_obj,2)
zombie_preview(skeleton_obj,2)
zombie_preview(zombiepole_obj,2)
zombie_preview(zombiecajita_obj,2)

wf[7]=1
wf[fn-1]=2

f[0,0] = array(zombie1_obj,a,1)

f[1,0] = array(zombie1_obj,a,2)

f[2,0] = array(zombiecarecono_obj,a,1)
f[2,1] = array(zombie1_obj,a,2)

f[3,0] = array(zombiecarecono_obj,a,2)
f[3,1] = array(zombie1_obj,a,1)

f[4,0] = array(zombiepapsho_obj,a,1)
f[4,1] = array(zombiecarecono_obj,a,2)

f[5,0] = array(zombie1_obj,a,2)
f[5,1] = array(zombiecarecono_obj,a,2)

f[6,0] = array(skeleton_obj,a,1)
f[6,1] = array(zombie1_obj,a,2)

//wave 1
f[7,0] = array(zabanderado_obj,array(f3),1)
f[7,1] = array(zombie1_obj,a,4)
f[7,2] = array(zombiecarecono_obj,a,3)
f[7,3] = array(skeleton_obj,a,2)
f[7,4] = array(zombiecajita_obj,a,1)
f[7,5] = array(zombiepapsho_obj,a,3)
f[7,5] = array(zombiepole_obj,a,1)

f[8,0] = array(zombiecarecono_obj,a,1)
f[8,1] = array(zombiecajita_obj,a,1)

f[9,0] = array(zombiepole_obj,a,2)
f[9,1] = array(skeleton_obj,a,2)
f[9,2] = array(zombiepapsho_obj,a,1)

f[10,0] = array(zombiepapsho_obj,a,3)
f[10,1] = array(futbolzombi_obj,a,2)

f[11,0] = array(zombiecajita_obj,a,2)
f[11,1] = array(zombiecarecono_obj,a,3)
f[11,2] = array(zombie1_obj,a,2)

f[12,0] = array(zombiepole_obj,a,2)
f[12,1] = array(futbolzombi_obj,a,1)
f[12,2] = array(zombiecarecono_obj,a,3)

f[13,0] = array(zombiecarecono_obj,a,3)
f[13,1] = array(zombiepapsho_obj,a,2)

//wave 2
f[14,0] = array(zabanderado_obj,array(f3),1)
f[14,1] = array(zombiecarecono_obj,a,3)
f[14,2] = array(zombie1_obj,a,3)
f[14,3] = array(zombiepapsho_obj,a,3)
f[14,4] = array(futbolzombi_obj,a,1)
f[14,5] = array(zombiepole_obj,a,3)
f[14,5] = array(skeleton_obj,a,3)
f[14,6] = array(zombiecajita_obj,a,2)
