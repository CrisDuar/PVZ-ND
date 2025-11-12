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

zombie_preview(z_zombie_obj,3)
zombie_preview(z_buckethead_obj,3)
zombie_preview(z_conehead_obj,2)
zombie_preview(z_rocket_obj,2)
zombie_preview(z_gardener_obj,3)

wf[fn-1]=2

f[0,0] = array(z_zombie_obj,a,1)

f[1,0] = array(z_zombie_obj,a,2)

f[2,0] = array(z_conehead_obj,a,1)

f[3,0] = array(z_zombie_obj,a,1)
f[3,1] = array(z_conehead_obj,a,1)

f[4,0] = array(z_gardener_obj,a,1)
f[4,1] = array(z_conehead_obj,a,1)

f[5,0] = array(z_buckethead_obj,a,1)

f[6,0] = array(z_rocket_obj,a,1)

f[7,0] = array(z_buckethead_obj,a,2)
f[7,1] = array(z_gardener_obj,a,2)

f[8,0] = array(z_conehead_obj,a,2)
f[8,1] = array(z_gardener_obj,a,1)

f[9,0] = array(z_conehead_obj,a,2)
f[9,1] = array(z_gardener_obj,a,1)
f[9,2] = array(z_rocket_obj,a,2)

f[10,0] = array(z_buckethead_obj,a,1)
f[10,1] = array(z_conehead_obj,a,1)
f[10,2] = array(z_zombie_obj,a,3)

//wave 2
f[11,0] = array(z_flag_obj,array(f3),1)
f[11,1] = array(z_zombie_obj,a,1)
f[11,2] = array(z_conehead_obj,a,2)
f[11,3] = array(z_buckethead_obj,a,2)
f[11,4] = array(z_rocket_obj,a,3)
f[11,5] = array(z_gardener_obj,a,2)