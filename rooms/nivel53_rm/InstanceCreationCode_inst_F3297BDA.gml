//To edit level
pt=12//Grace time
fn=15//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 53"
lvl_en="Level 53"
//To edit prize
sprite=setatoxicaslot_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=54//level number
money=150//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level

zombie_preview(zombie1_obj,2)
zombie_preview(zombiecarecubo_obj,2)
zombie_preview(zombieheadbox_obj,3)
zombie_preview(zombiecoffin_obj,1)
zombie_preview(zombieglobo_obj,2)
zombie_preview(icezombie_obj,2)

wf[9]=1
wf[fn-1]=2

f[0,0] = array(zombie1_obj,a,1)

f[1,0] = array(zombieheadbox_obj,a,1)

f[2,0] = array(zombieheadbox_obj,a,1)

f[3,0] = array(zombie1_obj,a,1)
f[3,1] = array(icezombie_obj,a,1)

f[4,0] = array(zombieheadbox_obj,a,2)

f[5,0] = array(zombiecarecubo_obj,a,1)

f[6,0] = array(icezombie_obj,a,1)
f[6,1] = array(zombieheadbox_obj,a,1)

f[7,0] = array(zombieglobo_obj,a,1)
f[7,1] = array(icezombie_obj,a,2)

f[8,0] = array(zombieheadbox_obj,a,1)
f[8,1] = array(zombiecarecubo_obj,a,1)

//wave 1
f[9,0] = array(zabanderado_obj,array(f3),1)
f[9,1] = array(zombie1_obj,a,2)
f[9,2] = array(zombieheadbox_obj,a,3)
f[9,3] = array(zombiecarecubo_obj,a,2)
f[9,4] = array(icezombie_obj,a,2)
f[9,5] = array(zombieglobo_obj,a,1)

f[10,0] = array(zombie1_obj,a,1)

f[11,0] = array(zombiecoffin_obj,a,1)

f[12,0] = array(zombieheadbox_obj,a,1)
f[12,1] = array(zombieglobo_obj,a,3)

f[13,0] = array(zombiecoffin_obj,a,2)
f[13,1] = array(icezombie_obj,a,1)

//wave 2
f[14,0] = array(zabanderado_obj,array(f3),1)
f[14,1] = array(zombie1_obj,a,2)
f[14,2] = array(zombieheadbox_obj,a,2)
f[14,3] = array(zombiecarecubo_obj,a,2)
f[14,4] = array(icezombie_obj,a,2)
f[14,5] = array(zombieglobo_obj,a,2)