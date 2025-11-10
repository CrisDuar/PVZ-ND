//To edit level
pt=6//Grace time
fn=15//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=true//Is an infinite level?
progressbar=false//show progress bar?
lvl_es="Nivel difícil 2-6"
lvl_en="Hard level 2-6"
horde_ttl_hp=0.2

f[0,0] = array(imp_obj,a,2)

f[1,0] = array(imp_obj,a,2)
f[1,1] = array(zombie1_obj,a,1)

f[2,0] = array(zombie1_obj,a,1)
f[2,1] = array(zombiecarecono_obj,a,1)

f[3,0] = array(zombie1_obj,a,2)

f[4,0] = array(zombiecarecono_obj,a,1)
f[4,1] = array(zomtorch_obj,a,1)

f[5,0] = array(zombiecarecono_obj,a,1)
f[5,1] = array(zomtorch_obj,a,2)

f[6,0] = array(skeleton_obj,a,3)
f[6,1] = array(zombiesecta1_obj,a,2)

f[7,0] = array(zombiecarecono_obj,a,1)
f[7,1] = array(skeleton_obj,a,1)

f[8,0] = array(skeleton_obj,a,1)
f[8,1] = array(zombiecarecubo_obj,a,3)

f[9,0] = array(imp_obj,a,2)
f[9,1] = array(zombie1_obj,a,1)

f[10,0] = array(zombiecarecubo_obj,a,1)
f[10,1] = array(zomtorch_obj,a,2)

f[11,0] = array(zomtorch_obj,a,1)
f[11,1] = array(futbolzombi_obj,a,1)

f[12,0] = array(skeleton_obj,a,3)

f[13,0] = array(zombiesecta1_obj,a,1)

f[14,0] = array(zomtorch_obj,a,2)
f[14,1] = array(zombiecarecono_obj,a,2)
