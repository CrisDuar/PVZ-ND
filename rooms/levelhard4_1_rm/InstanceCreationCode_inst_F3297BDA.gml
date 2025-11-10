//To edit level
pt=5//Grace time
fn=16//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel difícil 4-1"
lvl_en="Hard level 4-1"
//To edit prize
sprite=bolsa_monedas_spr//prize sprite
prizevar="levelhard4"//prize variable to modify
lvl=1//level number
money=500//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=hardmode_claire_rm//what room go to after passing the level

wf[7]=1
wf[11]=1
wf[fn-1]=2

zombie_preview(imp_obj,2)
zombie_preview(zombie1_obj,1)
zombie_preview(zombiecarecono_obj,2)
zombie_preview(zombiecarecubo_obj,1)

zombie_preview(zombiejardinero_obj,2)
zombie_preview(zombidoctor_obj,1)

f[0,0] = array(zombie1_obj,a,1)

f[1,0] = array(imp_obj,a,1)

f[2,0] = array(zombie1_obj,a,1)
f[2,1] = array(imp_obj,a,1)

f[3,0] = array(zombiecarecono_obj,a,1)
f[3,1] = array(zombie1_obj,a,2)

f[4,0] = array(zombiecarecono_obj,a,1)
f[4,1] = array(imp_obj,a,1)
f[4,2] = array(zombie1_obj,a,1)

f[5,0] = array(zombie1_obj,a,1)
f[5,1] = array(zombiejardinero_obj,a,2)

f[6,0] = array(zombiecarecubo_obj,a,1)
f[6,1] = array(zombie1_obj,a,2)

//wave 2
f[7,0] = array(zabanderado_obj,array(f3),1)
f[7,1] = array(zombiecarecubo_obj,a,1)
f[7,2] = array(zombiecarecono_obj,a,2)
f[7,3] = array(zombie1_obj,a,3)
f[7,4] = array(zombiejardinero_obj,a,2)
f[7,5] = array(imp_obj,a,3)

f[8,0] = array(zombie1_obj,a,2)
f[8,1] = array(zombiecarecono_obj,a,2)

f[9,0] = array(zombiecarecono_obj,a,2)
f[9,1] = array(zombidoctor_obj,a,2)

f[10,0] = array(zombiecarecubo_obj,a,2)
f[10,1] = array(zombiejardinero_obj,a,2)

//wave 3
f[11,0] = array(zabanderado_obj,array(f3),1)
f[11,1] = array(zombiecarecubo_obj,a,3)
f[11,2] = array(zombiecarecono_obj,a,2)
f[11,3] = array(zombie1_obj,a,3)
f[11,4] = array(zombiejardinero_obj,a,3)
f[11,5] = array(zombidoctor_obj,a,2)

f[12,0] = array(zombiecarecono_obj,a,2)
f[12,1] = array(zombie1_obj,a,2)
f[12,2] = array(imp_obj,a,1)

f[13,0] = array(zombiecarecubo_obj,a,2)
f[13,1] = array(zombidoctor_obj,a,1)

f[14,0] = array(zombiejardinero_obj,a,3)
f[14,1] = array(zombidoctor_obj,a,1)
f[14,2] = array(zombiecarecono_obj,a,2)

//wave 4
f[15,0] = array(zabanderadohard_obj,array(f3),1)
f[15,1] = array(zombiecarecubo_obj,a,1)
f[15,2] = array(zombiecarecono_obj,a,2)
f[15,3] = array(zombie1_obj,a,3)
f[15,4] = array(zombiejardinero_obj,a,2)
f[15,5] = array(zombidoctor_obj,a,2)
f[15,6] = array(imp_obj,a,3)
