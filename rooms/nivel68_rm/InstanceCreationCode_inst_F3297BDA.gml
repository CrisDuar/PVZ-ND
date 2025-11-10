//To edit level
pt=12//Grace time
fn=18//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 68"
lvl_en="Level 68"
//To edit prize
sprite=bolsa_monedas_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=69//level number
money=200//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=level4_sl_rm//what room go to after passing the level

zombie_preview(imp_obj,1)
zombie_preview(zombieheadbox_obj,1)
zombie_preview(zombiecarecubo_obj,2)

zombie_preview(zombiemago_obj,2)
zombie_preview(zombierocket_obj,2)
zombie_preview(ghost_obj,2)
zombie_preview(futbolzombi_obj,1)

wf[9]=1
wf[fn-1]=2

f[0,0] = array(imp_obj,a,1)

f[1,0] = array(imp_obj,a,1)

f[2,0] = array(imp_obj,a,1)
f[2,1] = array(zombieheadbox_obj,a,1)

f[3,0] = array(imp_obj,a,1)

f[4,0] = array(zombieheadbox_obj,a,2)

f[5,0] = array(zombiecarecubo_obj,a,1)
f[5,1] = array(imp_obj,a,1)

f[6,0] = array(zombiemago_obj,a,1)
f[6,1] = array(zombieheadbox_obj,a,2)

f[7,0] = array(imp_obj,a,3)
f[7,1] = array(zombieheadbox_obj,a,2)

f[8,0] = array(zombiecarecubo_obj,a,2)

//wave 2
f[9,0] = array(zabanderado_obj,array(f3),1)
f[9,1] = array(imp_obj,a,3)
f[9,2] = array(zombieheadbox_obj,a,2)
f[9,3] = array(zombiecarecubo_obj,a,3)
f[9,4] = array(zombiemago_obj,a,2)
f[9,5] = array(zombierocket_obj,a,2)

f[10,0] = array(zombiecarecubo_obj,a,1)
f[10,1] = array(zombieheadbox_obj,a,1)

f[11,0] = array(futbolzombi_obj,a,1)
f[11,1] = array(zombiemago_obj,a,1)

f[12,0] = array(zombierocket_obj,a,2)
f[12,1] = array(ghost_obj,a,2)
f[12,2] = array(zombieheadbox_obj,a,2)

f[13,0] = array(futbolzombi_obj,a,2)
f[13,1] = array(zombiecarecubo_obj,a,1)
f[13,2] = array(zombiemago_obj,a,2)

f[14,0] = array(ghost_obj,a,2)
f[14,1] = array(zombiecarecubo_obj,a,1)

f[15,0] = array(zombiemago_obj,a,2)
f[15,1] = array(zombierocket_obj,a,3)

f[16,0] = array(futbolzombi_obj,a,1)
f[16,1] = array(zombiemago_obj,a,2)
f[16,2] = array(zombieheadbox_obj,a,2)

//wave 2
f[17,0] = array(zabanderado_obj,array(f3),1)
f[17,1] = array(imp_obj,a,4)
f[17,2] = array(zombieheadbox_obj,a,3)
f[17,3] = array(zombiecarecubo_obj,a,2)
f[17,4] = array(zombiemago_obj,a,2)
f[17,5] = array(zombierocket_obj,a,3)
f[17,6] = array(ghost_obj,a,3)
f[17,7] = array(futbolzombi_obj,a,2)