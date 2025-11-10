//To edit level
pt=16//Grace time
fn=12//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 36"
lvl_en="Level 36"

//To edit prize
sprite=rotinaboslot_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=37//level number
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

zombie_preview(icezombie_obj,2)
zombie_preview(zombiesecta1_obj,1)
zombie_preview(zombiecarecono_obj,3)
zombie_preview(zombiecarecubo_obj,2)
zombie_preview(skeleton_obj,2)

zombie_preview(zombiebuzo_obj,2)
zombie_preview(duckzombie_obj,3)
zombie_preview(zombie1_obj,1)

wf[6]=1
wf[fn-1]=2


f[0,0] = array(zombie1_obj,b,1)

f[1,0] = array(zombie1_obj,b,1)

f[2,0] = array(zombie1_obj,b,2)

f[3,0] = array(zombiecarecono_obj,b,1)
f[3,1] = array(icezombie_obj,b,1)

f[4,0] = array(zombiebuzo_obj,w,1)
f[4,1] = array(zombie1_obj,a,2)

f[5,0] = array(duckzombie_obj,w,1)
f[5,1] = array(skeleton_obj,a,2)
f[5,2] = array(zombiecarecono_obj,a,1)

//wave 1
f[6,0] = array(zabanderado_obj,array(f3,f4),1)
f[6,1] = array(icezombie_obj,a,2)
f[6,2] = array(skeleton_obj,a,1)
f[6,3] = array(zombiecarecono_obj,a,2)
f[6,4] = array(zombie1_obj,a,1)
f[6,5] = array(duckzombie_obj,w,3)

f[7,0] = array(zombiebuzo_obj,w,2)
f[7,1] = array(zombiecarecubo_obj,a,1)

f[8,0] = array(duckzombie_obj,a,2)
f[8,1] = array(zombiecarecubo_obj,a,1)
f[8,2] = array(zombiecarecono_obj,a,2)

f[9,0] = array(icezombie_obj,a,2)
f[9,1] = array(zombiesecta1_obj,a,1)
f[9,2] = array(skeleton_obj,a,1)

f[10,0] = array(duckzombie_obj,a,1)
f[10,1] = array(skeleton_obj,a,2)
f[10,2] = array(zombie1_obj,a,3)

//wave 1
f[11,0] = array(zabanderado_obj,array(f3,f4),1)
f[11,1] = array(icezombie_obj,a,2)
f[11,2] = array(zombiecarecubo_obj,a,1)
f[11,3] = array(zombiecarecono_obj,a,2)
f[11,4] = array(duckzombie_obj,a,3)
f[11,5] = array(zombiesecta1_obj,a,2)
f[11,6] = array(skeleton_obj,a,2)
f[11,7] = array(zombiebuzo_obj,w,2)
f[11,8] = array(zombie1_obj,a,4)