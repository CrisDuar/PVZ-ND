//To edit level
pt=12//Grace time
fn=16//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 43"
lvl_en="Level 43"

//To edit prize
sprite=melonslot_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=44//level number
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

zombie_preview(duckzombie_obj,3)
zombie_preview(zombieheadbox_obj,2)
zombie_preview(zombiecarecubo_obj,2)

zombie_preview(zombiejardinero_obj,2)
zombie_preview(zombierocket_obj,2)
zombie_preview(zompanel_obj,2)
zombie_preview(icezombie_obj,2)
zombie_preview(trashcanzombie_obj,2)
zombie_preview(beachballdrop_obj,3)

wf[fn-1]=2

f[0,0] = array(duckzombie_obj,b,1)

f[1,0] = array(duckzombie_obj,b,1)

f[2,0] = array(duckzombie_obj,b,1)
f[2,1] = array(zombieheadbox_obj,b,1)

f[3,0] = array(zombieheadbox_obj,b,2)

f[4,0] = array(duckzombie_obj,w,1)
f[4,1] = array(icezombie_obj,a,1)

f[5,0] = array(icezombie_obj,a,1)
f[5,1] = array(zombieheadbox_obj,a,2)
f[5,2] = array(beachball_obj,a,1)

f[6,0] = array(zompanel_obj,b,1)
f[6,1] = array(zombiejardinero_obj,a,1)
f[6,2] = array(zombieheadbox_obj,a,1)

f[7,0] = array(zombiecarecubo_obj,a,1)
f[7,1] = array(zombiejardinero_obj,a,1)

f[8,0] = array(zombiecarecubo_obj,a,1)
f[8,1] = array(trashcanzombie_obj,a,1)
f[8,2] = array(zombieheadbox_obj,a,1)

f[9,0] = array(zombiejardinero_obj,a,2)
f[9,1] = array(beachball_obj,a,3)
f[9,2] = array(zompanel_obj,b,1)

f[10,0] = array(zombierocket_obj,a,2)
f[10,1] = array(zombiecarecubo_obj,a,1)
f[10,2] = array(beachball_obj,a,2)

f[11,0] = array(icezombie_obj,a,2)
f[11,1] = array(trashcanzombie_obj,a,2)
f[11,2] = array(zombieheadbox_obj,a,2)

f[12,0] = array(beachball_obj,a,2)
f[12,1] = array(zombierocket_obj,a,2)
f[12,2] = array(duckzombie_obj,a,3)

f[13,0] = array(zompanel_obj,b,1)
f[13,1] = array(zombiecarecubo_obj,a,2)
f[13,2] = array(zombieheadbox_obj,a,3)

f[14,0] = array(zombierocket_obj,a,3)
f[14,1] = array(duckzombie_obj,a,2)
f[14,2] = array(zompanel_obj,b,2)
f[14,3] = array(zombiecarecubo_obj,a,2)

//wave 2
f[15,0] = array(zabanderado_obj,array(f3,f4),1)
f[15,1] = array(duckzombie_obj,a,3)
f[15,2] = array(zombieheadbox_obj,a,3)
f[15,3] = array(zombiecarecubo_obj,a,2)
f[15,4] = array(zombiejardinero_obj,a,3)
f[15,5] = array(zompanel_obj,b,2)
f[15,6] = array(icezombie_obj,a,2)
f[15,7] = array(trashcanzombie_obj,b,2)
f[15,8] = array(beachball_obj,b,5)
f[15,7] = array(zombierocket_obj,b,3)