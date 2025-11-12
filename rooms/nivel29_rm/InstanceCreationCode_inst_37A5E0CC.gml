//To edit level
pt=12//Grace time
fn=17//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 29"
lvl_en="Level 29"
//To edit prize
sprite=nota_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=30//level number
money=300//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=nota_rm//what room go to after passing the level

zombie_preview(z_imp_obj,2)
zombie_preview(z_zombie_obj,2)
zombie_preview(z_conehead_obj,2)
zombie_preview(z_buckethead_obj,2)
zombie_preview(z_paperthrower_obj,2)
zombie_preview(z_torch_obj,2)
zombie_preview(z_necromancer_obj,2)
zombie_preview(z_skeleton_obj,2)
zombie_preview(z_allstar_oj,2)

wf[8]=1
wf[fn-1]=2


f[0,0] = array(z_zombie_obj,a,1)

f[1,0] = array(z_imp_obj,a,1)

f[2,0] = array(z_zombie_obj,a,2)

f[3,0] = array(z_zombie_obj,a,1)
f[3,0] = array(z_imp_obj,a,2)

f[4,0] = array(z_conehead_obj,a,1)
f[4,1] = array(z_paperthrower_obj,a,1)

f[5,0] = array(z_conehead_obj,a,1)
f[5,1] = array(z_zombie_obj,a,2)

f[6,0] = array(z_skeleton_obj,a,1)
f[6,1] = array(z_imp_obj,a,2)

f[7,0] = array(z_conehead_obj,a,2)
f[7,1] = array(z_skeleton_obj,a,1)

//wave 1
f[8,0] = array(z_flag_obj,array(f3),1)
f[8,1] = array(z_zombie_obj,a,3)
f[8,2] = array(z_buckethead_obj,a,2)
f[8,3] = array(z_torch_obj,a,1)
f[8,4] = array(z_paperthrower_obj,a,2)
f[8,5] = array(z_necromancer_obj,a,1)
f[8,6] = array(z_skeleton_obj,a,2)
f[8,7] = array(z_conehead_obj,a,3)

f[9,0] = array(z_imp_obj,a,3)

f[10,0] = array(z_buckethead_obj,a,1)
f[10,1] = array(z_paperthrower_obj,a,2)

f[11,0] = array(z_torch_obj,a,1)
f[11,1] = array(z_allstar_oj,a,2)
f[11,1] = array(z_imp_obj,a,3)

f[12,0] = array(z_skeleton_obj,a,2)
f[12,1] = array(z_buckethead_obj,a,1)
f[12,2] = array(z_torch_obj,a,1)

f[13,0] = array(z_necromancer_obj,a,2)
f[13,1] = array(z_conehead_obj,a,2)
f[13,2] = array(z_zombie_obj,a,3)

f[14,0] = array(z_torch_obj,a,2)
f[14,1] = array(z_conehead_obj,a,2)
f[14,2] = array(z_paperthrower_obj,a,2)

f[15,0] = array(z_necromancer_obj,a,2)
f[15,1] = array(z_buckethead_obj,a,1)
f[15,1] = array(z_zombie_obj,a,3)

//wave 2
f[16,0] = array(z_flag_obj,array(f3),1)
f[16,1] = array(z_imp_obj,a,4)
f[16,2] = array(z_zombie_obj,a,3)
f[16,3] = array(z_torch_obj,a,2)
f[16,4] = array(z_paperthrower_obj,a,3)
f[16,5] = array(z_necromancer_obj,a,2)
f[16,6] = array(z_skeleton_obj,a,3)
f[16,7] = array(z_conehead_obj,a,2)
f[16,8] = array(z_buckethead_obj,a,3)
f[16,9] = array(z_allstar_oj,a,2)
