function survival_next_game() {
	instance_create(x,y,fadeout_obj)

	global.iniciogame=false
	global.gameready=false
	global.playerReady=false

	global.nivelterminado=false
	global.hordafinal=false//is final wave? (it changes the music)

	t2=0//suspense_snd timer
	checkt2=false//check to play suspense_snd
	started=false//If level has started
	surprise_timer=3*room_speed
	h=0//waves in-game
	f=0//waves info(array)
	fn=1//number of waves
	bar=h//bar in-game

	ds_list_destroy(f_list)
	f_list = ds_list_create(); //last row list?
	ref_list = a;

	//WAVE HEALTH
	horde_hp=0
	horde_ttl_hp=0
	horde_canupdate=false

	control_obj.cansun=true
	control_obj.drawsoles=control_obj.soles
	control_obj.seleccionado=0
	control_obj.rain = false
	control_obj.windy = false
	control_obj.wind = false
	musicglobalhorde_obj.finalwave=false

	var _coins = false

	if instance_exists(parentmoney_obj){

	    _coins = true    

	    with(parentmoney_obj){
	        event_user(1)
	    }
	}

	if instance_exists(eatfather_obj){instance_destroy(eatfather_obj)}
	if instance_exists(menuplants_obj){instance_destroy(menuplants_obj)}
	if instance_exists(saveplants_obj){instance_destroy(saveplants_obj)}
	if instance_exists(solparent_obj){instance_destroy(solparent_obj)}
	if instance_exists(sunmachine_obj){instance_destroy(sunmachine_obj)}
	if instance_exists(parentproj_obj){instance_destroy(parentproj_obj)}
	if instance_exists(parabolproj_obj){instance_destroy(parabolproj_obj)}

	if instance_exists(zomsunmachine_obj){instance_destroy(zomsunmachine_obj)}
	if instance_exists(charco_obj){instance_destroy(charco_obj)}
	if instance_exists(charco0_obj){instance_destroy(charco0_obj)}
	if instance_exists(ice_obj){instance_destroy(ice_obj)}
	if instance_exists(crater1_obj){instance_destroy(crater1_obj)}

	if instance_exists(caja_obj){instance_destroy(caja_obj)}
	if instance_exists(poisontile_obj){instance_destroy(poisontile_obj)}
	if instance_exists(fogctrl_obj){instance_destroy(fogctrl_obj)}
	if instance_exists(pollutionctrl_obj){instance_destroy(pollutionctrl_obj)}


	trazo_obj.x=1600

	//desafios
	for(var i = 0; i < array_height_2d(challenges); i++){
	    challenges[i,0] = false
	}

	p1=0
	p2=0

	survprogress++
	if record<survprogress record++
	dificultad += diff_incr
	if survprogress>survtimecalc+2{survtimecalc+=3}

	set_background_endless();
	set_difficulty_changes();
	t=room_speed*pt*50;

	//var zombie_list = ds_list_create();

	zombie_list = generate_zombies();
	create_level(pt, numwaves, flagnum, flag, zombie_list, a, 1 + dificultad)
	//retos

	var odds = irandom_range(0,100)

	if odds<25{
	    challenges[0,0] = true
	    p1=choose(peashooter_obj,bowlingbulb_obj,setamiedica_obj,sunflower_obj,patatomine2_obj,icelettuce_obj,fumeshroom_obj)
	    p2=choose(peashooter_obj,bowlingbulb_obj,setamiedica_obj,sunflower_obj,patatomine2_obj,icelettuce_obj,fumeshroom_obj)
	}

	for(var i = 1; i<array_height_2d(challenges); i++){
	    odds = irandom_range(0,100); 
    
	    if odds<25 challenges[i,0] = true
	}

	with(spawngraves_par_obj){
	    time = 0
	}

	if instance_exists(newmenu_obj){instance_destroy(newmenu_obj)}
	if instance_exists(newmenu2_obj){instance_destroy(newmenu2_obj)}
	if instance_exists(newmenu3_obj){instance_destroy(newmenu3_obj)}
	if instance_exists(camaractrl_obj){instance_destroy(camaractrl_obj)}

	if instance_exists(menuselectplan_obj){instance_destroy(menuselectplan_obj)}
	if instance_exists(compcamara1_obj){instance_destroy(compcamara1_obj)}
	if instance_exists(animpacket_obj){instance_destroy(animpacket_obj)}

	instance_create(x,y,newmenu_obj)
	instance_create(x,y,newmenu2_obj)
	instance_create(x,y,newmenu3_obj)
	instance_create(x,y,camaractrl_obj)

	event_perform_object(musicglobalhorde_obj, ev_create, 0)

	__view_set( e__VW.Object, 0, camaractrl_obj )
	audio_stop_all();
	if (_coins) audio_play_sound(billetedrop_snd,1,false)

	audio_play_sound(music_chooseseeds_snd,1,true)

	__view_set( e__VW.XView, 0, 130 )



}
