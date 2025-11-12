//To edit level
pt=6//Grace time
fn=17//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel difícil 3-4"
lvl_en="Hard level 3-4"

//To edit prize
sprite=bolsa_monedas_spr//prize sprite
prizevar="levelhard3"//prize variable to modify
lvl=4//level number
money=500//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=hardmode_pool_rm//what room go to after passing the level

//Rows
f1=152
f2=236
f3=339
f4=422
f5=527
f6=615

a=array(f1,f2,f3,f4,f5,f6)
w=array(f3,f4)
b=array(f1,f2,f5,f6)

zombie_preview(z_zombie_obj,2)
zombie_preview(z_conehead_obj,2)
zombie_preview(z_buckethead_obj,2)

zombie_preview(z_snorkel_obj,2)
zombie_preview(z_protesterleader_obj,2)
zombie_preview(z_skeleton_obj,2)
zombie_preview(z_allstar_oj,2)


wf[6]=1
wf[11]=1
wf[fn-1]=2


f[0,0] = array(z_zombie_obj,b,1)

f[1,0] = array(z_zombie_obj,b,1)

f[2,0] = array(z_conehead_obj,b,1)
f[2,1] = array(z_zombie_obj,b,1)

f[3,0] = array(z_zombie_obj,b,1)
f[3,1] = array(z_conehead_obj,b,2)

f[4,0] = array(z_zombie_obj,b,2)
f[4,1] = array(z_buckethead_obj,b,1)

f[5,0] = array(z_snorkel_obj,w,1)
f[5,1] = array(z_zombie_obj,w,2)

//wave 1
f[6,0] = array(z_snorkel_obj,w,3)
f[6,1] = array(z_flag_obj,array(f3),1)
f[6,2] = array(z_buckethead_obj,a,2)
f[6,3] = array(z_conehead_obj,a,3)
f[6,4] = array(z_zombie_obj,a,3)

f[7,0] = array(z_skeleton_obj,a,1)

f[8,0] = array(z_snorkel_obj,w,2)
f[8,1] = array(z_buckethead_obj,a,3)
f[8,2] = array(z_conehead_obj,a,1)

f[9,0] = array(z_protesterleader_obj,a,1)
f[9,1] = array(z_skeleton_obj,a,2)
f[9,2] = array(z_conehead_obj,a,2)

f[10,0] = array(z_snorkel_obj,w,2)
f[10,1] = array(z_skeleton_obj,a,2)
f[10,1] = array(z_buckethead_obj,a,1)

//wave 2
f[11,0] = array(z_rally_obj,array(f3),1)
f[11,1] = array(z_buckethead_obj,a,2)
f[11,2] = array(z_conehead_obj,a,2)
f[11,3] = array(z_zombie_obj,a,3)
f[11,4] = array(z_skeleton_obj,a,2)
f[11,5] = array(z_snorkel_obj,w,2)

f[12,0] = array(z_allstar_oj,a,1)

f[13,0] = array(z_skeleton_obj,a,2)
f[13,1] = array(z_protesterleader_obj,a,1)
f[13,2] = array(z_conehead_obj,a,1)

f[14,0] = array(z_snorkel_obj,w,2)
f[14,1] = array(z_buckethead_obj,a,2)
f[14,2] = array(z_skeleton_obj,a,3)

f[15,0] = array(z_skeleton_obj,a,2)
f[15,1] = array(z_snorkel_obj,w,1)
f[15,2] = array(z_protesterleader_obj,a,2)
f[15,3] = array(z_conehead_obj,a,2)

//wave 3
f[16,0] = array(z_rally_obj,array(f3),1)
f[16,1] = array(z_buckethead_obj,a,3)
f[16,2] = array(z_conehead_obj,a,2)
f[16,3] = array(z_zombie_obj,a,4)
f[16,4] = array(z_snorkel_obj,w,2)
f[16,5] = array(z_protesterleader_obj,a,1)
f[16,6] = array(z_allstar_oj,a,2)
