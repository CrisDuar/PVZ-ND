//To edit level
pt=12//Grace time
fn=16//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 43"
lvl_en="Level 43"

//To edit prize
sprite=melonslot_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=44//level number
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

zombie_preview(z_duckytube_obj,3)
zombie_preview(z_headbox_obj,2)
zombie_preview(z_buckethead_obj,2)

zombie_preview(z_gardener_obj,2)
zombie_preview(z_rocket_obj,2)
zombie_preview(z_solarpanel_obj,2)
zombie_preview(z_icehead_obj,2)
zombie_preview(z_trashcan_obj,2)
zombie_preview(beachballdrop_obj,3)

wf[fn-1]=2

f[0,0] = array(z_duckytube_obj,b,1)

f[1,0] = array(z_duckytube_obj,b,1)

f[2,0] = array(z_duckytube_obj,b,1)
f[2,1] = array(z_headbox_obj,b,1)

f[3,0] = array(z_headbox_obj,b,2)

f[4,0] = array(z_duckytube_obj,w,1)
f[4,1] = array(z_icehead_obj,a,1)

f[5,0] = array(z_icehead_obj,a,1)
f[5,1] = array(z_headbox_obj,a,2)
f[5,2] = array(beachball_obj,a,1)

f[6,0] = array(z_solarpanel_obj,b,1)
f[6,1] = array(z_gardener_obj,a,1)
f[6,2] = array(z_headbox_obj,a,1)

f[7,0] = array(z_buckethead_obj,a,1)
f[7,1] = array(z_gardener_obj,a,1)

f[8,0] = array(z_buckethead_obj,a,1)
f[8,1] = array(z_trashcan_obj,a,1)
f[8,2] = array(z_headbox_obj,a,1)

f[9,0] = array(z_gardener_obj,a,2)
f[9,1] = array(beachball_obj,a,3)
f[9,2] = array(z_solarpanel_obj,b,1)

f[10,0] = array(z_rocket_obj,a,2)
f[10,1] = array(z_buckethead_obj,a,1)
f[10,2] = array(beachball_obj,a,2)

f[11,0] = array(z_icehead_obj,a,2)
f[11,1] = array(z_trashcan_obj,a,2)
f[11,2] = array(z_headbox_obj,a,2)

f[12,0] = array(beachball_obj,a,2)
f[12,1] = array(z_rocket_obj,a,2)
f[12,2] = array(z_duckytube_obj,a,3)

f[13,0] = array(z_solarpanel_obj,b,1)
f[13,1] = array(z_buckethead_obj,a,2)
f[13,2] = array(z_headbox_obj,a,3)

f[14,0] = array(z_rocket_obj,a,3)
f[14,1] = array(z_duckytube_obj,a,2)
f[14,2] = array(z_solarpanel_obj,b,2)
f[14,3] = array(z_buckethead_obj,a,2)

//wave 2
f[15,0] = array(z_flag_obj,array(f3,f4),1)
f[15,1] = array(z_duckytube_obj,a,3)
f[15,2] = array(z_headbox_obj,a,3)
f[15,3] = array(z_buckethead_obj,a,2)
f[15,4] = array(z_gardener_obj,a,3)
f[15,5] = array(z_solarpanel_obj,b,2)
f[15,6] = array(z_icehead_obj,a,2)
f[15,7] = array(z_trashcan_obj,b,2)
f[15,8] = array(beachball_obj,b,5)
f[15,7] = array(z_rocket_obj,b,3)