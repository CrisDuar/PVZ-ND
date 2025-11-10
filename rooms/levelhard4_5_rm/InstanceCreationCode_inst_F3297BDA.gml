//To edit level
pt=5//Grace time
fn=20//number of waves
surprise_enabled=false
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel difícil 4-5"
lvl_en="Hard level 4-5"
//To edit prize
sprite=bolsa_monedas_spr//prize sprite
prizevar="levelhard4"//prize variable to modify
lvl=5//level number
money=500//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=hardmode_claire_rm//what room go to after passing the level

n = array(f1,f3,f5)
m = array(f2,f4)
wf[10]=1
wf[fn-1]=2

zombie_preview(zombie1_obj,3)
zombie_preview(zombiecarecono_obj,1)
zombie_preview(zombiecarecubo_obj,2)
zombie_preview(zombiecoffin_obj,2)

zombie_preview(trashcanzombie_obj,2)
zombie_preview(zombiecajita_obj,2)
zombie_preview(futbolzombi_obj,2)

zombie_preview(zombieglobo_obj,2)
zombie_preview(zombiepole_obj,2)

f[0,0] = array(zombie1_obj,m,1)

f[1,0] = array(zombie1_obj,m,2)

f[2,0] = array(zombiecarecono_obj,m,1)

f[3,0] = array(zombie1_obj,m,1)
f[3,1] = array(zombiecarecono_obj,m,1)

f[4,0] = array(zombiecarecubo_obj,m,1)
f[4,1] = array(zombiepole_obj,n,2)

f[5,0] = array(zombiecarecono_obj,m,2)
f[5,1] = array(zombie1_obj,a,1)
f[5,2] = array(zombiecarecubo_obj,m,2)

f[6,0] = array(zombiepole_obj,n,1)
f[6,1] = array(zombiecarecubo_obj,m,2)

f[7,0] = array(zombieglobo_obj,m,2)
f[7,1] = array(zombie1_obj,a,2)

f[8,0] = array(trashcanzombie_obj,n,1)
f[8,0] = array(zombiepole_obj,n,3)

f[9,0] = array(zombiecajita_obj,n,1)
f[9,1] = array(zombiecarecono_obj,m,2)

//wave 1
f[10,0] = array(zabanderado_obj,array(f3),1)
f[10,1] = array(zombiecarecono_obj,m,4)
f[10,2] = array(zombie1_obj,a,4)
f[10,3] = array(zombiepole_obj,n,2)
f[10,4] = array(zombiecarecubo_obj,m,2)
f[10,5] = array(trashcanzombie_obj,m,1)

f[11,0] = array(zombiecajita_obj,n,1)
f[11,1] = array(zombie1_obj,m,3)

f[12,0] = array(zombie1_obj,a,2)
f[12,1] = array(futbolzombi_obj,m,2)
f[12,2] = array(zombiecarecubo_obj,m,2)

f[13,0] = array(zombieglobo_obj,n,2)
f[13,1] = array(zombiecarecubo_obj,n,1)
f[13,2] = array(zombiecarecono_obj,m,2)

f[14,0] = array(trashcanzombie_obj,n,2)
f[14,1] = array(zombie1_obj,a,3)
f[14,2] = array(zombiecoffin_obj,m,1)

f[15,0] = array(zombie1_obj,a,3)
f[15,1] = array(zombiepole_obj,m,3)
f[15,2] = array(zombiepole_obj,n,2)
f[15,3] = array(zombieglobo_obj,n,1)
f[15,4] = array(zombiecarecubo_obj,m,2)

f[16,0] = array(zombiecajita_obj,a,2)
f[16,1] = array(zombiecarecubo_obj,m,2)
f[16,2] = array(zombiecarecono_obj,n,4)

f[17,0] = array(zombiecoffin_obj,m,1)
f[17,1] = array(zombie1_obj,a,3)
f[17,2] = array(zombiecarecubo_obj,a,1)

f[18,0] = array(futbolzombi_obj,m,2)
f[18,1] = array(zombie1_obj,a,4)
f[18,2] = array(zombiepole_obj,n,2)

//wave 2
f[19,0] = array(zabanderado_obj,array(f3),1)
f[19,1] = array(zombiecarecubo_obj,m,2)
f[19,2] = array(zombie1_obj,a,5)
f[19,3] = array(zombiecarecono_obj,n,2)
f[19,4] = array(trashcanzombie_obj,m,4)
f[19,5] = array(zombieglobo_obj,n,5)
f[19,6] = array(zombiepole_obj,n,2)
f[19,7] = array(zombiecarecono_obj,m,3)
f[19,8] = array(futbolzombi_obj,m,3)