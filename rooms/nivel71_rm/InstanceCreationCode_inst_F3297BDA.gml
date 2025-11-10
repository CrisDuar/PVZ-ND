//To edit level
pt=30//Grace time
fn=22//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 71"
lvl_en="Level 71"
//To edit prize
sprite=nota_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=72//level number
money=200//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=nota_rm//what room go to after passing the level

zombie_preview(zombie1_obj,3)
zombie_preview(zombieheadbox_obj,1)
zombie_preview(zombiecarecubo_obj,2)

zombie_preview(zombiepole_obj,1)
zombie_preview(zombiecop_obj,3)
zombie_preview(zombieglobo_obj,2)
zombie_preview(zombierocket_obj,1)
zombie_preview(ghost_obj,2)

wf[9]=1
wf[15]=1
wf[fn-1]=2

f[0,0] = array(zombie1_obj,a,1)

f[1,0] = array(zombie1_obj,a,1)

f[2,0] = array(zombie1_obj,a,1)

f[3,0] = array(zombieheadbox_obj,a,1)

f[4,0] = array(zombiepole_obj,a,1)

f[5,0] = array(zombieheadbox_obj,a,1)
f[5,1] = array(zombie1_obj,a,1)

f[6,0] = array(zombiepole_obj,a,1)
f[6,1] = array(zombie1_obj,a,1)

f[7,0] = array(ghost_obj,a,1)

f[8,0] = array(zombieheadbox_obj,a,2)
f[8,1] = array(zombie1_obj,a,1)

//wave 2
f[9,0] = array(zabanderado_obj,array(f3),1)
f[9,1] = array(zombie1_obj,a,3)
f[9,2] = array(zombieheadbox_obj,a,1)
f[9,3] = array(zombiecarecubo_obj,a,1)
f[9,4] = array(ghost_obj,a,1)
f[9,5] = array(zombiepole_obj,a,1)

f[10,0] = array(zombieheadbox_obj,a,1)

f[11,0] = array(zombieglobo_obj,a,1)
f[11,1] = array(zombiecarecubo_obj,a,1)

f[12,0] = array(ghost_obj,a,1)
f[12,1] = array(zombieheadbox_obj,a,2)

f[13,0] = array(zombiecop_obj,a,1)

f[14,0] = array(zombiepole_obj,a,2)
f[14,1] = array(zombieglobo_obj,a,1)

//wave 2
f[15,0] = array(zabanderado_obj,array(f3),1)
f[15,1] = array(zombieheadbox_obj,a,3)
f[15,2] = array(zombiecarecubo_obj,a,1)
f[15,3] = array(ghost_obj,a,2)
f[15,4] = array(zombiepole_obj,a,2)
f[15,5] = array(zombieglobo_obj,a,2)
f[15,6] = array(zombiecop_obj,a,1)

f[16,0] = array(zombierocket_obj,a,1)

f[17,0] = array(zombiecop_obj,a,2)
f[17,1] = array(zombiepole_obj,a,1)

f[18,0] = array(zombieglobo_obj,a,1)
f[18,1] = array(zombiecarecubo_obj,a,1)
f[18,2] = array(zombie1_obj,a,2)

f[19,0] = array(ghost_obj,a,2)
f[19,1] = array(zombierocket_obj,a,2)
f[19,2] = array(zombieheadbox_obj,a,1)

f[20,0] = array(zombieheadbox_obj,a,2)

//wave 2
f[21,0] = array(zabanderado_obj,array(f3),1)
f[21,1] = array(zombiecop_obj,a,1)
f[21,2] = array(zombieheadbox_obj,a,3)
f[21,3] = array(zombiecarecubo_obj,a,1)
f[21,4] = array(zombierocket_obj,a,2)
f[21,5] = array(zombiepole_obj,a,2)
f[21,6] = array(ghost_obj,a,2)
f[21,7] = array(zombieglobo_obj,a,2)
