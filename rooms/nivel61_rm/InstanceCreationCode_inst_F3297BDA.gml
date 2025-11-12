//To edit level
pt=16//Grace time
fn=15//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 61"
lvl_en="Level 61"
//To edit prize
sprite=moreslot_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=62//level number
money=500//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level
horde_ttl_hp=0.3
zombie_preview(z_zombie_obj,2)
zombie_preview(z_conehead_obj,3)
zombie_preview(z_buckethead_obj,3)
zombie_preview(z_allstar_oj,2)
zombie_preview(z_rocket_obj,2)
zombie_preview(z_jackinthebox_obj,2)
zombie_preview(z_ghost_obj,1)

wf[7]=1
wf[fn-1]=2

f[0,0] = array(z_zombie_obj,a,1)

f[1,0] = array(z_zombie_obj,a,1)

f[2,0] = array(z_conehead_obj,a,1)
f[2,1] = array(z_zombie_obj,a,1)

f[3,0] = array(z_conehead_obj,a,1)
f[3,1] = array(z_zombie_obj,a,1)

f[4,0] = array(z_ghost_obj,a,1)
f[4,1] = array(z_buckethead_obj,a,1)

f[5,0] = array(z_conehead_obj,a,2)

f[6,0] = array(z_buckethead_obj,a,2)

//wave 1
f[7,0] = array(z_flag_obj,array(f3),1)
f[7,1] = array(z_zombie_obj,a,2)
f[7,2] = array(z_conehead_obj,a,2)
f[7,3] = array(z_buckethead_obj,a,2)
f[7,4] = array(z_ghost_obj,a,3)
f[7,5] = array(z_rocket_obj,a,2)

f[8,0] = array(z_conehead_obj,a,2)
f[8,1] = array(z_zombie_obj,a,1)

f[9,0] = array(z_jackinthebox_obj,a,1)
f[9,1] = array(z_rocket_obj,a,2)
f[9,2] = array(z_conehead_obj,a,2)

f[10,0] = array(z_ghost_obj,a,2)
f[10,1] = array(z_rocket_obj,a,1)
f[10,2] = array(z_buckethead_obj,a,1)

f[11,0] = array(z_ghost_obj,a,2)
f[11,1] = array(z_allstar_oj,a,1)

f[12,0] = array(z_buckethead_obj,a,2)
f[12,0] = array(z_jackinthebox_obj,a,2)

f[13,0] = array(z_jackinthebox_obj,a,2)
f[13,1] = array(z_conehead_obj,a,1)
f[13,2] = array(z_zombie_obj,a,1)

f[14,0] = array(z_rocket_obj,a,3)
f[14,1] = array(z_allstar_oj,a,2)

f[15,0] = array(z_ghost_obj,a,3)
f[15,1] = array(z_buckethead_obj,a,2)

//wave 2
f[14,0] = array(z_flag_obj,array(f3),1)
f[14,1] = array(z_zombie_obj,a,1)
f[14,2] = array(z_conehead_obj,a,2)
f[14,3] = array(z_buckethead_obj,a,2)
f[14,4] = array(z_ghost_obj,a,3)
f[14,5] = array(z_rocket_obj,a,2)
f[14,6] = array(z_jackinthebox_obj,a,2)
f[14,6] = array(z_allstar_oj,a,1)
