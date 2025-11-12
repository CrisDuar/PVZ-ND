//To edit level
pt=7//Grace time
fn=4//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 1"
lvl_en="Level 1"

//To edit prize
sprite=menusun1_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=2//level number
money=10//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level

zombie_preview(z_zombie_obj,3)

wf[fn-1]=2

a=array(f3)

f[0,0] = array(z_zombie_obj,a,1)

f[1,0] = array(z_zombie_obj,a,1)

f[2,0] = array(z_zombie_obj,a,2)

//final wave
f[3,0] = array(z_zombie_obj,a,2)
f[3,1] = array(z_flag_obj,array(f3),1)