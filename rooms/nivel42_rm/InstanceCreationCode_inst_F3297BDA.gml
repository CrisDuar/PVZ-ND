//To edit level
pt=12//Grace time
fn=12//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 42"
lvl_en="Level 42"

//To edit prize
sprite=guacodileslot_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=43//level number
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

zombie_preview(zombie1_obj,3)
zombie_preview(zombiecarecono_obj,2)
zombie_preview(zombiecarecubo_obj,2)

zombie_preview(skeleton_obj,2)
zombie_preview(zompanel_obj,2)
zombie_preview(zombielector_obj,2)
zombie_preview(zombiepole_obj,4)

wf[6]=1
wf[fn-1]=2


f[0,0] = array(zombie1_obj,w,1)

f[1,0] = array(zombie1_obj,w,1)

f[2,0] = array(zombie1_obj,b,1)
f[2,1] = array(zombie1_obj,w,1)

f[3,0] = array(zombiecarecono_obj,w,1)
f[3,1] = array(zombie1_obj,b,2)

f[4,0] = array(zompanel_obj,b,1)
f[4,1] = array(zombie1_obj,b,1)

f[5,0] = array(zombiecarecono_obj,a,2)

//wave 1
f[6,0] = array(zabanderado_obj,w,1)
f[6,1] = array(zombie1_obj,a,4)
f[6,2] = array(zombiecarecono_obj,a,2)
f[6,3] = array(zombiecarecubo_obj,a,1)
f[6,4] = array(zombielector_obj,a,1)

f[7,0] = array(skeleton_obj,a,1)
f[7,1] = array(zombie1_obj,a,3)

f[8,0] = array(zombiecarecubo_obj,b,1)
f[8,1] = array(zombiecarecono_obj,a,2)

f[9,0] = array(zompanel_obj,b,2)
f[9,1] = array(zombiepole_obj,b,2)
f[9,2] = array(zombiecarecono_obj,b,2)

f[10,0] = array(skeleton_obj,a,2)
f[10,1] = array(zombielector_obj,a,2)
f[10,2] = array(zombiecarecubo_obj,a,2)

//wave 2
f[11,0] = array(zabanderado_obj,w,1)
f[11,1] = array(zombie1_obj,a,4)
f[11,2] = array(zombiecarecono_obj,a,2)
f[11,3] = array(zombiecarecubo_obj,a,2)
f[11,4] = array(zombielector_obj,a,2)
f[11,5] = array(zombiepole_obj,a,2)
f[11,6] = array(skeleton_obj,a,3)
f[11,7] = array(zompanel_obj,b,2)