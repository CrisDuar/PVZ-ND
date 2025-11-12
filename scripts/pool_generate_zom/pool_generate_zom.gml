function pool_generate_zom() {
	if dificultad>=0
	and dificultad<4{
	//zombi básico
	basic1=choose(z_imp_obj,z_duckytube_obj)
	basic2=z_zombie_obj
	basic3=choose(z_zombie_obj,z_headbox_obj)

	//zombi armadura
	armor1=z_headbox_obj
	armor2=z_conehead_obj
	armor3=choose(z_screendoor_obj,z_buckethead_obj)

	//zombi truco
	trick1=z_paperthrower_obj
	trick2=choose(z_gardener_obj,beachball_obj)
	trick3=choose(z_snorkel_obj,z_trashcan_obj)

	//bandera
	flag=z_flag_obj
	pt=12
	}

	if dificultad>=2
	and dificultad<5{
	//zombi básico
	basic1=choose(z_zombie_obj,z_duckytube_obj)
	basic2=choose(z_zombie_obj,z_headbox_obj)
	basic3=z_headbox_obj

	//zombi armadura
	armor1=choose(z_conehead_obj,z_headbox_obj)
	armor2=z_conehead_obj
	armor3=z_buckethead_obj

	//zombi truco
	trick1=choose(z_gardener_obj,z_paperthrower_obj,z_balloon_obj)
	trick2=choose(z_torch_obj,z_polevaulter_obj)
	trick3=choose(z_icehead_obj,z_paperthrower_obj,beachball_obj)

	//bandera
	flag=z_flag_obj
	pt=10
	//tumbas
	spawngraves_par_obj.maxgraves=5;
	spawngraves_par_obj.graves=2;
	}

	if dificultad>=5
	and dificultad<10{
	//zombi básico
	basic1=choose(z_conehead_obj,z_duckytube_obj)
	basic2=choose(z_conehead_obj,z_headbox_obj)
	basic3=z_conehead_obj

	//zombi armadura
	armor1=choose(z_conehead_obj,z_screendoor_obj)
	armor2=z_screendoor_obj
	armor3=z_buckethead_obj

	//zombi truco
	trick1=choose(z_balloon_obj,z_statue_obj,z_rocket_obj)
	trick2=choose(z_torch_obj,z_polevaulter_obj,z_snorkel_obj,beachball_obj)
	trick3=choose(z_necromancer_obj,z_allstar_oj,z_trashcan_obj)

	//bandera
	flag=z_flag_obj
	pt=8
	//tumbas
	spawngraves_par_obj.maxgraves=7;
	spawngraves_par_obj.graves=4;
	}

	if dificultad>=10
	and dificultad<15{
	//zombi básico
	basic1=z_duckytube_obj
	basic2=choose(z_conehead_obj,z_screendoor_obj)
	basic3=z_screendoor_obj

	//zombi armadura
	armor1=choose(z_screendoor_obj,z_buckethead_obj)
	armor2=z_buckethead_obj
	armor3=z_allstar_oj

	//zombi truco
	trick1=choose(z_gardener_obj,z_paperthrower_obj,z_statue_obj,z_zomboni_obj,z_solarpanel_obj)
	trick2=choose(z_rocket_obj,z_polevaulter_obj,z_statue_obj,z_protesterleader_obj,z_zomboni_obj)
	trick3=choose(z_necromancer_obj,z_skeleton_obj,z_allstar_oj,beachball_obj)

	//bandera
	flagnum=2
	flag=z_rally_obj
	pt=6
	//trick
	spawnzomes=true
	//tumbas
	spawngraves_par_obj.maxgraves=13;
	spawngraves_par_obj.graves=7;
	}

	if dificultad>=15{
	//zombi básico
	basic1=z_headbox_obj
	basic2=choose(z_conehead_obj,z_screendoor_obj)
	basic3=z_buckethead_obj

	//zombi armadura
	armor1=choose(z_buckethead_obj,z_allstar_oj)
	armor2=z_skeleton_obj
	armor3=z_buckethead_obj

	//zombi truco
	trick1=choose(z_icehead_obj,z_torch_obj,z_polevaulter_obj,z_necromancer_obj,z_solarpanel_obj,z_gardener_obj,z_protesterleader_obj,z_statue_obj,beachball_obj)
	trick2=choose(z_paperthrower_obj,z_balloon_obj,z_polevaulter_obj,z_trashcan_obj,z_skeleton_obj,z_gardener_obj,z_newspaper_obj,z_statue_obj,z_zomboni_obj)
	trick3=choose(z_paperthrower_obj,z_torch_obj,z_rocket_obj,z_necromancer_obj,z_skeleton_obj,z_gardener_obj,z_newspaper_obj,z_zomboni_obj,beachball_obj)

	//bandera
	flag=z_rally_obj
	pt=4
	//trick
	spawnzomes=true
	//tumbas
	spawngraves_par_obj.maxgraves=24;
	spawngraves_par_obj.graves=12;
	}



}
