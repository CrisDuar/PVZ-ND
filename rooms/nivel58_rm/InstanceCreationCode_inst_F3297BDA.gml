//To edit level
pt=12//Grace time
fn=15//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 58"
lvl_en="Level 58"
//To edit prize
sprite=nota_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=59//level number
money=300//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=nota_rm//what room go to after passing the level

zombie_preview(zombie1_obj,2)
zombie_preview(imp_obj,2)
zombie_preview(zombiecarecono_obj,3)
zombie_preview(zombiecoffin_obj,2)
zombie_preview(trashcanzombie_obj,2)
zombie_preview(zombiebuzo_obj,2)
zombie_preview(zombiecajita_obj,2)
zombie_preview(beachball_obj,2)

wf[7]=1
wf[fn-1]=2

g = array(f1,f5)
w = array(f2,f3,f4)

f[0,0] = array(zombie1_obj,g,1)

f[1,0] = array(imp_obj,g,1)

f[2,0] = array(zombiecarecono_obj,g,1)

f[3,0] = array(zombiecarecono_obj,g,1)
f[3,1] = array(imp_obj,a,1)

f[4,0] = array(zombie1_obj,a,1)
f[4,1] = array(zombiecarecono_obj,a,1)

f[5,0] = array(beachball_obj,a,3)
f[5,1] = array(imp_obj,a,2)

f[6,0] = array(zombiebuzo_obj,w,1)

//wave 1
f[7,0] = array(zabanderado_obj,array(f3),1)
f[7,1] = array(zombie1_obj,a,2)
f[7,2] = array(zombiecarecono_obj,a,3)
f[7,3] = array(imp_obj,a,2)
f[7,4] = array(beachball_obj,a,4)
f[7,5] = array(zombiebuzo_obj,w,2)

f[8,0] = array(zombiecajita_obj,a,1)

f[9,0] = array(trashcanzombie_obj,a,1)
f[9,1] = array(zombiecarecono_obj,a,1)

f[10,0] = array(zombiecajita_obj,a,1)
f[10,1] = array(zombiebuzo_obj,w,2)

f[11,0] = array(zombiecoffin_obj,a,1)
f[11,1] = array(zombiecarecono_obj,a,2)

f[12,0] = array(trashcanzombie_obj,a,2)
f[12,1] = array(beachball_obj,a,2)
f[12,2] = array(zombiecarecono_obj,a,2)

f[13,0] = array(zombiecajita_obj,a,2)
f[13,1] = array(imp_obj,a,1)
f[13,2] = array(zombiecarecono_obj,a,1)

//wave 2
f[14,0] = array(zabanderado_obj,array(f3),1)
f[14,1] = array(zombie1_obj,a,2)
f[14,2] = array(zombiecarecono_obj,a,3)
f[14,3] = array(zombiecoffin_obj,a,1)
f[14,4] = array(imp_obj,a,2)
f[14,5] = array(zombiecajita_obj,a,2)
f[14,6] = array(trashcanzombie_obj,a,2)
f[14,7] = array(zombiebuzo_obj,w,2)
f[14,8] = array(beachball_obj,w,3)