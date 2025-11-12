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
f[0,0] = array(z_imp_obj,a,3)

f[1,0] = array(z_zombie_obj,a,1)
f[1,1] = array(z_imp_obj,a,2)

f[2,0] = array(z_zombie_obj,a,2)
f[2,1] = array(z_conehead_obj,a,1)

f[3,0] = array(z_conehead_obj,a,1)
f[3,1] = array(z_zombie_obj,a,2)

f[4,0] = array(z_headbox_obj,a,2)
f[4,1] = array(z_buckethead_obj,a,1)

f[5,0] = array(z_jackinthebox_obj,a,2)
f[5,1] = array(z_imp_obj,a,2)
f[5,2] = array(z_icehead_obj,a,2)

f[6,0] = array(z_buckethead_obj,a,2)
f[6,1] = array(z_icehead_obj,a,2)
f[6,2] = array(z_conehead_obj,a,2)

f[7,0] = array(z_screendoor_obj,a,2)
f[7,1] = array(z_zombie_obj,a,4)
f[7,2] = array(z_polevaulter_obj,a,1)

f[8,0] = array(z_conehead_obj,a,2)
f[8,1] = array(z_magician_obj,a,2)

f[9,0] = array(z_skeleton_obj,a,2)
f[9,1] = array(z_headbox_obj,a,2)
f[9,2] = array(z_icehead_obj,a,2)

f[10,0] = array(z_coffin_obj,a,1)
f[10,1] = array(z_zombie_obj,a,2)

f[11,0] = array(z_polevaulter_obj,a,2)
f[11,1] = array(z_conehead_obj,a,3)
f[11,2] = array(z_jackinthebox_obj,a,2)

f[12,0] = array(z_coffin_obj,a,1)
f[12,1] = array(z_buckethead_obj,a,2)
