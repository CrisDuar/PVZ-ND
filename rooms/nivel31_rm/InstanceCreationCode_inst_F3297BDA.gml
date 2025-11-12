//To edit level
pt=20//Grace time
fn=7//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 31"
lvl_en="Level 31"

//To edit prize
sprite=lilyslot_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=32//level number
money=300//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level

//Rows
f1=152
f2=236
f3=339
f4=422
f5=527
f6=615

a=array(f1,f2,f3,f4,f5,f6)
w=array(f3,f4)
b=array(f1,f2,f5,f6)


zombie_preview(z_zombie_obj,2)
zombie_preview(z_conehead_obj,2)
zombie_preview(z_screendoor_obj,3)

wf[fn-1]=2

f[0,0] = array(z_zombie_obj,b,1)

f[1,0] = array(z_zombie_obj,b,1)

f[2,0] = array(z_conehead_obj,b,1)

f[3,0] = array(z_conehead_obj,a,1)
f[3,1] = array(z_zombie_obj,a,1)

f[4,0] = array(z_conehead_obj,a,2)
f[4,1] = array(z_zombie_obj,a,1)

f[5,0] = array(z_screendoor_obj,a,1)

//wave 1
f[6,0] = array(z_flag_obj,array(f3,f4),1)
f[6,1] = array(z_zombie_obj,a,3)
f[6,2] = array(z_conehead_obj,a,2)
f[6,3] = array(z_screendoor_obj,a,1)