//To edit level
pt=3//Grace time
fn=12//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel 49"
lvl_en="Level 49"

//To edit prize
sprite=bolsa_monedas_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=50//level number
money=800//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=level3_sl_rm//what room go to after passing the level
surprise_enabled=false
horde_ttl_hp=0.2
//Rows
f1=152
f2=236
f3=236
f4=527
f5=527
f6=615

a=array(f1,f2,f3,f4,f5,f6)
w=array(f3,f4)
b=array(f1,f2,f5,f6)

zombie_preview(z_zombie_obj,2)
zombie_preview(z_conehead_obj,2)
zombie_preview(z_buckethead_obj,2)

zombie_preview(z_rocket_obj,3)
zombie_preview(z_trashcan_obj,2)
zombie_preview(z_balloon_obj,2)
zombie_preview(z_zomboni_obj,2)
zombie_preview(z_protesterleader_obj,2)



wf[6]=1
wf[fn-1]=2


f[0,0] = array(z_zombie_obj,b,3)

f[1,0] = array(z_conehead_obj,b,3)
f[1,1] = array(z_zombie_obj,b,2)

f[2,0] = array(z_conehead_obj,b,3)
f[2,1] = array(z_buckethead_obj,b,1)

f[3,0] = array(z_trashcan_obj,b,2)
f[3,1] = array(z_conehead_obj,b,3)

f[4,0] = array(z_rocket_obj,b,3)
f[4,1] = array(z_buckethead_obj,b,2)

f[5,0] = array(z_protesterleader_obj,b,1)
f[5,1] = array(z_conehead_obj,b,3)
f[5,2] = array(z_balloon_obj,b,3)

//wave 2
f[6,0] = array(z_flag_obj,array(f2,f5),1)
f[6,1] = array(z_conehead_obj,b,2)
f[6,2] = array(z_buckethead_obj,b,3)
f[6,3] = array(z_rocket_obj,b,3)
f[6,4] = array(z_balloon_obj,b,2)
f[6,5] = array(z_trashcan_obj,b,2)
f[6,6] = array(z_protesterleader_obj,b,1)

f[7,0] = array(z_buckethead_obj,b,1)
f[7,1] = array(z_protesterleader_obj,b,1)

f[8,0] = array(z_protesterleader_obj,b,2)
f[8,1] = array(z_zomboni_obj,b,1)
f[8,2] = array(z_balloon_obj,b,2)

f[9,0] = array(z_trashcan_obj,b,2)
f[9,1] = array(z_rocket_obj,b,2)
f[9,2] = array(z_buckethead_obj,b,1)

f[10,0] = array(z_balloon_obj,b,3)
f[10,1] = array(z_conehead_obj,b,2)
f[10,2] = array(z_zomboni_obj,b,1)

//wave 3
f[11,0] = array(z_rally_obj,array(f2,f5),1)
f[11,1] = array(z_conehead_obj,b,3)
f[11,2] = array(z_buckethead_obj,b,2)
f[11,3] = array(z_rocket_obj,b,3)
f[11,4] = array(z_balloon_obj,b,4)
f[11,5] = array(z_trashcan_obj,b,4)
f[11,6] = array(z_protesterleader_obj,b,2)
f[11,7] = array(z_zomboni_obj,b,2)
