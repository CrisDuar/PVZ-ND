event_inherited();
/*
//ZOMBIES
lst_data=ds_list_create()
lst_armor=ds_list_create()
lst_trick=ds_list_create()

ds_list_add(lst_data
,array(zombie1_obj, 1, 100, 1)
,array(imp_obj, 1, 90, 1)
,array(duckzombie_obj, 1, 90, 1)

,array(zombieheadbox_obj, 1, 90, 2)
,array(zombiecarecono_obj, 2, 90, 2)
,array(zombiedoor_obj, 3, 90, 3)
,array(zombiecarecubo_obj, 4, 90, 3)
,array(futbolzombi_obj, 4, 90, 4)
,array(zombiecoffin_obj, 4, 90, 4)

//truco
,array(zombiepapsho_obj, 2, 60, 2)
,array(icezombie_obj, 2, 75, 2)
,array(zombiebuzo_obj, 2, 60, 2)
,array(cajaspawn_obj, 2, 60, 2)
,array(zombiejardinero_obj, 2, 60, 2)
,array(zombiepole_obj, 2, 75, 2)
,array(zombiecajita_obj, 2, 75, 2)
,array(zombiestatua_obj, 3, 75, 2)
,array(zombiemago_obj, 3, 75, 2)

,array(ghost_obj, 2, 50, 3)
,array(zombielector_obj, 3, 60, 3)
,array(zombierocket_obj, 3, 60, 3)
,array(skeleton_obj, 3, 75, 3)
,array(zomtorch_obj, 3, 75, 3)
,array(zombieglobo_obj, 3, 60, 3)
,array(trashcanzombie_obj, 4, 75, 3)
,array(zompanel_obj, 4, 75, 3)
,array(zombiemolotov_obj, 4, 75, 3)

,array(zombidoctor_obj, 3, 60, 4)
,array(zombiesecta1_obj, 4, 75, 4)
,array(zombiecop_obj, 4, 80, 4)
,array(zomboni_obj, 5, 75, 4)
)
*/

b = array(f1,f2,f3,f4,f5)

switch(global.battle_map){
    default:
        //niveles de día
        basic1=z_zombie_obj
        basic2=z_zombie_obj
        //zombi armadura
        armor1=z_headbox_obj
        armor2=z_conehead_obj
        //zombi truco
        trick1=choose(z_paperthrower_obj,z_polevaulter_obj)
        trick2=choose(z_statue_obj,z_gardener_obj)
        
        if global.battle_diff==1{
            armor1=z_conehead_obj
            armor2=z_screendoor_obj
        }else if global.battle_diff==2{
            basic1=z_zombie_obj
            basic2=z_headbox_obj
            
            armor1=z_conehead_obj
            armor2=z_buckethead_obj
        }
    break

    case 2://niveles de noche
        //zombi básico
        basic1=z_zombie_obj
        basic2=z_zombie_obj
        //zombi armadura
        armor1=z_headbox_obj
        armor2=z_conehead_obj
        //zombi truco
        trick1=choose(z_paperthrower_obj, z_polevaulter_obj, z_torch_obj)
        trick2=choose(z_paperthrower_obj,z_newspaper_obj,z_skeleton_obj)
    
        if global.battle_diff==1{
            armor1=z_conehead_obj
            armor2=z_screendoor_obj
        }else if global.battle_diff==2{
            basic1=z_zombie_obj
            basic2=z_headbox_obj
            
            armor1=z_conehead_obj
            armor2=z_buckethead_obj
            trick2=choose(z_necromancer_obj,z_allstar_oj)
        }
    break
    
    case 3://niveles de la piscina
        basic1=z_zombie_obj
        basic2=z_zombie_obj
        //zombi armadura
        armor1=z_headbox_obj
        armor2=z_conehead_obj
        //zombi truco
        trick1=choose(z_trashcan_obj,z_solarpanel_obj, beachball_obj,z_rocket_obj)
        trick2=choose(z_torch_obj,z_skeleton_obj,z_icehead_obj,z_newspaper_obj)
        
        if global.battle_diff==1{
            armor1=z_conehead_obj
            armor2=z_screendoor_obj
        }else if global.battle_diff==2{
            basic1=z_zombie_obj
            basic2=z_headbox_obj
            
            armor1=z_conehead_obj
            armor2=z_buckethead_obj
            
            trick1=choose(z_trashcan_obj,z_solarpanel_obj, z_necromancer_obj)
            trick2=choose(z_icehead_obj,z_skeleton_obj,z_zomboni_obj)
        }
        //Rows
        f1=152
        f2=236
        f3=339
        f4=422
        f5=527
        f6=615
        a=array(f1,f2,f3,f4,f5,f6)
        b=array(f1,f2,f5,f6)
    break
    
    case 4://RAIN
        basic1=z_zombie_obj
        basic2=z_zombie_obj
        //zombi armadura
        armor1=z_headbox_obj
        armor2=z_conehead_obj
        //zombi truco
        trick1=choose(z_magician_obj, z_necromancer_obj, cajaspawn_obj)
        trick2=choose(z_icehead_obj,z_skeleton_obj,z_ghost_obj)
        
        if global.battle_diff==1{
            armor1=z_conehead_obj
            armor2=z_screendoor_obj
        }else if global.battle_diff==2{
            basic1=z_zombie_obj
            basic2=z_headbox_obj
            
            armor2=z_conehead_obj
            armor1=z_buckethead_obj
            
            trick1=choose(z_jackinthebox_obj,z_magician_obj, z_necromancer_obj)
            trick2=choose(z_skeleton_obj,z_ghost_obj, z_coffin_obj)
        }
    break
    
    case 5://FOG
        basic1=z_zombie_obj
        basic2=z_zombie_obj
        //zombi armadura
        armor1=z_headbox_obj
        armor2=z_conehead_obj
        //zombi truco
        trick1=choose(z_torch_obj,z_magician_obj, z_necromancer_obj, cajaspawn_obj)
        trick2=choose(z_icehead_obj,z_skeleton_obj,z_ghost_obj)
        
        if global.battle_diff==1{
            armor1=z_conehead_obj
            armor2=z_screendoor_obj
        }else if global.battle_diff==2{
            basic1=z_zombie_obj
            basic2=z_headbox_obj
            
            armor1=z_conehead_obj
            armor2=z_buckethead_obj
            
            trick1=choose(z_jackinthebox_obj,z_magician_obj, z_necromancer_obj)
            trick2=choose(z_molotov_obj,z_skeleton_obj,z_ghost_obj, z_coffin_obj)
        }
    break
}

