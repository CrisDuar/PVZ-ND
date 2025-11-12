//To edit level
pt=12//Grace time
fn=17//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 60"
lvl_en="Level 60"
//To edit prize
sprite=electripearslot_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=61//level number
money=200//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level

zombie_preview(z_zombie_obj,2)
zombie_preview(z_headbox_obj,3)
zombie_preview(z_skeleton_obj,2)
zombie_preview(z_imp_obj,2)
zombie_preview(z_doctor_obj,2)
zombie_preview(z_ghost_obj,1)
zombie_preview(z_icehead_obj,2)

wf[fn-1]=2

f[0,0] = array(z_zombie_obj,a,1)

f[1,0] = array(z_imp_obj,a,1)

f[2,0] = array(z_zombie_obj,a,1)

f[3,0] = array(z_headbox_obj,a,1)
f[3,1] = array(z_zombie_obj,a,1)

f[4,0] = array(z_headbox_obj,a,2)
f[4,1] = array(z_imp_obj,a,1)

f[5,0] = array(z_skeleton_obj,a,2)

f[6,0] = array(z_headbox_obj,a,2)
f[6,1] = array(z_icehead_obj,a,1)

f[7,0] = array(z_doctor_obj,a,1)

f[8,0] = array(z_skeleton_obj,a,1)
f[8,1] = array(z_imp_obj,a,3)

f[9,0] = array(z_headbox_obj,a,2)
f[9,1] = array(z_zombie_obj,a,2)

f[10,0] = array(z_icehead_obj,a,2)
f[10,1] = array(z_doctor_obj,a,1)

f[11,0] = array(z_ghost_obj,a,1)

f[12,0] = array(z_icehead_obj,a,2)
f[12,0] = array(z_doctor_obj,a,1)

f[13,0] = array(z_skeleton_obj,a,2)
f[13,1] = array(z_imp_obj,a,1)
f[13,2] = array(z_zombie_obj,a,1)

f[14,0] = array(z_headbox_obj,a,2)
f[14,1] = array(z_doctor_obj,a,1)

f[15,0] = array(z_ghost_obj,a,3)
f[15,1] = array(z_imp_obj,a,3)

//wave 1
f[16,0] = array(z_flag_obj,array(f3),1)
f[16,1] = array(z_zombie_obj,a,1)
f[16,2] = array(z_headbox_obj,a,2)
f[16,3] = array(z_skeleton_obj,a,3)
f[16,4] = array(z_icehead_obj,a,3)
f[16,5] = array(z_imp_obj,a,2)
f[16,6] = array(z_doctor_obj,a,2)
f[16,7] = array(z_ghost_obj,a,3)