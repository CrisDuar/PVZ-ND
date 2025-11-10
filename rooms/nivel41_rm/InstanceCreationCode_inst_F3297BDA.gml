//To edit level
pt=15//Grace time
fn=20//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 41"
lvl_en="Level 41"

//To edit prize
sprite=tallnutslot_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=42//level number
money=500//player gets money for passing the level
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

zombie_preview(zombierocket_obj,3)
zombie_preview(futbolzombi_obj,2)
zombie_preview(trashcanzombie_obj,2)
zombie_preview(duckzombie_obj,2)
zombie_preview(icezombie_obj,2)
zombie_preview(zombiecarecono_obj,2)
zombie_preview(zombiestatua_obj,1)
zombie_preview(zombiecarecubo_obj,2)
zombie_preview(beachballdrop_obj,1)
zombie_preview(zombiebuzo_obj,2)
zombie_preview(zombiesecta1_obj,2)
zombie_preview(zombiecarecubo_obj,1)

wf[3]=1
wf[7]=1
wf[11]=1
wf[15]=1
wf[fn-1]=2


f[0,0] = array(duckzombie_obj,b,1)

f[1,0] = array(duckzombie_obj,b,1)

f[2,0] = array(zombiecarecono_obj,b,1)
f[2,1] = array(duckzombie_obj,b,1)

//wave 1
f[3,0] = array(zabanderado_obj,w,1)
f[3,1] = array(zombiecarecono_obj,a,3)
f[3,2] = array(duckzombie_obj,w,2)

f[4,0] = array(zombiestatua_obj,a,2)
f[4,1] = array(zombiecarecono_obj,a,2)

f[5,0] = array(zombierocket_obj,a,1)

f[6,0] = array(zombiecarecubo_obj,a,2)
f[6,1] = array(trashcanzombie_obj,a,1)
f[6,2] = array(zombiecarecono_obj,a,1)

//wave 2
f[7,0] = array(icezombie_obj,a,2)
f[7,1] = array(zabanderado_obj,w,1)
f[7,2] = array(zombiecarecono_obj,a,2)
f[7,3] = array(zombierocket_obj,a,1)
f[7,4] = array(zombiestatua_obj,a,4)
f[7,5] = array(trashcanzombie_obj,a,2)
f[7,6] = array(beachball_obj,a,4)

f[8,0] = array(zombiebuzo_obj,w,2)
f[8,1] = array(duckzombie_obj,w,1)

f[9,0] = array(trashcanzombie_obj,a,1)
f[9,1] = array(zombiebuzo_obj,w,2)
f[9,2] = array(beachball_obj,a,2)

f[10,0] = array(icezombie_obj,a,1)
f[10,1] = array(zombiecarecono_obj,a,2)
f[10,2] = array(zombiesecta1_obj,a,1)

//wave 3
f[11,0] = array(zabanderado_obj,w,1)
f[11,1] = array(zombiecarecono_obj,a,2)
f[11,2] = array(trashcanzombie_obj,a,2)
f[11,3] = array(zombiestatua_obj,a,3)
f[11,4] = array(zombiebuzo_obj,w,3)
f[11,5] = array(zombierocket_obj,a,3)
f[11,6] = array(zombiecarecubo_obj,a,2)

f[12,0] = array(futbolzombi_obj,a,1)
f[12,1] = array(zombiestatua_obj,a,2)

f[13,0] = array(zombiesecta1_obj,a,2)
f[13,1] = array(zombiebuzo_obj,a,2)
f[13,2] = array(zombiestatua_obj,a,3)

f[14,0] = array(beachball_obj,a,3)
f[14,1] = array(icezombie_obj,a,2)
f[14,2] = array(zombierocket_obj,a,2)
f[14,3] = array(zombiecarecono_obj,a,3)

//wave 4
f[15,0] = array(zabanderado_obj,w,1)
f[15,1] = array(beachball_obj,w,3)
f[15,2] = array(zombiecarecubo_obj,a,3)
f[15,3] = array(duckzombie_obj,a,3)
f[15,4] = array(zombierocket_obj,a,2)
f[15,5] = array(zombiebuzo_obj,a,4)
f[15,6] = array(icezombie_obj,a,3)

f[16,0] = array(zombiecarecubo_obj,a,2)
f[16,1] = array(trashcanzombie_obj,a,2)
f[16,2] = array(zombiecarecono_obj,a,3)

f[17,0] = array(zombiecarecubo_obj,a,2)
f[17,1] = array(zombiesecta1_obj,a,2)
f[17,2] = array(icezombie_obj,a,2)

f[18,0] = array(icezombie_obj,a,1)

//final wave
f[19,0] = array(icezombie_obj,a,3)
f[19,1] = array(zabanderadohard_obj,w,1)
f[19,2] = array(trashcanzombie_obj,a,2)
f[19,3] = array(zombiecarecono_obj,a,2)
f[19,4] = array(zombiesecta1_obj,a,2)
f[19,5] = array(zombiebuzo_obj,w,3)
f[19,6] = array(duckzombie_obj,a,4)
f[19,7] = array(zombierocket_obj,a,4)
f[19,8] = array(zombiecarecubo_obj,a,3)
f[19,9] = array(beachball_obj,a,5)
