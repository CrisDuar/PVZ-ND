//To edit level
pt=12//Grace time
fn=13//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 45"
lvl_en="Level 45"

//To edit prize
sprite=bolsa_monedas_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=46//level number
money=500//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=level3_sl_rm//what room go to after passing the level

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

zombie_preview(z_zombie_obj,3)
zombie_preview(z_conehead_obj,3)
zombie_preview(z_buckethead_obj,3)

zombie_preview(z_solarpanel_obj,2)
zombie_preview(z_balloon_obj,2)
zombie_preview(z_snorkel_obj,2)
zombie_preview(z_necromancer_obj,2)

wf[8]=1
wf[fn-1]=2

f[0,0] = array(z_zombie_obj,b,1)

f[1,0] = array(z_zombie_obj,b,1)

f[2,0] = array(z_zombie_obj,b,2)

f[3,0] = array(z_conehead_obj,b,1)
f[3,1] = array(z_zombie_obj,b,1)

f[4,0] = array(z_zombie_obj,w,1)

f[5,0] = array(z_solarpanel_obj,b,1)
f[5,1] = array(z_solarpanel_obj,a,2)

f[6,0] = array(z_buckethead_obj,a,1)
f[6,1] = array(z_conehead_obj,a,2)

f[7,0] = array(z_conehead_obj,a,2)
f[7,1] = array(z_snorkel_obj,w,1)

//wave 1
f[8,0] = array(z_flag_obj,array(f3,f4),1)
f[8,1] = array(z_solarpanel_obj,b,1)
f[8,2] = array(z_conehead_obj,a,2)
f[8,3] = array(z_buckethead_obj,a,1)
f[8,4] = array(z_balloon_obj,a,3)
f[8,5] = array(z_snorkel_obj,w,2)

f[9,0] = array(z_necromancer_obj,a,2)
f[9,1] = array(z_zombie_obj,a,3)

f[10,0] = array(z_solarpanel_obj,b,1)
f[10,1] = array(z_balloon_obj,a,2)
f[10,2] = array(z_conehead_obj,a,2)

f[11,0] = array(z_necromancer_obj,a,2)
f[11,1] = array(z_buckethead_obj,a,2)
f[11,2] = array(z_snorkel_obj,w,3)
f[11,3] = array(z_conehead_obj,a,1)
f[11,4] = array(z_zombie_obj,a,2)

//wave 3
f[12,0] = array(z_flag_obj,array(f3,f4),1)
f[12,1] = array(z_conehead_obj,a,4)
f[12,2] = array(z_buckethead_obj,a,2)
f[12,3] = array(z_solarpanel_obj,b,2)
f[12,4] = array(z_balloon_obj,a,3)
f[12,5] = array(z_snorkel_obj,w,2)
f[12,6] = array(z_zombie_obj,a,4)
f[12,6] = array(z_necromancer_obj,a,3)
