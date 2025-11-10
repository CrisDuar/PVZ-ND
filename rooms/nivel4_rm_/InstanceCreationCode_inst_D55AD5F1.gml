//To edit level

pt=5//Grace time
fn=7//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 4"
lvl_en="Level 4"

//To edit prize
sprite=bolsa_monedas_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=5//level number
money=100//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=level1_sl_rm_//what room go to after passing the level

zombie_preview(zombieheadbox_obj,3)
zombie_preview(zombiepapsho_obj,4)

wf[fn-1]=2

f[0,0] = array(zombieheadbox_obj,a,2)

f[1,0] = array(zombiepapsho_obj,a,2)
f[1,1] = array(zombieheadbox_obj,a,3)

f[2,0] = array(zombieheadbox_obj,a,2)

f[3,0] = array(zombieheadbox_obj,a,2)
f[3,1] = array(zombiepapsho_obj,a,4)

f[4,0] = array(zombiepapsho_obj,a,4)

f[5,0] = array(zombieheadbox_obj,a,2)

//final wave
f[6,0] = array(zombieheadbox_obj,a,2)
f[6,1] = array(zabanderado_obj,array(f3),1)
f[6,2] = array(zombiepapsho_obj,a,2)
f[6,3] = array(zombieheadbox_obj,a,2)
f[6,4] = array(zombiepapsho_obj,a,2)
