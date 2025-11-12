//To edit level
pt=20//Grace time
fn=9//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 35"
lvl_en="Level 35"

//To edit prize
sprite=narcisoslot_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=36//level number
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

zombie_preview(z_headbox_obj,2)
zombie_preview(z_conehead_obj,1)
zombie_preview(z_buckethead_obj,2)

zombie_preview(z_paperthrower_obj,3)
zombie_preview(z_icehead_obj,4)
zombie_preview(z_statue_obj,2)


wf[fn-1]=2


f[0,0] = array(z_headbox_obj,b,1)

f[1,0] = array(z_headbox_obj,b,1)

f[2,0] = array(z_icehead_obj,b,1)
f[2,1] = array(z_headbox_obj,b,1)

f[3,0] = array(z_conehead_obj,b,1)
f[3,1] = array(z_headbox_obj,b,1)

f[4,0] = array(z_icehead_obj,a,2)
f[4,1] = array(z_conehead_obj,a,1)
f[4,2] = array(z_statue_obj,b,2)

f[5,0] = array(z_icehead_obj,a,1)
f[5,1] = array(z_paperthrower_obj,a,2)
f[5,2] = array(z_conehead_obj,a,1)

f[6,0] = array(z_headbox_obj,a,2)
f[6,1] = array(z_paperthrower_obj,a,2)
f[6,2] = array(z_statue_obj,a,3)

f[7,0] = array(z_icehead_obj,a,2)
f[7,1] = array(z_buckethead_obj,a,1)
f[7,1] = array(z_conehead_obj,a,2)

//wave 1
f[8,0] = array(z_flag_obj,array(f3,f4),1)
f[8,1] = array(z_icehead_obj,a,2)
f[8,2] = array(z_buckethead_obj,a,2)
f[8,3] = array(z_paperthrower_obj,a,3)
f[8,4] = array(z_statue_obj,a,4)
f[8,5] = array(z_conehead_obj,a,2)
