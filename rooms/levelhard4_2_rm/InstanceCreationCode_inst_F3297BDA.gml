//To edit level
pt=15//Grace time
fn=16//number of waves
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
infinite=false//Is an infinite level?
lvl_es="Nivel difícil 4-2"
lvl_en="Hard level 4-2"
//To edit prize
sprite=bolsa_monedas_spr//prize sprite
prizevar="levelhard4"//prize variable to modify
lvl=2//level number
money=500//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=hardmode_claire_rm//what room go to after passing the level

wf[7]=1
wf[fn-1]=2

zombie_preview(z_duckytube_obj,3)
zombie_preview(z_conehead_obj,2)
zombie_preview(z_buckethead_obj,2)
zombie_preview(z_coffin_obj,1)

zombie_preview(z_allstar_oj,2)
zombie_preview(z_ghost_obj,2)
zombie_preview(z_balloon_obj,2)
zombie_preview(z_snorkel_obj,3)

f[0,0] = array(z_duckytube_obj,a,1)

f[1,0] = array(z_duckytube_obj,a,1)

f[2,0] = array(z_duckytube_obj,a,2)

f[3,0] = array(z_duckytube_obj,a,1)
f[3,1] = array(z_snorkel_obj,a,1)

f[4,0] = array(z_duckytube_obj,a,1)
f[4,1] = array(z_conehead_obj,a,2)

f[5,0] = array(z_duckytube_obj,a,2)

f[6,0] = array(z_ghost_obj,a,1)
f[6,1] = array(z_duckytube_obj,a,1)

//wave 2
f[7,0] = array(z_flag_obj,array(f3),1)
f[7,1] = array(z_buckethead_obj,a,1)
f[7,2] = array(z_conehead_obj,a,2)
f[7,3] = array(z_duckytube_obj,a,2)
f[7,4] = array(z_snorkel_obj,a,1)
f[7,5] = array(z_ghost_obj,a,1)

f[8,0] = array(z_balloon_obj,a,1)

f[9,0] = array(z_snorkel_obj,a,2)
f[9,1] = array(z_duckytube_obj,a,2)

f[10,0] = array(z_buckethead_obj,a,1)
f[10,1] = array(z_ghost_obj,a,2)
f[10,2] = array(z_snorkel_obj,a,1)

f[11,0] = array(z_allstar_oj,a,1)
f[11,1] = array(z_conehead_obj,a,2)

f[12,0] = array(z_coffin_obj,a,1)
f[12,1] = array(z_duckytube_obj,a,3)

f[13,0] = array(z_conehead_obj,a,2)
f[13,1] = array(z_balloon_obj,a,2)
f[13,2] = array(z_snorkel_obj,a,1)

f[14,0] = array(z_snorkel_obj,a,2)
f[14,1] = array(z_allstar_oj,a,1)
f[14,2] = array(z_duckytube_obj,a,2)

//wave 4
f[15,0] = array(z_rally_obj,array(f3),1)
f[15,1] = array(z_buckethead_obj,a,1)
f[15,2] = array(z_conehead_obj,a,2)
f[15,3] = array(z_duckytube_obj,a,4)
f[15,4] = array(z_allstar_oj,a,1)
f[15,5] = array(z_snorkel_obj,a,2)
f[15,6] = array(z_ghost_obj,a,2)
f[15,7] = array(z_coffin_obj,a,1)
f[15,8] = array(z_balloon_obj,a,2)
