//To edit level
pt=6//Grace time
fn=18//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel difícil 3-1"
lvl_en="Hard level 3-1"

//To edit prize
sprite=bolsa_monedas_spr//prize sprite
prizevar="levelhard3"//prize variable to modify
lvl=1//level number
money=500//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=hardmode_pool_rm//what room go to after passing the level

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

zombie_preview(imp_obj,2)
zombie_preview(zombie1_obj,2)
zombie_preview(zombiecarecono_obj,2)
zombie_preview(zombiecarecubo_obj,2)

zombie_preview(zompanel_obj,2)
zombie_preview(zombieglobo_obj,2)
zombie_preview(zomboni_obj,2)


wf[6]=1
wf[12]=1
wf[fn-1]=2


f[0,0] = array(zombie1_obj,b,1)

f[1,0] = array(zombie1_obj,b,1)

f[2,0] = array(zombiecarecono_obj,b,1)

f[3,0] = array(zombiecarecono_obj,b,1)

f[4,0] = array(zombiecarecono_obj,a,1)
f[4,1] = array(imp_obj,a,2)

f[5,0] = array(zombiecarecubo_obj,a,1)
f[5,1] = array(zombie1_obj,a,1)

//wave 2
f[6,0] = array(zombieglobo_obj,a,1)
f[6,1] = array(zabanderado_obj,array(f3),1)
f[6,2] = array(zombiecarecubo_obj,a,1)
f[6,3] = array(zombiecarecono_obj,a,3)
f[6,4] = array(zombie1_obj,a,3)
f[6,5] = array(imp_obj,a,3)

f[7,0] = array(zombiecarecubo_obj,a,1)

f[8,0] = array(zombieglobo_obj,a,1)
f[8,1] = array(zombiecarecono_obj,a,2)
f[8,1] = array(zombie1_obj,a,2)

f[9,0] = array(zompanel_obj,array(f1),1)
f[9,1] = array(zompanel_obj,array(f6),1)

f[10,0] = array(zomboni_obj,b,1)

f[11,0] = array(zombiecarecono_obj,a,2)

//wave 2
f[12,0] = array(zabanderadohard_obj,array(f3),1)
f[12,1] = array(zombiecarecubo_obj,a,2)
f[12,2] = array(zombiecarecono_obj,a,3)
f[12,3] = array(zompanel_obj,b,1)
f[12,4] = array(zombieglobo_obj,a,2)
f[12,5] = array(imp_obj,a,2)

f[13,0] = array(imp_obj,a,2)
f[13,1] = array(zombie1_obj,a,2)

f[14,0] = array(zomboni_obj,b,1)
f[14,1] = array(zombiecarecubo_obj,a,2)

f[15,0] = array(zombieglobo_obj,a,2)
f[15,1] = array(zombiecarecono_obj,a,2)
f[15,1] = array(imp_obj,a,2)

f[16,0] = array(zompanel_obj,b,2)
f[16,1] = array(zombiecarecubo_obj,a,1)

//wave 3
f[17,0] = array(zabanderadohard_obj,array(f3),1)
f[17,1] = array(zombiecarecubo_obj,a,2)
f[17,2] = array(zombiecarecono_obj,a,3)
f[17,3] = array(imp_obj,a,3)
f[17,4] = array(zombieglobo_obj,a,3)
f[17,5] = array(zomboni_obj,b,2)