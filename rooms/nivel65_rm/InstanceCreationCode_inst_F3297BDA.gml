//To edit level
pt=12//Grace time
fn=21//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 65"
lvl_en="Level 65"
//To edit prize
sprite=magnetslot_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=66//level number
money=200//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level

zombie_preview(zombie1_obj,2)
zombie_preview(zombiecarecono_obj,2)
zombie_preview(zombiecarecubo_obj,2)
zombie_preview(zombiecoffin_obj,2)

zombie_preview(icezombie_obj,2)
zombie_preview(zombiemago_obj,2)
zombie_preview(zombiecajita_obj,2)
zombie_preview(protestantzombie_obj,1)
zombie_preview(zombidoctor_obj,1)

wf[10]=1
wf[15]=1
wf[fn-1]=2

f[0,0] = array(zombie1_obj,a,1)

f[1,0] = array(zombie1_obj,a,1)

f[2,0] = array(zombiecarecono_obj,a,1)

f[3,0] = array(zombiecarecono_obj,a,1)

f[4,0] = array(icezombie_obj,a,1)
f[4,1] = array(zombie1_obj,a,1)

f[5,0] = array(zombiecarecono_obj,a,2)
f[5,1] = array(zombie1_obj,a,1)

f[6,0] = array(zombiecarecono_obj,a,1)
f[6,1] = array(icezombie_obj,a,2)

f[7,0] = array(zombiecarecubo_obj,a,1)

f[8,0] = array(zombiecajita_obj,a,1)

f[9,0] = array(zombiecarecubo_obj,a,1)
f[9,1] = array(zombiecarecono_obj,a,1)

//wave 2
f[10,0] = array(zabanderado_obj,array(f3),1)
f[10,1] = array(zombie1_obj,a,2)
f[10,2] = array(zombiecarecono_obj,a,1)
f[10,3] = array(zombiecarecubo_obj,a,1)
f[10,4] = array(zombiecajita_obj,a,2)
f[10,5] = array(icezombie_obj,a,3)

f[11,0] = array(protestantzombie_obj,a,1)

f[12,0] = array(zombiecarecubo_obj,a,2)
f[12,1] = array(zombiecajita_obj,a,1)

f[13,0] = array(zombiecoffin_obj,a,1)
f[13,1] = array(zombiecajita_obj,a,3)

f[14,0] = array(zombiemago_obj,a,2)
f[14,1] = array(protestantzombie_obj,a,1)
f[14,2] = array(zombie1_obj,a,4)

//wave 2
f[15,0] = array(zabanderado_obj,array(f3),1)
f[15,1] = array(zombie1_obj,a,4)
f[15,2] = array(zombiecarecono_obj,a,4)
f[15,3] = array(zombiecarecubo_obj,a,2)
f[15,4] = array(zombiecoffin_obj,a,2)
f[15,5] = array(protestantzombie_obj,a,1)
f[15,6] = array(zombiecajita_obj,a,3)
f[15,7] = array(zombiemago_obj,a,2)
f[15,8] = array(zombidoctor_obj,a,2)

f[16,0] = array(zombidoctor_obj,a,1)
f[16,1] = array(zombiecarecono_obj,a,3)

f[17,0] = array(zombiecarecubo_obj,a,2)
f[17,1] = array(zombie1_obj,a,3)
f[17,2] = array(zombiemago_obj,a,1)

f[18,0] = array(zombidoctor_obj,a,1)
f[18,1] = array(protestantzombie_obj,a,1)
f[18,2] = array(zombiecajita_obj,a,2)

f[19,0] = array(zombiecoffin_obj,a,1)
f[19,1] = array(icezombie_obj,a,1)

//wave 2
f[20,0] = array(zabanderado_obj,array(f3),1)
f[20,1] = array(zombie1_obj,a,5)
f[20,2] = array(zombiecarecono_obj,a,4)
f[20,3] = array(zombiecarecubo_obj,a,3)
f[20,4] = array(zombiecoffin_obj,a,2)
f[20,5] = array(icezombie_obj,a,4)
f[20,6] = array(zombiemago_obj,a,2)
f[20,7] = array(protestantzombie_obj,a,1)
f[20,8] = array(zombidoctor_obj,a,2)