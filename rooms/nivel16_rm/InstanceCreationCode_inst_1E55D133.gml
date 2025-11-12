//To edit level
pt=12//Grace time
fn=12//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 16"
lvl_en="Level 16"

//To edit prize
sprite=menusetasolar1_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=17//level number
money=100//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level

zombie_preview(z_zombie_obj,2)
zombie_preview(z_imp_obj,4)
zombie_preview(z_headbox_obj,2)
zombie_preview(z_conehead_obj,2)
zombie_preview(z_screendoor_obj,2)

wf[fn-1]=2


f[0,0] = array(z_zombie_obj,a,1)

f[1,0] = array(z_zombie_obj,a,1)

f[2,0] = array(z_imp_obj,a,1)

f[3,0] = array(z_imp_obj,a,1)
f[3,1] = array(z_headbox_obj,a,1)

f[4,0] = array(z_conehead_obj,a,1)

f[5,0] = array(z_conehead_obj,a,1)
f[5,1] = array(z_imp_obj,a,1)

f[6,0] = array(z_screendoor_obj,a,1)

f[7,0] = array(z_headbox_obj,a,2)
f[7,1] = array(z_zombie_obj,a,1)

f[8,0] = array(z_imp_obj,a,2)
f[8,1] = array(z_zombie_obj,a,2)

f[9,0] = array(z_conehead_obj,a,2)
f[9,1] = array(z_screendoor_obj,a,1)

f[10,0] = array(z_conehead_obj,a,2)
f[10,1] = array(z_imp_obj,a,3)

//final wave
f[11,0] = array(z_headbox_obj,a,2)
f[11,1] = array(z_flag_obj,array(f3),1)
f[11,2] = array(z_imp_obj,a,2)
f[11,3] = array(z_conehead_obj,a,2)
f[11,4] = array(z_screendoor_obj,a,1)
f[11,5] = array(z_zombie_obj,a,2)
