//To edit level
pt=3//Grace time
fn=15//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=true//Is an infinite level?
progressbar=false//show progress bar?
lvl_es="Nivel difícil 3-6"
lvl_en="Hard level 3-6"
horde_ttl_hp=0.2
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

f[0,0] = array(z_imp_obj,a,1)

f[1,0] = array(z_headbox_obj,a,1)

f[2,0] = array(z_headbox_obj,a,2)

f[3,0] = array(z_conehead_obj,a,1)

f[4,0] = array(z_conehead_obj,a,2)

f[5,0] = array(z_conehead_obj,a,1)
f[5,1] = array(z_trashcan_obj,a,1)

f[6,0] = array(z_conehead_obj,a,1)
f[6,1] = array(z_snorkel_obj,w,1)

f[7,0] = array(z_conehead_obj,a,2)
f[7,1] = array(z_rocket_obj,a,1)

f[8,0] = array(z_snorkel_obj,w,1)
f[8,1] = array(z_buckethead_obj,a,1)

f[9,0] = array(z_imp_obj,a,2)
f[9,1] = array(z_zombie_obj,a,1)

f[10,0] = array(z_buckethead_obj,a,2)
f[10,1] = array(z_icehead_obj,a,2)

f[11,0] = array(z_icehead_obj,a,1)
f[11,1] = array(z_rocket_obj,a,1)

f[12,0] = array(z_protesterleader_obj,a,1)

f[13,0] = array(z_trashcan_obj,a,1)
f[13,1] = array(z_buckethead_obj,a,1)

f[14,0] = array(z_icehead_obj,a,2)
f[14,1] = array(z_conehead_obj,a,1)
