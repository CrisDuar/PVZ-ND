//To edit level
pt=20//Grace time
fn=10//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 46"
lvl_en="Level 46"

//To edit prize
sprite=jalapenoslot_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=47//level number
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

//poner al zombi antorcha, que hace mil niveles que no sale. Gracias Chris del futuro.
zombie_preview(z_imp_obj,3)
zombie_preview(z_conehead_obj,3)
zombie_preview(z_buckethead_obj,3)

zombie_preview(z_torch_obj,2)
zombie_preview(z_balloon_obj,2)
zombie_preview(z_zomboni_obj,1)

wf[fn-1]=2

f[0,0] = array(z_imp_obj,b,1)

f[1,0] = array(z_imp_obj,b,1)

f[2,0] = array(z_conehead_obj,b,1)
f[2,1] = array(z_imp_obj,b,1)

f[3,0] = array(z_torch_obj,b,1)
f[3,1] = array(z_imp_obj,b,1)

f[4,0] = array(z_conehead_obj,a,2)

f[5,0] = array(z_torch_obj,b,1)
f[5,1] = array(z_conehead_obj,a,1)

f[6,0] = array(z_balloon_obj,a,2)
f[6,1] = array(z_conehead_obj,a,1)

f[7,0] = array(z_zomboni_obj,b,1)

f[8,0] = array(z_torch_obj,b,2)
f[8,1] = array(z_buckethead_obj,b,1)
f[8,2] = array(z_conehead_obj,a,2)

//wave 3
f[9,0] = array(z_flag_obj,array(f3,f4),1)
f[9,1] = array(z_conehead_obj,a,2)
f[9,2] = array(z_buckethead_obj,a,2)
f[9,3] = array(z_imp_obj,a,3)
f[9,4] = array(z_torch_obj,b,2)
f[9,5] = array(z_zomboni_obj,b,1)
f[9,6] = array(z_balloon_obj,a,2)
