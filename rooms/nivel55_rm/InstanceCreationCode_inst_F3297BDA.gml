//To edit level
pt=12//Grace time
fn=15//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 55"
lvl_en="Level 55"
//To edit prize
sprite=levicottonslot_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=56//level number
money=200//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level

zombie_preview(z_zombie_obj,2)
zombie_preview(z_conehead_obj,2)
zombie_preview(z_buckethead_obj,2)
zombie_preview(z_coffin_obj,1)
zombie_preview(z_duckytube_obj,2)
zombie_preview(z_jackinthebox_obj,2)
zombie_preview(z_statue_obj,2)

wf[9]=1
wf[fn-1]=2

f[0,0] = array(z_zombie_obj,a,1)

f[1,0] = array(z_zombie_obj,a,1)

f[2,0] = array(z_conehead_obj,a,1)
f[2,1] = array(z_zombie_obj,a,1)

f[3,0] = array(z_statue_obj,a,2)
f[3,1] = array(z_zombie_obj,a,2)

f[4,0] = array(z_conehead_obj,a,2)
f[4,1] = array(z_buckethead_obj,a,1)

f[5,0] = array(z_zombie_obj,a,1)
f[5,1] = array(z_conehead_obj,a,2)
f[5,2] = array(z_duckytube_obj,a,1)

f[6,0] = array(z_jackinthebox_obj,a,1)
f[6,1] = array(z_headbox_obj,a,1)

f[7,0] = array(z_conehead_obj,a,1)
f[7,1] = array(z_statue_obj,a,3)

f[8,0] = array(z_jackinthebox_obj,a,1)

//wave 1
f[9,0] = array(z_flag_obj,array(f3),1)
f[9,1] = array(z_zombie_obj,a,2)
f[9,2] = array(z_conehead_obj,a,2)
f[9,3] = array(z_buckethead_obj,a,1)
f[9,4] = array(z_jackinthebox_obj,a,2)
f[9,5] = array(z_statue_obj,a,4)
f[9,6] = array(z_coffin_obj,a,1)
f[9,7] = array(z_duckytube_obj,a,2)

f[10,0] = array(z_conehead_obj,a,2)

f[11,0] = array(z_conehead_obj,a,1)
f[11,1] = array(z_duckytube_obj,a,2)

f[12,0] = array(z_statue_obj,a,3)
f[12,1] = array(z_buckethead_obj,a,2)

f[13,0] = array(z_coffin_obj,a,2)
f[13,1] = array(z_jackinthebox_obj,a,1)
f[13,2] = array(z_conehead_obj,a,2)

//wave 2
f[14,0] = array(z_flag_obj,array(f3),1)
f[14,1] = array(z_conehead_obj,a,2)
f[14,2] = array(z_buckethead_obj,a,3)
f[14,3] = array(z_jackinthebox_obj,a,2)
f[14,4] = array(z_statue_obj,a,3)
f[14,5] = array(z_duckytube_obj,a,3)