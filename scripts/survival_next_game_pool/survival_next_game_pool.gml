function survival_next_game_pool() {
	instance_create(x,y,fadeout_obj)
	if instance_exists(eatfather_obj){instance_destroy(eatfather_obj)}
	if instance_exists(menuplants_obj){instance_destroy(menuplants_obj)}
	if instance_exists(saveplants_obj){instance_destroy(saveplants_obj)}
	if instance_exists(sol_obj){instance_destroy(sol_obj)}
	if instance_exists(sol_flower_obj){instance_destroy(sol_flower_obj)}
	if instance_exists(parentmoney_obj){instance_destroy(parentmoney_obj)}

	if instance_exists(saveseedcasilla_obj){instance_destroy(saveseedcasilla_obj)}

	if instance_exists(zomsunmachine_obj){instance_destroy(zomsunmachine_obj)}
	if instance_exists(charco_obj){instance_destroy(charco_obj)}
	if instance_exists(charco0_obj){instance_destroy(charco_obj)}
	if instance_exists(ice_obj){instance_destroy(ice_obj)}

	if instance_exists(caja_obj){instance_destroy(caja_obj)}

	if instance_exists(parentpea_obj){instance_destroy(parentpea_obj)}
	with(trazo_obj){
	x=1600
	image_yscale=1.05
	//if x==806 instance_destroy();
	}

	control_obj.rain=false
	control_obj.soles=50+floor(25*survprogress/5)
	control_obj.cansun=true
	control_obj.drawsoles=control_obj.soles
	control_obj.seleccionado=0
	musicglobalhorde_obj.finalwave=false
	global.iniciogame=false
	global.gameready=false
	global.playerReady=false

	global.nivelterminado=false
	global.hordafinal=false//is final wave? (it changes the music)
	h=0//waves in-game
	t=room_speed//timer
	t2=0//suspense_snd timer
	checkt2=false//check to play suspense_snd
	started=false//If level has started
	pt=12//Grace time

	//desafios
	saveourseeds=false
	    p1=0
	    p2=0
	sunmachine=false
	limitlawn=false
	israining=false

	survprogress++
	if record<survprogress record++
	dificultad+=random_range(0.5,2)
	pool_generate_zom();
	/*
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
	*/
	if survprogress>survtimecalc+2{survtimecalc+=3}

	if survprogress==0+survtimecalc{
	__background_set( e__BG.Index, 1, poolday_bg )
	control_obj.sunday=false
	control_obj.night=false
	musicglobalhorde_obj.idlesong=pool_sng
	musicglobalhorde_obj.hordesong=poolhorde_sng
	}

	if survprogress==1+survtimecalc{
	__background_set( e__BG.Index, 1, poolsunset_bg )
	control_obj.sunday=true
	control_obj.night=false
	musicglobalhorde_obj.idlesong=pool_sng
	musicglobalhorde_obj.hordesong=poolhorde_sng
	}

	if survprogress==2+survtimecalc{
	__background_set( e__BG.Index, 1, poolnight_bg )
	control_obj.sunday=false
	control_obj.night=true
	musicglobalhorde_obj.idlesong=poolnight_sng
	musicglobalhorde_obj.hordesong=poolnighthorde_sng
	}

	//Crear zombis y actualizar nivel
	alarm[1]=10

	//retos
	var a = random_range(0,100)
	if a<25{
	saveourseeds=true
	p1=choose(peashooter_obj,bowlingbulb_obj,setamiedica_obj,sunflower_obj,patatomine2_obj,icelettuce_obj,fumeshroom_obj)
	p2=choose(peashooter_obj,bowlingbulb_obj,setamiedica_obj,sunflower_obj,patatomine2_obj,icelettuce_obj,fumeshroom_obj)
	}

	a = random_range(0,100); if a<25 sunmachine=true
	a = random_range(0,100); if a<25 limitlawn=true
	a = random_range(0,100); if a<25 israining=true
	/*
	if saveourseeds==true{
	instance_create(416,160,p1)
	instance_create(416,576,p2)
	instance_create(368,80,saveseedcasilla_obj)
	instance_create(368,496,saveseedcasilla_obj)
	}

	if sunmachine==true{control_obj.cansun=false; instance_create(418,368,sunmachine_obj)}
	if limitlawn==true {instance_create(806,72,trazo_obj)}
	if israining==true {control_obj.rain=true}*/

	if instance_exists(newmenu_obj){instance_destroy(newmenu_obj)}
	if instance_exists(newmenu2_obj){instance_destroy(newmenu2_obj)}
	if instance_exists(newmenu3_obj){instance_destroy(newmenu3_obj)}
	if instance_exists(camaractrl_obj){instance_destroy(camaractrl_obj)}
	if instance_exists(menuselectplan_obj){instance_destroy(menuselectplan_obj)}
	if instance_exists(select_obj){with(select_obj){instance_destroy()}}
	if instance_exists(globalselect_obj){with(globalselect_obj){instance_destroy()}}
	if instance_exists(menuselectmult_obj){instance_destroy(menuselectmult_obj)}
	if instance_exists(compcamara1_obj){instance_destroy(compcamara1_obj)}
	if instance_exists(cargpaquete_obj){instance_destroy(cargpaquete_obj)}
	if instance_exists(cargzombi_obj){instance_destroy(cargzombi_obj)}
	if instance_exists(animpacket_obj){instance_destroy(animpacket_obj)}

	if !instance_exists(newmenu_obj){instance_create(x,y,newmenu_obj)}
	if !instance_exists(newmenu2_obj){instance_create(x,y,newmenu2_obj)}
	if !instance_exists(newmenu3_obj){instance_create(x,y,newmenu3_obj)}
	if !instance_exists(camaractrl_obj){instance_create(x,y,camaractrl_obj)}
	__view_set( e__VW.Object, 0, camaractrl_obj )
	audio_stop_all();
	audio_play_sound(music_chooseseeds_snd,1,true)

	__view_set( e__VW.XView, 0, 130 )



}
