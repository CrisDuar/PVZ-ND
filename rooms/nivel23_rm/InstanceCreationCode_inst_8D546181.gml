//To edit level
pt=12//Grace time
fn=16//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 23"
lvl_en="Level 23"

//To edit prize
sprite=menupeanut1_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=24//level number
money=100//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level

zombie_preview(z_imp_obj,1)
zombie_preview(z_zombie_obj,1)
zombie_preview(z_headbox_obj,2)
zombie_preview(z_buckethead_obj,2)
zombie_preview(z_skeleton_obj,3)
zombie_preview(z_necromancer_obj,2)
zombie_preview(z_statue_obj,2) 

wf[9]=1
wf[fn-1]=2


f[0,0] = array(z_zombie_obj,a,1)

f[1,0] = array(z_zombie_obj,a,1)

f[2,0] = array(z_imp_obj,a,1)
f[2,1] = array(z_headbox_obj,a,1)

f[3,0] = array(z_headbox_obj,a,2)

f[4,0] = array(z_skeleton_obj,a,1)
f[4,1] = array(z_statue_obj,a,2)

f[5,0] = array(z_headbox_obj,a,2)
f[5,1] = array(z_imp_obj,a,1)

f[6,0] = array(z_zombie_obj,a,2)
f[6,0] = array(z_necromancer_obj,a,1)

f[7,0] = array(z_buckethead_obj,a,1)

f[8,0] = array(z_skeleton_obj,a,1)
f[8,1] = array(z_zombie_obj,a,2)

//wave 1
f[9,0] = array(z_flag_obj,array(f3),1)
f[9,1] = array(z_zombie_obj,a,3)
f[9,2] = array(z_skeleton_obj,a,1)
f[9,3] = array(z_headbox_obj,a,2)
f[9,4] = array(z_necromancer_obj,a,1)
f[9,5] = array(z_imp_obj,a,3)
f[9,6] = array(z_buckethead_obj,a,2)
f[9,7] = array(z_statue_obj,a,2)

f[10,0] = array(z_headbox_obj,a,2)

f[11,0] = array(z_necromancer_obj,a,1)
f[11,1] = array(z_skeleton_obj,a,2)
f[11,2] = array(z_statue_obj,a,2)

f[12,0] = array(z_skeleton_obj,a,1)
f[12,1] = array(z_buckethead_obj,a,2)

f[13,0] = array(z_headbox_obj,a,2)
f[13,1] = array(z_necromancer_obj,a,1)

f[14,0] = array(z_buckethead_obj,a,1)
f[14,1] = array(z_statue_obj,a,2)

//final wave
f[15,0] = array(z_flag_obj,array(f3),1)
f[15,1] = array(z_skeleton_obj,a,2)
f[15,2] = array(z_necromancer_obj,a,2)
f[15,3] = array(z_zombie_obj,a,3)
f[15,4] = array(z_headbox_obj,a,2)
f[15,5] = array(z_buckethead_obj,a,2)
f[15,6] = array(z_statue_obj,a,3)
