//To edit level
pt=5//Grace time
fn=20//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 59"
lvl_en="Level 59"
//To edit prize
sprite=oculartreeslot_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=60//level number
money=300//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level
horde_ttl_hp=0.1

zombie_preview(zombie1_obj,2)
zombie_preview(zombiecarecono_obj,3)
zombie_preview(zombiecarecubo_obj,2)
zombie_preview(zombiecoffin_obj,2)
zombie_preview(zomboni_obj,1)
zombie_preview(zombiecajita_obj,2)
zombie_preview(futbolzombi_obj,2)
zombie_preview(zombidoctor_obj,2)
zombie_preview(caja_obj,2)
zombie_preview(zombiestatua_obj,2)

wf[9]=1
wf[14]=1
wf[fn-1]=2

f[0,0] = array(zombie1_obj,a,1)

f[1,0] = array(zombie1_obj,a,2)

f[2,0] = array(zombiecarecono_obj,a,1)
f[2,1] = array(zombie1_obj,a,1)

f[3,0] = array(zombiecarecono_obj,a,2)
f[3,1] = array(cajaspawn_obj,a,2)

f[4,0] = array(zombiecarecubo_obj,a,1)
f[4,1] = array(zombie1_obj,a,2)

f[5,0] = array(zombiecarecono_obj,a,1)
f[5,1] = array(zombiestatua_obj,a,2)

f[6,0] = array(zombiecarecubo_obj,a,2)

f[7,0] = array(futbolzombi_obj,a,1)
f[7,1] = array(zombiecarecono_obj,a,1)

f[8,0] = array(zombidoctor_obj,a,1)

//wave 1
f[9,0] = array(zabanderado_obj,array(f3),1)
f[9,1] = array(zombiestatua_obj,a,2)
f[9,2] = array(zombiecarecono_obj,a,2)
f[9,3] = array(zombiecarecubo_obj,a,1)
f[9,4] = array(futbolzombi_obj,a,1)
f[9,5] = array(cajaspawn_obj,a,2)
f[9,6] = array(zombiecajita_obj,a,1)

f[10,0] = array(futbolzombi_obj,a,1)

f[11,0] = array(zomboni_obj,a,1)

f[12,0] = array(cajaspawn_obj,a,2)
f[12,1] = array(zombiecajita_obj,a,1)

f[13,0] = array(zombiecoffin_obj,a,1)
f[13,1] = array(futbolzombi_obj,a,1)

//wave 2
f[14,0] = array(zabanderado_obj,array(f3),1)
f[14,1] = array(zombiestatua_obj,a,4)
f[14,2] = array(zombiecarecono_obj,a,2)
f[14,3] = array(zombiecarecubo_obj,a,2)
f[14,4] = array(zombiecoffin_obj,a,2)
f[14,5] = array(futbolzombi_obj,a,2)
f[14,6] = array(zombidoctor_obj,a,1)

f[15,0] = array(zombiecarecubo_obj,a,1)

f[16,0] = array(zombiecajita_obj,a,2)
f[16,1] = array(zombidoctor_obj,a,2)

f[17,0] = array(futbolzombi_obj,a,2)
f[17,1] = array(zombiestatua_obj,a,2)

f[18,0] = array(cajaspawn_obj,a,2)
f[18,1] = array(zombie1_obj,a,2)

//wave 2
f[19,0] = array(zabanderado_obj,array(f3),1)
f[19,1] = array(cajaspawn_obj,a,3)
f[19,2] = array(zomboni_obj,a,1)
f[19,3] = array(zombiecarecono_obj,a,1)
f[19,4] = array(zombiecarecubo_obj,a,2)
f[19,5] = array(zombiecajita_obj,a,2)
f[19,6] = array(futbolzombi_obj,a,2)
f[19,7] = array(zombidoctor_obj,a,2)
f[19,8] = array(zombiecoffin_obj,a,1)
f[19,9] = array(zombiestatua_obj,a,3)
