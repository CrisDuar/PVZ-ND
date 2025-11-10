//To edit level
pt=15//Grace time
fn=16//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel difícil 4-2"
lvl_en="Hard level 4-2"
//To edit prize
sprite=bolsa_monedas_spr//prize sprite
prizevar="levelhard4"//prize variable to modify
lvl=2//level number
money=500//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=hardmode_claire_rm//what room go to after passing the level

wf[7]=1
wf[fn-1]=2

zombie_preview(duckzombie_obj,3)
zombie_preview(zombiecarecono_obj,2)
zombie_preview(zombiecarecubo_obj,2)
zombie_preview(zombiecoffin_obj,1)

zombie_preview(futbolzombi_obj,2)
zombie_preview(ghost_obj,2)
zombie_preview(zombieglobo_obj,2)
zombie_preview(zombiebuzo_obj,3)

f[0,0] = array(duckzombie_obj,a,1)

f[1,0] = array(duckzombie_obj,a,1)

f[2,0] = array(duckzombie_obj,a,2)

f[3,0] = array(duckzombie_obj,a,1)
f[3,1] = array(zombiebuzo_obj,a,1)

f[4,0] = array(duckzombie_obj,a,1)
f[4,1] = array(zombiecarecono_obj,a,2)

f[5,0] = array(duckzombie_obj,a,2)

f[6,0] = array(ghost_obj,a,1)
f[6,1] = array(duckzombie_obj,a,1)

//wave 2
f[7,0] = array(zabanderado_obj,array(f3),1)
f[7,1] = array(zombiecarecubo_obj,a,1)
f[7,2] = array(zombiecarecono_obj,a,2)
f[7,3] = array(duckzombie_obj,a,2)
f[7,4] = array(zombiebuzo_obj,a,1)
f[7,5] = array(ghost_obj,a,1)

f[8,0] = array(zombieglobo_obj,a,1)

f[9,0] = array(zombiebuzo_obj,a,2)
f[9,1] = array(duckzombie_obj,a,2)

f[10,0] = array(zombiecarecubo_obj,a,1)
f[10,1] = array(ghost_obj,a,2)
f[10,2] = array(zombiebuzo_obj,a,1)

f[11,0] = array(futbolzombi_obj,a,1)
f[11,1] = array(zombiecarecono_obj,a,2)

f[12,0] = array(zombiecoffin_obj,a,1)
f[12,1] = array(duckzombie_obj,a,3)

f[13,0] = array(zombiecarecono_obj,a,2)
f[13,1] = array(zombieglobo_obj,a,2)
f[13,2] = array(zombiebuzo_obj,a,1)

f[14,0] = array(zombiebuzo_obj,a,2)
f[14,1] = array(futbolzombi_obj,a,1)
f[14,2] = array(duckzombie_obj,a,2)

//wave 4
f[15,0] = array(zabanderadohard_obj,array(f3),1)
f[15,1] = array(zombiecarecubo_obj,a,1)
f[15,2] = array(zombiecarecono_obj,a,2)
f[15,3] = array(duckzombie_obj,a,4)
f[15,4] = array(futbolzombi_obj,a,1)
f[15,5] = array(zombiebuzo_obj,a,2)
f[15,6] = array(ghost_obj,a,2)
f[15,7] = array(zombiecoffin_obj,a,1)
f[15,8] = array(zombieglobo_obj,a,2)
