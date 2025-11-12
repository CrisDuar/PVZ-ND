//To edit level
pt=12//Grace time
fn=20//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 57"
lvl_en="Level 57"
//To edit prize
sprite=garlicslot_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=58//level number
money=200//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level

zombie_preview(z_zombie_obj,2)
zombie_preview(z_headbox_obj,3)
zombie_preview(z_buckethead_obj,2)
zombie_preview(z_torch_obj,2)
zombie_preview(z_paperthrower_obj,2)
zombie_preview(z_gardener_obj,2)
zombie_preview(z_doctor_obj,2)
zombie_preview(caja_obj,2)

wf[9]=1
wf[14]=1
wf[fn-1]=2

f[0,0] = array(z_zombie_obj,a,1)

f[1,0] = array(z_zombie_obj,a,2)

f[2,0] = array(z_conehead_obj,a,1)

f[3,0] = array(z_conehead_obj,a,2)

f[4,0] = array(cajaspawn_obj,a,1)
f[4,1] = array(z_conehead_obj,a,1)
f[4,2] = array(z_zombie_obj,a,1)

f[5,0] = array(z_zombie_obj,a,2)

f[6,0] = array(z_buckethead_obj,a,1)

f[7,0] = array(z_paperthrower_obj,a,1)
f[7,1] = array(z_conehead_obj,a,1)

f[8,0] = array(z_buckethead_obj,a,1)

//wave 1
f[9,0] = array(z_flag_obj,array(f3),1)
f[9,1] = array(z_zombie_obj,a,2)
f[9,2] = array(z_conehead_obj,a,3)
f[9,3] = array(z_buckethead_obj,a,1)
f[9,4] = array(z_paperthrower_obj,a,1)
f[9,5] = array(cajaspawn_obj,a,3)

f[10,0] = array(z_doctor_obj,a,1)
f[10,1] = array(z_conehead_obj,a,1)

f[11,0] = array(z_buckethead_obj,a,1)
f[11,1] = array(z_paperthrower_obj,a,2)

f[12,0] = array(z_gardener_obj,a,2)
f[12,1] = array(z_torch_obj,a,1)
f[12,2] = array(z_conehead_obj,a,1)

f[13,0] = array(z_conehead_obj,a,1)
f[13,1] = array(z_paperthrower_obj,a,2)
f[13,2] = array(cajaspawn_obj,a,3)

//wave 2
f[14,0] = array(z_flag_obj,array(f3),1)
f[14,1] = array(z_zombie_obj,a,3)
f[14,2] = array(z_conehead_obj,a,1)
f[14,3] = array(z_buckethead_obj,a,2)
f[14,4] = array(z_paperthrower_obj,a,3)
f[14,5] = array(z_gardener_obj,a,3)
f[14,6] = array(z_torch_obj,a,2)
f[14,7] = array(z_doctor_obj,a,1)

f[15,0] = array(z_conehead_obj,a,1)
f[15,1] = array(z_torch_obj,a,2)

f[16,0] = array(z_doctor_obj,a,1)

f[17,0] = array(z_gardener_obj,a,2)
f[17,1] = array(z_paperthrower_obj,a,2)

f[18,0] = array(z_doctor_obj,a,2)
f[18,1] = array(z_paperthrower_obj,a,2)

//wave 2
f[19,0] = array(z_flag_obj,array(f3),1)
f[19,1] = array(cajaspawn_obj,a,3)
f[19,2] = array(z_zombie_obj,a,2)
f[19,3] = array(z_conehead_obj,a,2)
f[19,4] = array(z_buckethead_obj,a,3)
f[19,5] = array(z_paperthrower_obj,a,3)
f[19,6] = array(z_torch_obj,a,2)
f[19,7] = array(z_doctor_obj,a,2)
