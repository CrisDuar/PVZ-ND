//To edit level
pt=6//Grace time
fn=20//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 25"
lvl_en="Level 25"
//To edit prize
sprite=newcostume_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=26//level number
money=300//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level

zombie_preview(z_torch_obj,2)
zombie_preview(z_zombie_obj,2)
zombie_preview(z_headbox_obj,1)
zombie_preview(z_conehead_obj,2)
zombie_preview(z_buckethead_obj,2)
zombie_preview(z_statue_obj,3)
zombie_preview(z_newspaper_obj,2)
zombie_preview(z_necromancer_obj,2)
zombie_preview(z_skeleton_obj,2)
zombie_preview(z_allstar_oj,3)

wf[7]=1
wf[13]=1
wf[fn-1]=2


f[0,0] = array(z_zombie_obj,a,1)

f[1,0] = array(z_zombie_obj,a,1)

f[2,0] = array(z_headbox_obj,a,1)

f[3,0] = array(z_conehead_obj,a,1)

f[4,0] = array(z_conehead_obj,a,1)
f[4,1] = array(z_zombie_obj,a,2)

f[5,0] = array(z_conehead_obj,a,2)
f[5,1] = array(z_zombie_obj,a,1)

f[6,0] = array(z_headbox_obj,a,2)
f[6,1] = array(z_statue_obj,a,2)

//wave 1
f[7,0] = array(z_flag_obj,array(f3),1)
f[7,1] = array(z_zombie_obj,a,2)
f[7,2] = array(z_torch_obj,a,2)
f[7,3] = array(z_statue_obj,a,4)
f[7,4] = array(z_conehead_obj,a,3)
f[7,5] = array(z_headbox_obj,a,2)

f[8,0] = array(z_allstar_oj,a,1)

f[9,0] = array(z_newspaper_obj,a,1)
f[9,1] = array(z_buckethead_obj,a,1)
f[9,2] = array(z_torch_obj,a,2)

f[10,0] = array(z_skeleton_obj,a,2)
f[10,1] = array(z_statue_obj,a,2)

f[11,0] = array(z_buckethead_obj,a,1)
f[11,1] = array(z_necromancer_obj,a,2)
f[11,2] = array(z_newspaper_obj,a,1)
f[11,3] = array(z_statue_obj,a,3)

f[12,0] = array(z_skeleton_obj,a,2)
f[12,1] = array(z_buckethead_obj,a,1)
f[12,2] = array(z_torch_obj,a,2)

//wave 2
f[13,0] = array(z_flag_obj,array(f3),1)
f[13,1] = array(z_zombie_obj,a,2)
f[13,2] = array(z_newspaper_obj,a,2)
f[13,3] = array(z_skeleton_obj,a,2)
f[13,4] = array(z_necromancer_obj,a,2)
f[13,5] = array(z_allstar_oj,a,3)
f[13,6] = array(z_buckethead_obj,a,3)
f[13,7] = array(z_conehead_obj,a,3)

f[14,0] = array(z_newspaper_obj,a,1)
f[14,1] = array(z_buckethead_obj,a,2)

f[15,0] = array(z_newspaper_obj,a,1)

f[16,0] = array(z_allstar_oj,array(f1),1)
f[16,1] = array(z_skeleton_obj,array(f2),2)
f[16,2] = array(z_allstar_oj,array(f3),1)
f[16,3] = array(z_skeleton_obj,array(f4),2)
f[16,4] = array(z_allstar_oj,array(f5),1)

f[17,0] = array(z_conehead_obj,a,2)

f[18,0] = array(z_buckethead_obj,a,1)

//final wave
f[19,0] = array(z_rally_obj,array(f3),1)
f[19,1] = array(z_torch_obj,a,2)
f[19,2] = array(z_newspaper_obj,a,2)
f[19,3] = array(z_skeleton_obj,a,4)
f[19,4] = array(z_necromancer_obj,a,3)
f[19,5] = array(z_statue_obj,a,6)
f[19,6] = array(z_allstar_oj,a,2)
f[19,7] = array(z_buckethead_obj,a,3)
f[19,8] = array(z_conehead_obj,a,2)
