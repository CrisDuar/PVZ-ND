//To edit level
pt=30//Grace time
fn=20//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel difícil 4-6"
lvl_en="Hard level 4-6"
//To edit prize
sprite=petasetaslot_spr//prize sprite
prizevar="levelhard4"//prize variable to modify
lvl=6//level number
money=1000//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level

n = array(f1,f3,f5)

zombie_preview(zombiecarecono_obj,2)
zombie_preview(zombiecarecubo_obj,2)
zombie_preview(zombiecoffin_obj,2)

zombie_preview(zombieglobo_obj,2)
zombie_preview(ghost_obj,2)
zombie_preview(zombiesecta1_obj,2)
zombie_preview(zombidoctor_obj,2)

zombie_preview(caja_obj,2)

wf[7]=1
wf[11]=1
wf[15]=1
wf[fn-1]=2


f[0,0] = array(zombiecarecono_obj,array(f3),1)

f[1,0] = array(zombiecarecono_obj,array(f3),1)
f[1,1] = array(cajaspawn_obj,a,2)

f[2,0] = array(zombiecarecono_obj,a,2)

f[3,0] = array(zombieglobo_obj,a,1)
f[3,1] = array(zombiecarecono_obj,a,2)

f[4,0] = array(zombiecarecubo_obj,a,1)
f[4,1] = array(zombiecarecono_obj,a,2)

f[5,0] = array(zombidoctor_obj,a,1)
f[5,1] = array(zombiecarecono_obj,a,2)

f[6,0] = array(zombiecarecubo_obj,a,1)
f[6,1] = array(ghost_obj,a,1)
f[6,2] = array(cajaspawn_obj,a,3)
f[6,3] = array(zombiecarecono_obj,a,2)

//wave 2
f[7,0] = array(zabanderado_obj,a,1)
f[7,1] = array(zombiecarecubo_obj,a,2)
f[7,2] = array(zombiecarecono_obj,a,3)
f[7,3] = array(zombidoctor_obj,a,2)
f[7,4] = array(ghost_obj,a,2)
f[7,5] = array(zombieglobo_obj,a,3)

f[8,0] = array(zombiecoffin_obj,a,1)

f[9,0] = array(zombiecarecubo_obj,a,2)
f[9,1] = array(zombidoctor_obj,a,2)
f[9,2] = array(zombiecarecono_obj,a,3)

f[10,0] = array(zombiesecta1_obj,a,1)
f[10,1] = array(zombiecarecono_obj,a,3)

//wave 3
f[11,0] = array(zabanderadohard_obj,a,1)
f[11,1] = array(zombiecarecono_obj,a,4)
f[11,2] = array(zombiecarecubo_obj,a,2)
f[11,3] = array(zombiecoffin_obj,a,2)
f[11,4] = array(ghost_obj,a,2)

f[12,0] = array(zombiesecta1_obj,a,2)
f[12,1] = array(zombiecarecono_obj,a,2)

f[13,0] = array(cajaspawn_obj,a,4)
f[13,1] = array(zombiecarecono_obj,a,3)
f[13,2] = array(ghost_obj,a,2)

f[14,0] = array(zombiecarecono_obj,a,2)
f[14,1] = array(zombiecarecubo_obj,a,1)
f[14,2] = array(ghost_obj,a,2)

//wave 4
f[15,0] = array(zabanderado_obj,a,1)
f[15,1] = array(zombiecarecono_obj,a,4)
f[15,2] = array(zombiecarecubo_obj,a,2)
f[15,3] = array(zombiecoffin_obj,a,2)
f[15,4] = array(zombiesecta1_obj,a,2)
f[15,5] = array(zombidoctor_obj,a,2)
f[15,6] = array(zombieglobo_obj,a,4)

f[16,0] = array(cajaspawn_obj,a,3)
f[16,1] = array(zombiecarecono_obj,a,2)

f[17,0] = array(zombiecarecubo_obj,a,3)
f[17,1] = array(zombiesecta1_obj,a,2)
f[17,2] = array(zombiecarecono_obj,a,2)

f[18,0] = array(zombidoctor_obj,a,2)
f[18,1] = array(zombiecoffin_obj,a,2)
f[18,2] = array(zombiecarecubo_obj,a,2)

//final wave
f[19,0] = array(zabanderadohard_obj,a,1)
f[19,1] = array(zombidoctor_obj,a,2)
f[19,2] = array(zombiecarecubo_obj,a,4)
f[19,3] = array(zombiecarecono_obj,a,4)
f[19,4] = array(zombiecoffin_obj,a,3)
f[19,5] = array(zombieglobo_obj,a,5)
f[19,6] = array(ghost_obj,a,3)
f[19,7] = array(zombiesecta1_obj,a,2)
