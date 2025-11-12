//To edit level
pt=12//Grace time
fn=20//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 47"
lvl_en="Level 47"

//To edit prize
sprite=moresun_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=48//level number
money=300//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level

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

zombie_preview(z_duckytube_obj,2)
zombie_preview(z_conehead_obj,2)
zombie_preview(z_buckethead_obj,2)

zombie_preview(z_snorkel_obj,2)
zombie_preview(z_rocket_obj,3)
zombie_preview(z_trashcan_obj,2)
zombie_preview(z_icehead_obj,2)

zombie_preview(z_zomboni_obj,2)
zombie_preview(z_protesterleader_obj,2)
zombie_preview(z_balloon_obj,2)

zombie_preview(beachballdrop_obj,1)


wf[7]=1
wf[11]=1
wf[15]=1
wf[fn-1]=2


f[0,0] = array(z_duckytube_obj,b,1)

f[1,0] = array(z_duckytube_obj,b,1)

f[2,0] = array(z_duckytube_obj,b,2)

f[3,0] = array(z_duckytube_obj,b,1)
f[3,1] = array(z_conehead_obj,b,1)

f[4,0] = array(z_conehead_obj,b,2)

f[5,0] = array(z_icehead_obj,a,2)
f[5,1] = array(beachball_obj,a,3)
f[5,2] = array(z_duckytube_obj,a,2)

f[6,0] = array(z_buckethead_obj,a,1)
f[6,1] = array(z_conehead_obj,a,2)
f[6,2] = array(z_snorkel_obj,w,1)

//wave 2
f[7,0] = array(z_flag_obj,w,1)
f[7,1] = array(z_icehead_obj,a,1)
f[7,2] = array(z_conehead_obj,a,1)
f[7,3] = array(z_rocket_obj,a,1)
f[7,4] = array(beachball_obj,a,3)

f[8,0] = array(z_trashcan_obj,w,1)
f[8,1] = array(z_buckethead_obj,a,2)

f[9,0] = array(z_protesterleader_obj,a,1)
f[9,1] = array(z_duckytube_obj,a,2)
f[9,2] = array(z_conehead_obj,a,2)

f[10,0] = array(z_balloon_obj,a,1)
f[10,1] = array(z_conehead_obj,a,3)

//wave 3
f[11,0] = array(z_flag_obj,array(f3),1)
f[11,1] = array(z_buckethead_obj,a,2)
f[11,2] = array(z_trashcan_obj,a,2)
f[11,3] = array(z_balloon_obj,a,1)
f[11,4] = array(z_snorkel_obj,w,2)
f[11,5] = array(beachball_obj,a,4)
f[11,6] = array(z_protesterleader_obj,a,1)

f[12,0] = array(z_icehead_obj,b,2)
f[12,1] = array(z_rocket_obj,a,3)

f[13,0] = array(z_zomboni_obj,b,1)

f[14,0] = array(z_duckytube_obj,w,2)
f[14,1] = array(z_icehead_obj,a,2)
f[14,2] = array(beachball_obj,a,3)

//wave 4
f[15,0] = array(z_duckytube_obj,a,3)
f[15,1] = array(z_flag_obj,array(f3),1)
f[15,2] = array(z_buckethead_obj,a,2)
f[15,3] = array(z_trashcan_obj,a,2)
f[15,4] = array(z_rocket_obj,a,3)
f[15,5] = array(z_snorkel_obj,w,2)
f[15,6] = array(z_icehead_obj,a,2)

f[16,0] = array(z_buckethead_obj,a,2)
f[16,1] = array(beachball_obj,a,3)
f[16,2] = array(z_zomboni_obj,b,1)

f[17,0] = array(z_conehead_obj,a,2)
f[17,1] = array(z_rocket_obj,a,1)
f[17,2] = array(z_icehead_obj,a,2)

f[18,0] = array(z_protesterleader_obj,a,1)

//final wave
f[19,0] = array(z_icehead_obj,a,2)
f[19,1] = array(z_flag_obj,w,1)
f[19,2] = array(z_trashcan_obj,a,1)
f[19,3] = array(z_conehead_obj,a,3)
f[19,4] = array(z_buckethead_obj,a,2)
f[19,5] = array(z_zomboni_obj,b,1)
f[19,6] = array(z_duckytube_obj,w,3)
f[19,7] = array(z_rocket_obj,a,4)
f[19,8] = array(z_protesterleader_obj,a,1)
f[19,9] = array(beachball_obj,a,3)
f[19,10] = array(z_snorkel_obj,w,2)
f[19,11] = array(z_balloon_obj,a,2)
