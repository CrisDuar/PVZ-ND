//To edit level

pt=12//Grace time
fn=7//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 3"
lvl_en="Level 3"

//To edit prize
sprite=nutslot1_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=4//level number
money=50//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level

zombie_preview(z_zombie_obj,2)
zombie_preview(z_paperthrower_obj,1)
zombie_preview(z_headbox_obj,2)

wf[fn-1]=2

f[0,0] = array(z_zombie_obj,a,1)

f[1,0] = array(z_zombie_obj,a,1)

f[2,0] = array(z_headbox_obj,a,1)
f[2,1] = array(z_zombie_obj,a,1)

f[3,0] = array(z_paperthrower_obj,a,1)

f[4,0] = array(z_zombie_obj,a,2)
f[4,1] = array(z_headbox_obj,a,1)

f[5,0] = array(z_paperthrower_obj,a,2)

//final wave
f[6,0] = array(z_zombie_obj,a,2)
f[6,1] = array(z_flag_obj,array(f3),1)
f[6,2] = array(z_paperthrower_obj,a,2)
f[6,3] = array(z_headbox_obj,a,2)