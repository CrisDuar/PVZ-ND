//To edit level
pt=12//Grace time
fn=15//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 33"
lvl_en="Level 33"

//To edit prize
sprite=kelpslot_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=34//level number
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

zombie_preview(zombie1_obj,2)
zombie_preview(zombiepapsho_obj,2)
zombie_preview(zombieheadbox_obj,2)
zombie_preview(skeleton_obj,2)
zombie_preview(zombiestatua_obj,2)
zombie_preview(zombiecarecubo_obj,3)
zombie_preview(zombiebuzo_obj,2)
zombie_preview(beachballdrop_obj,3)

wf[7]=1
wf[fn-1]=2

f[0,0] = array(zombie1_obj,b,1)

f[1,0] = array(zombieheadbox_obj,b,1)

f[2,0] = array(zombieheadbox_obj,b,1)
f[2,1] = array(zombie1_obj,b,1)

f[3,0] = array(zombieheadbox_obj,b,1)
f[3,1] = array(zombiestatua_obj,b,2)

f[4,0] = array(zombiebuzo_obj,w,1)
f[4,1] = array(beachball_obj,a,2)

f[5,0] = array(zombiecarecubo_obj,b,1)
f[5,1] = array(zombie1_obj,a,1)

f[6,0] = array(zombiepapsho_obj,a,2)
f[6,1] = array(zombieheadbox_obj,a,1)

//wave 1
f[7,0] = array(zabanderado_obj,array(f3,f4),1)
f[7,1] = array(zombie1_obj,a,1)
f[7,2] = array(zombieheadbox_obj,a,2)
f[7,3] = array(zombiecarecubo_obj,a,1)
f[7,4] = array(beachball_obj,a,3)
f[7,5] = array(zombiebuzo_obj,w,2)
f[7,6] = array(zombiestatua_obj,a,2)
f[7,7] = array(zombiepapsho_obj,a,1)

f[8,0] = array(skeleton_obj,a,1)

f[9,0] = array(zombiebuzo_obj,w,1)
f[9,1] = array(zombiestatua_obj,a,3)
f[9,2] = array(zombieheadbox_obj,a,2)

f[10,0] = array(zombie1_obj,a,1)
f[10,1] = array(skeleton_obj,a,2)
f[10,2] = array(zombiepapsho_obj,a,1)

f[11,0] = array(zombiebuzo_obj,w,1)
f[11,1] = array(skeleton_obj,a,2)
f[11,2] = array(zombiecarecubo_obj,a,1)

f[12,0] = array(zombiestatua_obj,b,1)
f[12,1] = array(zombiepapsho_obj,a,2)
f[12,2] = array(zombieheadbox_obj,a,3)

f[13,0] = array(beachball_obj,a,3)
f[13,1] = array(zombiestatua_obj,a,2)
f[13,2] = array(zombiecarecubo_obj,a,2)

//wave 1
f[14,0] = array(zabanderado_obj,w,1)
f[14,1] = array(skeleton_obj,a,2)
f[14,2] = array(zombieheadbox_obj,a,3)
f[14,3] = array(zombiecarecubo_obj,a,2)
f[14,4] = array(beachball_obj,a,4)
f[14,5] = array(zombiepapsho_obj,a,2)
f[14,6] = array(zombiebuzo_obj,w,2)
f[14,7] = array(zombiestatua_obj,b,3)