///zs_endless_obj

//ds_list_add(lst_armor, get_zombie_data(basic1), get_zombie_data(basic2), get_zombie_data(armor1), get_zombie_data(armor2))
//ds_list_add(lst_trick, get_zombie_data(trick1), get_zombie_data(trick2))

//Crear zombis
zombie_preview(basic1,1+global.battle_diff)
zombie_preview(basic2,1+global.battle_diff)

zombie_preview(armor1,1+global.battle_diff)
zombie_preview(armor2,1+global.battle_diff)

zombie_preview(trick1,1+global.battle_diff)
zombie_preview(trick2,1+global.battle_diff)
//-------------------------------------

//var lvl_diff;

flag = z_flag_obj

if global.battle_diff==2{
    flag = z_rally_obj
}


switch(global.battle_diff){
    case 0:
        pt=20//Grace time
        //lvl_diff = 2
    break
    
    case 1:
        pt=15//Grace time
        //lvl_diff = 5
    break
    
    case 2:
        pt=10//Grace time
        //lvl_diff = 8
    break
}
fn=12
infinite=true//Is an infinite level?
progressbar=false//show progress bar?
lvl_es="Batallas (Plantas)"
lvl_en="Battles (Plants)"
sprite = plantswin2p_spr;
update_progress = false;
plantroom = morewaysplay_rm;

lvl_type = 3;
lvl_id = 1;

/*
	type
	-1: No achivements (custom levels)
	0: Regular or adventure
	1: Hard mode
	2: Endless
	3: Versus or battles
	4: Vasebreaker
	5: Minigames
	
*/

//create_level(pt, 12, 0, false, generate_zombies(), a, lvl_diff)

wf=array_create(fn)

wf[fn-1]=1
//zombiebuzo_obj
f[0,0] = array(basic1,b,1)

f[1,0] = array(basic2,b,1)

f[2,0] = array(basic1,b,global.battle_diff)
f[2,1] = array(basic2,b,1)

f[3,0] = array(armor1,a,1)
f[3,1] = array(basic2,a,global.battle_diff)

f[4,0] = array(armor1,a,2)
f[4,1] = array(basic2,a,1+global.battle_diff)

f[5,0] = array(armor1,a,1+global.battle_diff)
f[5,1] = array(trick1,a,global.battle_diff)

f[6,0] = array(armor2,a,global.battle_diff)
f[6,1] = array(basic2,a,2+global.battle_diff)

f[7,0] = array(armor1,a,1+global.battle_diff)
f[7,1] = array(trick2,a,global.battle_diff)

f[8,0] = array(armor2,a,1+global.battle_diff)
f[8,1] = array(basic2,a,global.battle_diff)

f[9,0] = array(basic2,a,2+global.battle_diff)
f[9,1] = array(trick2,a,1+global.battle_diff)

f[10,0] = array(basic2,a,3+global.battle_diff)
f[10,1] = array(armor2,a,1+global.battle_diff)
f[10,2] = array(trick1,a,global.battle_diff)

//final wave
f[11,0] = array(flag,a,1)
f[11,1] = array(basic2,a,2+global.battle_diff)
f[11,2] = array(armor1,a,2+global.battle_diff)
f[11,3] = array(armor2,a,1+global.battle_diff)
f[11,4] = array(trick1,a,2+global.battle_diff)
f[11,5] = array(trick2,a,1+global.battle_diff)

/* */
/*  */
