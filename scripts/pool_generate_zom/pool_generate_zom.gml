function pool_generate_zom() {
	if dificultad>=0
	and dificultad<4{
	//zombi básico
	basic1=choose(imp_obj,duckzombie_obj)
	basic2=zombie1_obj
	basic3=choose(zombie1_obj,zombieheadbox_obj)

	//zombi armadura
	armor1=zombieheadbox_obj
	armor2=zombiecarecono_obj
	armor3=choose(zombiedoor_obj,zombiecarecubo_obj)

	//zombi truco
	trick1=zombiepapsho_obj
	trick2=choose(zombiejardinero_obj,beachball_obj)
	trick3=choose(zombiebuzo_obj,trashcanzombie_obj)

	//bandera
	flag=zabanderado_obj
	pt=12
	}

	if dificultad>=2
	and dificultad<5{
	//zombi básico
	basic1=choose(zombie1_obj,duckzombie_obj)
	basic2=choose(zombie1_obj,zombieheadbox_obj)
	basic3=zombieheadbox_obj

	//zombi armadura
	armor1=choose(zombiecarecono_obj,zombieheadbox_obj)
	armor2=zombiecarecono_obj
	armor3=zombiecarecubo_obj

	//zombi truco
	trick1=choose(zombiejardinero_obj,zombiepapsho_obj,zombieglobo_obj)
	trick2=choose(zomtorch_obj,zombiepole_obj)
	trick3=choose(icezombie_obj,zombiepapsho_obj,beachball_obj)

	//bandera
	flag=zabanderado_obj
	pt=10
	//tumbas
	spawngraves_par_obj.maxgraves=5;
	spawngraves_par_obj.graves=2;
	}

	if dificultad>=5
	and dificultad<10{
	//zombi básico
	basic1=choose(zombiecarecono_obj,duckzombie_obj)
	basic2=choose(zombiecarecono_obj,zombieheadbox_obj)
	basic3=zombiecarecono_obj

	//zombi armadura
	armor1=choose(zombiecarecono_obj,zombiedoor_obj)
	armor2=zombiedoor_obj
	armor3=zombiecarecubo_obj

	//zombi truco
	trick1=choose(zombieglobo_obj,zombiestatua_obj,zombierocket_obj)
	trick2=choose(zomtorch_obj,zombiepole_obj,zombiebuzo_obj,beachball_obj)
	trick3=choose(zombiesecta1_obj,futbolzombi_obj,trashcanzombie_obj)

	//bandera
	flag=zabanderado_obj
	pt=8
	//tumbas
	spawngraves_par_obj.maxgraves=7;
	spawngraves_par_obj.graves=4;
	}

	if dificultad>=10
	and dificultad<15{
	//zombi básico
	basic1=duckzombie_obj
	basic2=choose(zombiecarecono_obj,zombiedoor_obj)
	basic3=zombiedoor_obj

	//zombi armadura
	armor1=choose(zombiedoor_obj,zombiecarecubo_obj)
	armor2=zombiecarecubo_obj
	armor3=futbolzombi_obj

	//zombi truco
	trick1=choose(zombiejardinero_obj,zombiepapsho_obj,zombiestatua_obj,zomboni_obj,zompanel_obj)
	trick2=choose(zombierocket_obj,zombiepole_obj,zombiestatua_obj,protestantzombie_obj,zomboni_obj)
	trick3=choose(zombiesecta1_obj,skeleton_obj,futbolzombi_obj,beachball_obj)

	//bandera
	flagnum=2
	flag=zabanderadohard_obj
	pt=6
	//trick
	spawnzomes=true
	//tumbas
	spawngraves_par_obj.maxgraves=13;
	spawngraves_par_obj.graves=7;
	}

	if dificultad>=15{
	//zombi básico
	basic1=zombieheadbox_obj
	basic2=choose(zombiecarecono_obj,zombiedoor_obj)
	basic3=zombiecarecubo_obj

	//zombi armadura
	armor1=choose(zombiecarecubo_obj,futbolzombi_obj)
	armor2=skeleton_obj
	armor3=zombiecarecubo_obj

	//zombi truco
	trick1=choose(icezombie_obj,zomtorch_obj,zombiepole_obj,zombiesecta1_obj,zompanel_obj,zombiejardinero_obj,protestantzombie_obj,zombiestatua_obj,beachball_obj)
	trick2=choose(zombiepapsho_obj,zombieglobo_obj,zombiepole_obj,trashcanzombie_obj,skeleton_obj,zombiejardinero_obj,zombielector_obj,zombiestatua_obj,zomboni_obj)
	trick3=choose(zombiepapsho_obj,zomtorch_obj,zombierocket_obj,zombiesecta1_obj,skeleton_obj,zombiejardinero_obj,zombielector_obj,zomboni_obj,beachball_obj)

	//bandera
	flag=zabanderadohard_obj
	pt=4
	//trick
	spawnzomes=true
	//tumbas
	spawngraves_par_obj.maxgraves=24;
	spawngraves_par_obj.graves=12;
	}



}
