//To edit level
pt=6//Grace time
fn=20//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel difícil 1-3"
lvl_en="Hard level 1-3"
//To edit prize
sprite=menubirasol1_spr//prize sprite
prizevar="levelhard1"//prize variable to modify
lvl=3//level number
money=100//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level

zombie_preview(z_paperthrower_obj,3)
zombie_preview(z_headbox_obj,1)
zombie_preview(z_buckethead_obj,3)
zombie_preview(z_conehead_obj,2)
zombie_preview(z_screendoor_obj,3)
zombie_preview(z_gardener_obj,3)

wf[6]=1
wf[13]=1
wf[fn-1]=2


f[0,0] = array(z_headbox_obj,a,1)

f[1,0] = array(z_headbox_obj,a,2)

f[2,0] = array(z_headbox_obj,a,1)
f[2,1] = array(z_paperthrower_obj,a,1)

f[3,0] = array(z_conehead_obj,a,1)
f[3,1] = array(z_headbox_obj,a,1)

f[4,0] = array(z_conehead_obj,a,1)
f[4,1] = array(z_paperthrower_obj,a,1)
f[4,2] = array(z_headbox_obj,a,1)

f[5,0] = array(z_screendoor_obj,a,1)
f[5,1] = array(z_paperthrower_obj,a,1)

//wave 1
f[6,0] = array(z_flag_obj,array(f3),1)
f[6,1] = array(z_screendoor_obj,a,3)
f[6,2] = array(z_paperthrower_obj,a,3)
f[6,3] = array(z_headbox_obj,a,3)
f[6,4] = array(z_conehead_obj,a,2)

f[7,0] = array(z_paperthrower_obj,a,1)

f[8,0] = array(z_conehead_obj,a,2)
f[8,1] = array(z_screendoor_obj,a,1)
f[8,2] = array(z_paperthrower_obj,a,1)

f[9,0] = array(z_conehead_obj,a,1)
f[9,1] = array(z_gardener_obj,a,1)
f[9,2] = array(z_buckethead_obj,a,1)

f[10,0] = array(z_headbox_obj,a,2)
f[10,1] = array(z_gardener_obj,a,2)

f[11,0] = array(z_screendoor_obj,a,1)
f[11,1] = array(z_conehead_obj,a,2)

f[12,0] = array(z_screendoor_obj,a,2)
f[12,1] = array(z_conehead_obj,a,2)
f[12,2] = array(z_paperthrower_obj,a,3)

//wave 2
f[13,0] = array(z_flag_obj,array(f3),1)
f[13,1] = array(z_buckethead_obj,a,4)
f[13,2] = array(z_screendoor_obj,a,4)
f[13,3] = array(z_paperthrower_obj,a,4)
f[13,4] = array(z_headbox_obj,a,3)
f[13,4] = array(z_conehead_obj,a,2)

f[14,0] = array(z_buckethead_obj,a,1)

f[15,0] = array(z_buckethead_obj,a,1)
f[15,1] = array(z_gardener_obj,a,2)

f[16,0] = array(z_screendoor_obj,a,2)
f[16,1] = array(z_zombie_obj,a,3)

f[17,0] = array(z_screendoor_obj,a,1)
f[17,1] = array(z_paperthrower_obj,a,2)

f[18,0] = array(z_gardener_obj,a,2)
f[18,1] = array(z_screendoor_obj,a,2)
f[18,2] = array(z_conehead_obj,a,2)

//final wave
f[19,0] = array(z_rally_obj,array(f3),1)
f[19,1] = array(z_buckethead_obj,a,3)
f[19,2] = array(z_screendoor_obj,a,2)
f[19,3] = array(z_conehead_obj,a,3)
f[19,4] = array(z_paperthrower_obj,a,4)
f[19,5] = array(z_headbox_obj,a,2)
f[19,6] = array(z_zombie_obj,a,4)