//To edit level
pt=20//Grace time
fn=15//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 18"
lvl_en="Level 18"
//To edit prize
sprite=menugravebuster1_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=19//level number
money=100//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level

zombie_preview(z_zombie_obj,3)
zombie_preview(z_headbox_obj,2)
zombie_preview(z_newspaper_obj,2)
zombie_preview(z_polevaulter_obj,1)
zombie_preview(z_statue_obj,3)

wf[8]=1
wf[fn-1]=2


f[0,0] = array(z_zombie_obj,a,1)

f[1,0] = array(z_zombie_obj,a,1)

f[2,0] = array(z_zombie_obj,a,2)

f[3,0] = array(z_zombie_obj,a,1)
f[3,1] = array(z_headbox_obj,a,1)

f[4,0] = array(z_newspaper_obj,a,1)

f[5,0] = array(z_zombie_obj,a,1)
f[5,1] = array(z_statue_obj,a,1)

f[6,0] = array(z_newspaper_obj,a,1)
f[6,1] = array(z_headbox_obj,a,1)

f[7,0] = array(z_headbox_obj,a,1)
f[7,1] = array(z_zombie_obj,a,2)

//wave 1
f[8,0] = array(z_newspaper_obj,a,1)
f[8,1] = array(z_flag_obj,array(f3),1)
f[8,2] = array(z_statue_obj,a,3)
f[8,3] = array(z_headbox_obj,a,2)
f[8,4] = array(z_zombie_obj,a,4)

f[9,0] = array(z_zombie_obj,a,2)

f[10,0] = array(z_polevaulter_obj,a,1)
f[10,1] = array(z_zombie_obj,a,2)

f[11,0] = array(z_statue_obj,a,3)
f[11,1] = array(z_newspaper_obj,a,1)
f[11,2] = array(z_headbox_obj,a,1)

f[12,0] = array(z_polevaulter_obj,a,1)
f[12,1] = array(z_newspaper_obj,a,1)
f[12,2] = array(z_zombie_obj,a,2)

f[13,0] = array(z_headbox_obj,a,2)
f[13,1] = array(z_polevaulter_obj,a,2)

//final wave
f[14,0] = array(z_headbox_obj,a,2)
f[14,1] = array(z_flag_obj,array(f3),1)
f[14,2] = array(z_polevaulter_obj,a,2)
f[14,3] = array(z_statue_obj,a,3)
f[14,4] = array(z_newspaper_obj,a,2)
f[14,5] = array(z_zombie_obj,a,3)
