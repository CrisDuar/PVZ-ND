//To edit level
pt=15//Grace time
fn=24//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel difícil 4-3"
lvl_en="Hard level 4-3"
//To edit prize
sprite=nightshadeslot_spr//prize sprite
prizevar="levelhard4"//prize variable to modify
lvl=3//level number
money=1000//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level

wf[10]=1
wf[15]=1
wf[19]=1
wf[fn-1]=2

zombie_preview(imp_obj,3)
zombie_preview(zombieheadbox_obj,2)
zombie_preview(zombiecarecubo_obj,2)

zombie_preview(zombiepapsho_obj,2)
zombie_preview(zombiecajita_obj,2)
zombie_preview(zompanel_obj,2)
zombie_preview(ghost_obj,2)
zombie_preview(zombiecop_obj,2)
zombie_preview(zomboni_obj,2)

f[0,0] = array(imp_obj,a,1)

f[1,0] = array(imp_obj,a,2)

f[2,0] = array(imp_obj,a,3)

f[3,0] = array(zombieheadbox_obj,a,2)
f[3,1] = array(imp_obj,a,1)

f[4,0] = array(imp_obj,a,2)
f[4,1] = array(zombieheadbox_obj,a,1)

f[5,0] = array(zombieheadbox_obj,a,2)
f[5,1] = array(zombiepapsho_obj,a,1)

f[6,0] = array(zombiecarecubo_obj,a,1)
f[6,1] = array(imp_obj,a,2)
f[6,2] = array(zombieheadbox_obj,a,1)

f[7,0] = array(zombieheadbox_obj,a,2)
f[7,1] = array(zombiepapsho_obj,a,2)

f[8,0] = array(zombiecajita_obj,a,1)
f[8,1] = array(imp_obj,a,2)

f[9,0] = array(zombieheadbox_obj,a,2)
f[9,1] = array(zombiecarecubo_obj,a,2)

//wave 1
f[10,0] = array(zabanderado_obj,a,1)
f[10,1] = array(zombiecarecubo_obj,a,2)
f[10,2] = array(zombieheadbox_obj,a,2)
f[10,3] = array(imp_obj,a,4)
f[10,4] = array(zombiecajita_obj,a,1)
f[10,5] = array(zombiepapsho_obj,a,2)

f[11,0] = array(zompanel_obj,a,2)
f[11,1] = array(zombieheadbox_obj,a,2)

f[12,0] = array(imp_obj,a,2)
f[12,1] = array(zombiecajita_obj,a,2)
f[12,2] = array(zombieheadbox_obj,a,2)

f[13,0] = array(zombiecarecubo_obj,a,2)
f[13,1] = array(zombiepapsho_obj,a,3)
f[13,2] = array(imp_obj,a,3)

f[14,0] = array(ghost_obj,a,1)
f[14,1] = array(zombiepapsho_obj,a,2)
f[14,2] = array(zompanel_obj,a,2)

//wave 2
f[15,0] = array(zabanderadohard_obj,array(f3),1)
f[15,1] = array(zombiecarecubo_obj,a,2)
f[15,2] = array(zombieheadbox_obj,a,2)
f[15,3] = array(ghost_obj,a,2)
f[15,4] = array(imp_obj,a,4)
f[15,5] = array(zompanel_obj,a,2)
f[15,6] = array(ghost_obj,a,2)
f[15,7] = array(zombiecajita_obj,a,2)

f[16,0] = array(imp_obj,a,4)
f[16,1] = array(zombieheadbox_obj,a,2)
f[16,2] = array(zombiepapsho_obj,a,2)
f[16,3] = array(ghost_obj,a,2)

f[17,0] = array(zomboni_obj,a,1)
f[17,1] = array(zombieheadbox_obj,a,3)

f[18,0] = array(zompanel_obj,a,2)
f[18,1] = array(ghost_obj,a,1)
f[18,2] = array(zombiecop_obj,a,1)

//wave 3
f[19,0] = array(zabanderado_obj,array(f3),1)
f[19,1] = array(zombiecarecubo_obj,a,3)
f[19,2] = array(zombieheadbox_obj,a,2)
f[19,3] = array(imp_obj,a,2)
f[19,4] = array(zombiepapsho_obj,a,3)
f[19,5] = array(zompanel_obj,a,2)
f[19,6] = array(ghost_obj,a,2)
f[19,7] = array(zombiecop_obj,a,1)

f[20,0] = array(zombiecarecubo_obj,a,2)
f[20,1] = array(zomboni_obj,a,1)
f[20,2] = array(imp_obj,a,4)

f[21,0] = array(zombiecop_obj,a,1)
f[21,1] = array(zompanel_obj,a,2)
f[21,2] = array(zombieheadbox_obj,a,3)

f[22,0] = array(zombiecarecubo_obj,a,1)

//wave 4
f[23,0] = array(zabanderadohard_obj,array(f3),1)
f[23,1] = array(zombiecarecubo_obj,a,1)
f[23,2] = array(zombieheadbox_obj,a,3)
f[23,3] = array(imp_obj,a,5)
f[23,4] = array(zombiepapsho_obj,a,3)
f[23,5] = array(zombiecajita_obj,a,2)
f[23,6] = array(zompanel_obj,a,2)
f[23,7] = array(ghost_obj,a,2)
f[23,8] = array(zomboni_obj,a,1)
f[23,9] = array(zombiecop_obj,a,1)
