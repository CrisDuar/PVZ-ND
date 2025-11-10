//To edit level
pt=12//Grace time
fn=17//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 62"
lvl_en="Level 62"
//To edit prize
sprite=bolsa_monedas_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=63//level number
money=200//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=level4_sl_rm//what room go to after passing the level

zombie_preview(zombie1_obj,2)
zombie_preview(zombiecarecono_obj,2)
zombie_preview(zombiecarecubo_obj,2)
zombie_preview(zombiemago_obj,2)
zombie_preview(protestantzombie_obj,2)
zombie_preview(zombiecoffin_obj,2)
zombie_preview(futbolzombi_obj,1)

wf[11]=1
wf[fn-1]=2


f[0,0] = array(zombie1_obj,a,1)

f[1,0] = array(zombie1_obj,a,2)

f[2,0] = array(zombie1_obj,a,2)

f[3,0] = array(zombiecarecono_obj,a,1)
f[3,1] = array(zombie1_obj,a,2)

f[4,0] = array(zombiemago_obj,a,1)
f[4,1] = array(zombie1_obj,a,3)
f[4,2] = array(zombiecarecono_obj,a,1)

f[5,0] = array(zombiecarecubo_obj,a,1)
f[5,1] = array(zombie1_obj,a,1)

f[6,0] = array(zombiecarecono_obj,a,2)
f[6,1] = array(zombie1_obj,a,1)

f[7,0] = array(zombiemago_obj,a,2)
f[7,1] = array(zombie1_obj,a,4)

f[8,0] = array(zombiecarecono_obj,a,2)
f[8,1] = array(zombie1_obj,a,3)

f[9,0] = array(protestantzombie_obj,a,1)
f[9,1] = array(zombiecarecono_obj,a,2)

f[10,0] = array(zombiecarecono_obj,a,2)

//wave 2
f[11,0] = array(zabanderado_obj,array(f3),1)
f[11,1] = array(zombie1_obj,a,5)
f[11,2] = array(zombiecarecono_obj,a,3)
f[11,3] = array(zombiemago_obj,a,2)
f[11,4] = array(protestantzombie_obj,a,1)
f[11,5] = array(zombiecarecubo_obj,a,2)

f[12,0] = array(zombiecarecono_obj,a,2)

f[13,0] = array(futbolzombi_obj,a,2)
f[13,1] = array(zombiecarecono_obj,a,1)

f[14,0] = array(zombiecoffin_obj,a,2)
f[14,1] = array(protestantzombie_obj,a,1)
f[14,2] = array(zombiecarecono_obj,a,2)

f[15,0] = array(zombiemago_obj,a,3)
f[15,1] = array(zombie1_obj,a,4)
f[15,2] = array(zombiecarecono_obj,a,2)

//wave 2
f[16,0] = array(zabanderado_obj,array(f3),1)
f[16,1] = array(zombie1_obj,a,5)
f[16,2] = array(zombiecarecono_obj,a,2)
f[16,3] = array(zombiecarecubo_obj,a,2)
f[16,4] = array(zombiemago_obj,a,2)
f[16,5] = array(zombiecoffin_obj,a,2)
f[16,6] = array(futbolzombi_obj,a,2)
f[16,7] = array(protestantzombie_obj,a,1)
