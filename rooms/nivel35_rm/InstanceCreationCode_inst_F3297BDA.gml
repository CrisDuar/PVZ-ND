//To edit level
pt=20//Grace time
fn=9//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 35"
lvl_en="Level 35"

//To edit prize
sprite=narcisoslot_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=36//level number
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

zombie_preview(zombieheadbox_obj,2)
zombie_preview(zombiecarecono_obj,1)
zombie_preview(zombiecarecubo_obj,2)

zombie_preview(zombiepapsho_obj,3)
zombie_preview(icezombie_obj,4)
zombie_preview(zombiestatua_obj,2)


wf[fn-1]=2


f[0,0] = array(zombieheadbox_obj,b,1)

f[1,0] = array(zombieheadbox_obj,b,1)

f[2,0] = array(icezombie_obj,b,1)
f[2,1] = array(zombieheadbox_obj,b,1)

f[3,0] = array(zombiecarecono_obj,b,1)
f[3,1] = array(zombieheadbox_obj,b,1)

f[4,0] = array(icezombie_obj,a,2)
f[4,1] = array(zombiecarecono_obj,a,1)
f[4,2] = array(zombiestatua_obj,b,2)

f[5,0] = array(icezombie_obj,a,1)
f[5,1] = array(zombiepapsho_obj,a,2)
f[5,2] = array(zombiecarecono_obj,a,1)

f[6,0] = array(zombieheadbox_obj,a,2)
f[6,1] = array(zombiepapsho_obj,a,2)
f[6,2] = array(zombiestatua_obj,a,3)

f[7,0] = array(icezombie_obj,a,2)
f[7,1] = array(zombiecarecubo_obj,a,1)
f[7,1] = array(zombiecarecono_obj,a,2)

//wave 1
f[8,0] = array(zabanderado_obj,array(f3,f4),1)
f[8,1] = array(icezombie_obj,a,2)
f[8,2] = array(zombiecarecubo_obj,a,2)
f[8,3] = array(zombiepapsho_obj,a,3)
f[8,4] = array(zombiestatua_obj,a,4)
f[8,5] = array(zombiecarecono_obj,a,2)
