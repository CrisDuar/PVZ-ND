//To edit level
pt=9//Grace time
fn=20//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel difícil 1-1"
lvl_en="Hard level 1-1"
//To edit prize
sprite=bolsa_monedas_spr//prize sprite
prizevar="levelhard1"//prize variable to modify
lvl=1//level number
money=300//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=hardmode_day_rm//what room go to after passing the level

zombie_preview(zombie1_obj,1)
zombie_preview(zombiepapsho_obj,3)
zombie_preview(zombieheadbox_obj,1)
zombie_preview(zombiecarecubo_obj,3)
zombie_preview(zombiecarecono_obj,2)
zombie_preview(zombiedoor_obj,3)
zombie_preview(zombiejardinero_obj,3)

wf[6]=1
wf[13]=1
wf[fn-1]=2


f[0,0] = array(zombie1_obj,a,1)

f[1,0] = array(zombie1_obj,a,1)

f[2,0] = array(zombieheadbox_obj,a,1)
f[2,1] = array(zombie1_obj,a,1)

f[3,0] = array(zombieheadbox_obj,a,2)

f[4,0] = array(zombiecarecono_obj,a,1)

f[5,0] = array(zombiecarecono_obj,a,1)
f[5,1] = array(zombiepapsho_obj,a,1)

//wave 1
f[6,0] = array(zombieheadbox_obj,a,2)
f[6,1] = array(zabanderado_obj,array(f3),1)
f[6,2] = array(zombiecarecono_obj,a,3)
f[6,3] = array(zombie1_obj,a,1)
f[6,4] = array(zombiedoor_obj,a,1)

f[7,0] = array(zombieheadbox_obj,a,1)

f[8,0] = array(zombiejardinero_obj,a,1)
f[8,1] = array(zombiedoor_obj,a,1)

f[9,0] = array(zombiecarecubo_obj,a,2)
f[9,1] = array(zombiepapsho_obj,a,1)

f[10,0] = array(zombiecarecubo_obj,a,1)
f[10,1] = array(zombiejardinero_obj,a,2)

f[11,0] = array(zombiedoor_obj,a,2)
f[11,1] = array(zombiecarecono_obj,a,2)

f[12,0] = array(zombiedoor_obj,a,2)
f[12,1] = array(zombiecarecono_obj,a,3)
f[12,2] = array(zombiepapsho_obj,a,2)

//wave 2
f[13,0] = array(zombieheadbox_obj,a,1)
f[13,1] = array(zabanderado_obj,array(f3),1)
f[13,2] = array(zombiedoor_obj,a,2)
f[13,3] = array(zombiecarecono_obj,a,2)
f[13,4] = array(zombie1_obj,a,1)
f[13,5] = array(zombiecarecubo_obj,a,2)
f[13,6] = array(zombiejardinero_obj,a,2)
f[13,7] = array(zombiepapsho_obj,a,3)

f[14,0] = array(zombieheadbox_obj,a,1)

f[15,0] = array(zombiejardinero_obj,a,2)
f[15,1] = array(zombiepapsho_obj,a,1)

f[16,0] = array(zombiecarecubo_obj,a,2)
f[16,1] = array(zombieheadbox_obj,a,1)

f[17,0] = array(zombiecarecubo_obj,a,3)
f[17,1] = array(zombiejardinero_obj,a,2)

f[18,0] = array(zombiejardinero_obj,a,1)
f[18,1] = array(zombiedoor_obj,a,2)
f[18,2] = array(zombiepapsho_obj,a,2)

//final wave
f[19,0] = array(zombieheadbox_obj,a,1)
f[19,1] = array(zabanderadohard_obj,array(f3),1)
f[19,2] = array(zombiedoor_obj,a,2)
f[19,3] = array(zombiecarecono_obj,a,2)
f[19,4] = array(zombie1_obj,a,1)
f[19,5] = array(zombiecarecubo_obj,a,3)
f[19,6] = array(zombiejardinero_obj,a,2)
f[19,7] = array(zombiepapsho_obj,a,3)