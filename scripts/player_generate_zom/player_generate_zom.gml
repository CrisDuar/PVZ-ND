function player_generate_zom() {
	zombie_list = ds_list_create();
	var top;
	var zom;
	var avoid;

	top = ds_list_size(lst_armor)-1

	zom = min(floor(dificultad/2), top)
	show_debug_message(zom)
	basic = lst_basic[| zom]

	zom = min(floor(dificultad/2), top)
	show_debug_message(zom)
	armor1= lst_armor[| zom]

	avoid = 0
	do{
	    zom = min(floor(dificultad/2)+irandom_range(1,3), top)
	    show_debug_message(zom)
	    armor2 = lst_armor[| zom]
	}until(armor1 != armor2 or avoid>10)

	zom = irandom_range(0, clamp((dificultad/2)+2,0, top))
	show_debug_message(zom)
	trick1 = lst_trick[| zom]

	avoid = 0

	do{
	    zom = irandom_range(0, clamp((dificultad/2)+2,0, top))
	    show_debug_message(zom)
	    trick2 = lst_trick[| zom]
    
	    avoid++
	}until(trick1 != trick2 or avoid>10)

	numwaves = min(12 + dificultad, 30)

	if dificultad>=0 and dificultad<3{  
	    flag=false
	    pt=20
    
	    spawngraves_par_obj.maxgraves=3;
	    spawngraves_par_obj.graves=0;
	}

	if dificultad>=3 and dificultad<6{
	    /*top = min(ds_list_size(lst_basic), 1)
	    zom = irandom_range(0, top)
	    basic = lst_basic[| zom]
    
	    top = min(ds_list_size(lst_armor), 3)
	    zom = irandom_range(0, top)
	    armor1= lst_armor[| zom]
    
	    top = ds_list_size(lst_armor)
	    zom = irandom_range(4, top)
	    armor2 = lst_armor[| zom]
    
	    top = min(ds_list_size(lst_basic), 3)
	    zom = irandom_range(0, top)
	    trick1 = lst_trick[| zom]
    
	    top = clamp(ds_list_size(lst_basic), 3, 5)
	    zom = irandom_range(2, top)
	    trick2 = lst_trick[| zom]*/
    
	    flag=false
	    pt=15

	    //tumbas
	    spawngraves_par_obj.maxgraves=6;
	    spawngraves_par_obj.graves=2;
	}

	if dificultad>=6 and dificultad<12{
	    /*basic=zombieheadbox_obj
    
	    armor1=choose(zombiecarecono_obj,zombiedoor_obj)
	    armor2=choose(zombiedoor_obj,zombiecarecubo_obj)
    
	    trick1=choose(zombiepapsho_obj,zombiestatua_obj,zomtorch_obj,zombiepole_obj)
	    trick2=choose(zombiejardinero_obj,zombielector_obj,futbolzombi_obj)
	    */
	    flag=false
	    pt=10

	    //tumbas
	    spawngraves_par_obj.maxgraves=6;
	    spawngraves_par_obj.graves=2;

	}

	if dificultad>=12 and dificultad<15{
	    //bandera
	    flagnum=2
	    flag=false
	    pt=7
    
	    //tumbas
	    spawngraves_par_obj.maxgraves=13;
	    spawngraves_par_obj.graves=7;
	}

	if dificultad>=15{
	    //bandera
	    flagnum=3
	    flag=true
	    pt=5
    
	    //tumbas
	    spawngraves_par_obj.maxgraves=24;
	    spawngraves_par_obj.graves=12;
	}

	ds_list_add(zombie_list, basic, armor1, trick1, trick2, armor2);

	for(var i = 0; i < ds_list_size(zombie_list); i++){
	    show_debug_message(object_get_name(zombie_list[| i]))
	}

	create_level(pt, numwaves, flagnum, flag, zombie_list, a, min(1 + dificultad/10, 3))



}
