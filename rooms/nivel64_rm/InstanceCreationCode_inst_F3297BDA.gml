//To edit level
pt=12//Grace time
fn=14//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 64"
lvl_en="Level 64"
//To edit prize
sprite=bloverslot_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=65//level number
money=200//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=price_rm//what room go to after passing the level

zombie_preview(z_imp_obj,2)
zombie_preview(z_conehead_obj,2)
zombie_preview(z_buckethead_obj,2)

zombie_preview(z_gardener_obj,2)
zombie_preview(z_statue_obj,2)
zombie_preview(z_ghost_obj,2)
zombie_preview(z_polevaulter_obj,1)

wf[7]=1
wf[fn-1]=2

f[0,0] = array(z_imp_obj,a,1)

f[1,0] = array(z_imp_obj,a,1)

f[2,0] = array(z_conehead_obj,a,1)

f[3,0] = array(z_conehead_obj,a,1)
f[3,1] = array(z_imp_obj,a,1)

f[4,0] = array(z_statue_obj,a,2)
f[4,1] = array(z_conehead_obj,a,2)

f[5,0] = array(z_buckethead_obj,a,1)

f[6,0] = array(z_conehead_obj,a,2)
f[6,1] = array(z_ghost_obj,a,1)

//wave 2
f[7,0] = array(z_flag_obj,array(f3),1)
f[7,1] = array(z_imp_obj,a,2)
f[7,2] = array(z_conehead_obj,a,1)
f[7,3] = array(z_buckethead_obj,a,1)
f[7,4] = array(z_ghost_obj,a,2)
f[7,5] = array(z_statue_obj,a,3)

f[8,0] = array(z_gardener_obj,a,2)
f[8,1] = array(z_conehead_obj,a,1)

f[9,0] = array(z_buckethead_obj,a,2)
f[9,0] = array(z_imp_obj,a,2)

f[10,0] = array(z_conehead_obj,a,2)
f[10,1] = array(z_polevaulter_obj,a,2)
f[10,2] = array(z_statue_obj,a,2)

f[11,0] = array(z_gardener_obj,a,2)
f[11,1] = array(z_buckethead_obj,a,1)

f[12,0] = array(z_ghost_obj,a,3)
f[12,1] = array(z_polevaulter_obj,a,2)
f[12,2] = array(z_statue_obj,a,3)


//wave 2
f[13,0] = array(z_flag_obj,array(f3),1)
f[13,1] = array(z_imp_obj,a,5)
f[13,2] = array(z_conehead_obj,a,2)
f[13,3] = array(z_buckethead_obj,a,3)
f[13,4] = array(z_statue_obj,a,2)
f[13,5] = array(z_gardener_obj,a,2)
f[13,6] = array(z_ghost_obj,a,2)
f[13,7] = array(z_polevaulter_obj,a,3)
