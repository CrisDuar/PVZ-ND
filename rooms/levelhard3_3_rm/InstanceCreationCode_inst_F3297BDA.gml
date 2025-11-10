//To edit level
pt=6//Grace time
fn=21//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel difícil 3-3"
lvl_en="Hard level 3-3"

//To edit prize
sprite=chomperslot_spr//prize sprite
prizevar="levelhard3"//prize variable to modify
lvl=3//level number
money=300//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level
horde_ttl_hp=0.1
surprise_enabled=false

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

wf[7]=1
wf[fn-1]=2


f[0,0] = array(zombie1_obj,array(f2),1)
f[0,1] = array(zombie1_obj,array(f5),1)

f[1,0] = array(zombie1_obj,b,1)

f[2,0] = array(zombiecarecono_obj,b,1)
f[2,1] = array(zombie1_obj,b,1)

f[3,0] = array(zombiepapsho_obj,b,1)
f[3,1] = array(zombiecarecono_obj,b,1)

f[4,0] = array(zombiepapsho_obj,b,2)

f[5,0] = array(zombiepapsho_obj,a,2)
f[5,1] = array(zombiecarecono_obj,a,2)

f[6,0] = array(zombiecarecubo_obj,b,1)

//wave 1
f[7,0] = array(zabanderado_obj,array(f3),1)
f[7,1] = array(zombiecarecono_obj,b,2)
f[7,2] = array(icezombie_obj,a,3)
f[7,3] = array(zombiecarecubo_obj,a,3)
f[7,4] = array(zombiepapsho_obj,a,3)
f[7,5] = array(zombie1_obj,a,2)
f[7,6] = array(zombierocket_obj,a,3)

f[9,0] = array(zombiecarecono_obj,a,1)

f[10,0] = array(zombiepapsho_obj,a,3)
f[10,1] = array(icezombie_obj,a,2)
f[10,2] = array(zombiecarecubo_obj,a,2)
f[10,3] = array(futbolzombi_obj,a,2)

f[11,0] = array(zomboni_obj,b,1)
f[11,1] = array(zombiecarecono_obj,a,2)

f[12,0] = array(zombierocket_obj,a,4)
f[12,1] = array(futbolzombi_obj,a,2)

f[13,0] = array(zombierocket_obj,a,2)
f[13,1] = array(zombiepapsho_obj,a,4)
f[13,2] = array(zomboni_obj,b,1)

f[14,0] = array(zombiepole_obj,a,2)
f[14,1] = array(zombiecarecubo_obj,a,2)
f[14,2] = array(zombiepapsho_obj,a,2)

f[15,0] = array(zombiecarecubo_obj,a,2)
f[15,1] = array(zombiepole_obj,a,3)

f[16,0] = array(zombiepole_obj,a,3)
f[16,1] = array(zombiecarecubo_obj,a,2)
f[16,2] = array(zombierocket_obj,a,4)
f[16,3] = array(futbolzombi_obj,a,3)

f[17,0] = array(zomboni_obj,b,1)
f[17,1] = array(zombiecarecubo_obj,a,3)

f[18,0] = array(icezombie_obj,a,4)
f[18,1] = array(zombiecarecubo_obj,a,2)
f[18,2] = array(zombiecarecono_obj,a,1)

f[19,0] = array(zombierocket_obj,a,3)
f[19,1] = array(zombiepole_obj,a,4)
f[19,2] = array(zombiecarecubo_obj,a,3)
f[19,3] = array(futbolzombi_obj,a,1)

//wave 2
f[20,0] = array(zabanderado_obj,array(f3),1)
f[20,1] = array(zomboni_obj,b,2)
f[20,2] = array(icezombie_obj,a,3)
f[20,3] = array(zombiecarecubo_obj,a,4)
f[20,4] = array(zombiepapsho_obj,a,4)
f[20,5] = array(zombiepole_obj,a,4)
f[20,6] = array(zombierocket_obj,a,5)
f[20,7] = array(zombiecarecono_obj,a,2)
f[20,8] = array(futbolzombi_obj,a,4)
