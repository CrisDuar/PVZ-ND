//To edit level
pt=9//Grace time
fn=15//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel difícil 1-2"
lvl_en="Hard level 1-2"
//To edit prize
sprite=bolsa_monedas_spr//prize sprite
prizevar="levelhard1"//prize variable to modify
lvl=2//level number
money=300//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=hardmode_day_rm//what room go to after passing the level

zombie_preview(z_zombie_obj,2)
zombie_preview(z_paperthrower_obj,2)
zombie_preview(z_polevaulter_obj,5)
zombie_preview(z_buckethead_obj,2)
zombie_preview(z_conehead_obj,2)
zombie_preview(z_statue_obj,4)

wf[7]=1
//wf[13]=1
wf[fn-1]=2


f[0,0] = array(z_zombie_obj,a,1)

f[1,0] = array(z_zombie_obj,a,1)

f[2,0] = array(z_zombie_obj,a,2)

f[3,0] = array(z_conehead_obj,a,1)

f[4,0] = array(z_polevaulter_obj,a,1)
f[4,1] = array(z_statue_obj,a,2)

f[5,0] = array(z_paperthrower_obj,a,2)
f[5,1] = array(z_conehead_obj,a,1)

f[6,0] = array(z_polevaulter_obj,a,2)
f[6,1] = array(z_statue_obj,a,1)
f[6,2] = array(z_paperthrower_obj,a,1)

//wave 1
f[7,0] = array(z_flag_obj,array(f3),1)
f[7,1] = array(z_paperthrower_obj,a,2)
f[7,2] = array(z_polevaulter_obj,a,3)
f[7,3] = array(z_conehead_obj,a,1)
f[7,4] = array(z_zombie_obj,a,1)
f[7,5] = array(z_statue_obj,a,4)
f[7,6] = array(z_buckethead_obj,a,3)

f[8,0] = array(z_paperthrower_obj,a,2)

f[9,0] = array(z_polevaulter_obj,a,2)
f[9,1] = array(z_paperthrower_obj,a,1)

f[10,0] = array(z_paperthrower_obj,a,1)
f[10,1] = array(z_statue_obj,a,2)
f[10,2] = array(z_conehead_obj,a,2)

f[11,0] = array(z_statue_obj,a,3)
f[11,1] = array(z_polevaulter_obj,a,2)
f[11,2] = array(z_zombie_obj,a,2)

f[12,0] = array(z_statue_obj,a,2)
f[12,1] = array(z_buckethead_obj,a,2)
f[12,2] = array(z_polevaulter_obj,a,2)

f[13,0] = array(z_polevaulter_obj,a,2)
f[13,1] = array(z_zombie_obj,a,3)

//Final wave
f[14,0] = array(z_rally_obj,array(f3),1)
f[14,1] = array(z_paperthrower_obj,a,3)
f[14,2] = array(z_polevaulter_obj,a,3)
f[14,3] = array(z_conehead_obj,a,1)
f[14,4] = array(z_zombie_obj,a,1)
f[14,5] = array(z_statue_obj,a,3)
f[14,6] = array(z_buckethead_obj,a,2)
