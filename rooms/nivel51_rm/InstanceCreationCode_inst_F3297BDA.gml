//To edit level
pt=6//Grace time
fn=15//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=true//Is an infinite level?
progressbar=false//show progress bar?
lvl_es="Nivel 51"
lvl_en="Level 51"

horde_prcnt=0.2

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

f[0,0] = array(imp_obj,a,1)

f[1,0] = array(zombieheadbox_obj,a,1)
f[1,1] = array(imp_obj,a,2)

f[2,0] = array(zombieheadbox_obj,a,2)

f[3,0] = array(zombiecarecono_obj,a,2)
f[3,1] = array(zombieheadbox_obj,a,1)

f[4,0] = array(zombiecarecono_obj,a,1)
f[4,1] = array(zombieglobo_obj,a,1)

f[5,0] = array(trashcanzombie_obj,a,1)

f[6,0] = array(icezombie_obj,a,1)
f[6,1] = array(zombiebuzo_obj,w,1)

f[7,0] = array(zombiecarecono_obj,a,2)
f[7,1] = array(zombierocket_obj,a,1)

f[8,0] = array(zombiebuzo_obj,w,1)
f[8,1] = array(zombiecarecubo_obj,a,2)

f[9,0] = array(imp_obj,a,2)
f[9,1] = array(zombie1_obj,a,1)

f[10,0] = array(zombiecarecubo_obj,a,1)
f[10,1] = array(icezombie_obj,a,2)

f[11,0] = array(icezombie_obj,a,1)
f[11,1] = array(zombierocket_obj,a,1)

f[12,0] = array(protestantzombie_obj,a,1)

f[13,0] = array(trashcanzombie_obj,a,1)
f[13,1] = array(zombiecarecubo_obj,a,1)

f[14,0] = array(icezombie_obj,a,2)
f[14,1] = array(zombiecarecono_obj,a,1)
