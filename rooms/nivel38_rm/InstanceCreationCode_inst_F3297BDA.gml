//To edit level
pt=12//Grace time
fn=12//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 38"
lvl_en="Level 38"

//To edit prize
sprite=tripitidoraslot_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=39//level number
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

zombie_preview(zombie1_obj,1)
zombie_preview(zombieheadbox_obj,2)
zombie_preview(zombiedoor_obj,2)

zombie_preview(zombiestatua_obj,2)
zombie_preview(zombielector_obj,2)
zombie_preview(trashcanzombie_obj,3)

wf[6]=1
wf[fn-1]=2


f[0,0] = array(zombie1_obj,b,1)

f[1,0] = array(zombie1_obj,b,1)

f[2,0] = array(zombie1_obj,b,2)

f[3,0] = array(zombie1_obj,a,3)
f[3,1] = array(zombiestatua_obj,b,1)

f[4,0] = array(trashcanzombie_obj,b,1)

f[5,0] = array(zombie1_obj,a,2)
f[5,1] = array(zombiedoor_obj,a,1)

//wave 1
f[6,0] = array(zabanderado_obj,array(f3,f4),1)
f[6,1] = array(trashcanzombie_obj,a,1)
f[6,2] = array(zombieheadbox_obj,a,2)
f[6,3] = array(zombiestatua_obj,b,3)
f[6,4] = array(zombie1_obj,a,4)
f[6,5] = array(zombiedoor_obj,a,2)

f[7,0] = array(zombielector_obj,a,1)
f[7,1] = array(zombieheadbox_obj,a,2)

f[8,0] = array(zombie1_obj,a,2)
f[8,1] = array(zombiedoor_obj,a,2)
f[8,2] = array(zombieheadbox_obj,a,3)

f[9,0] = array(zombiestatua_obj,a,4)
f[9,1] = array(trashcanzombie_obj,a,2)
f[9,2] = array(zombielector_obj,a,1)
f[9,3] = array(zombieheadbox_obj,a,1)

f[10,0] = array(zombieheadbox_obj,a,1)
f[10,1] = array(zombielector_obj,a,2)
f[10,1] = array(zombie1_obj,a,2)

//wave 1
f[11,0] = array(zabanderado_obj,array(f3,f4),1)
f[11,1] = array(trashcanzombie_obj,a,3)
f[11,2] = array(zombie1_obj,a,5)
f[11,3] = array(zombiestatua_obj,a,4)
f[11,4] = array(zombielector_obj,a,2)
f[11,5] = array(zombiedoor_obj,a,2)
f[11,6] = array(zombieheadbox_obj,a,3)