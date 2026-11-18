function survival_reset_level(){
    //RESET LEVEL
	instance_create(x,y,fadeout_obj)

	global.iniciogame=false
	global.gameready=false
	global.playerReady=false

	global.nivelterminado=false
	global.hordafinal=false//is final wave? (it changes the music)

	t2=0//suspense_snd timer
	checkt2=false//check to play suspense_snd
	started=false//If level has started
	surprise_timer=3*60
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
    
    
    is_level_generated = false;

	control_obj.cansun=true
	control_obj.drawsoles=control_obj.soles
	control_obj.seleccionado=0
	control_obj.rain = false
	control_obj.windy = false
	control_obj.wind = false
	musicglobalhorde_obj.finalwave=false
    
    control_obj.daytime = survprogress % 3;
    
    //Set the background
    with(control_obj){
        start_sun = false;
       	//Sun
       	alarm[0]=60*5;
       	//Wind
       	alarm[2]=60*30;
        
        //Set the background
		var _bg = bgs_lvl[stage][daytime<array_length(bgs_lvl[stage]) ? daytime : (array_length(bgs_lvl[stage]) - 1)]
		layer_background_sprite(layer_background_get_id(layer_get_id("BG_stage")), _bg)	
    }

	var _coins = false

	if instance_exists(parentmoney_obj){

	    _coins = true    

	    with(parentmoney_obj){
	        event_user(1)
	    }
	}
    
    instance_destroy(eatfather_obj)
    instance_destroy(menuplants_obj)
    instance_destroy(saveplants_obj)
    instance_destroy(solparent_obj)

    instance_destroy(parentproj_obj)
    instance_destroy(parabolproj_obj)

    instance_destroy(charco_obj)
    instance_destroy(charco0_obj)
    instance_destroy(ice_obj)
    instance_destroy(crater1_obj)

    instance_destroy(poisontile_obj)
    instance_destroy(fogctrl_obj)
    instance_destroy(pollutionctrl_obj)
    instance_destroy(globalpod_obj)


	trazo_obj.x=1600
    
    with(ultspawngraves_obj){
        
        event_perform(ev_create, 0);
    }
    
    //TODO: change this once the camera system gets redone.
    instance_destroy(newmenu_obj)
	instance_destroy(newmenu2_obj)
	instance_destroy(newmenu3_obj)
	instance_destroy(camaractrl_obj)

	instance_destroy(menuselectplan_obj)
	instance_destroy(compcamara1_obj)

	instance_create(0, 0,newmenu_obj)
	instance_create(0, 0,newmenu2_obj)
	instance_create(0, 0,newmenu3_obj)
	instance_create(0, 0,camaractrl_obj)

	event_perform_object(musicglobalhorde_obj, ev_create, 0)
    
    var _cam = view_get_camera(0);
    camera_set_view_target(_cam, camaractrl_obj);
    camera_set_view_pos(_cam, 130, 0);

	audio_stop_all();
	if (_coins) audio_play_sound(billetedrop_snd,1,false)

	audio_play_sound(music_chooseseeds_snd,1,true)
}

function survival_set_challenges(){
    
    var odds = irandom_range(0,100)

	if odds<15{
	    challenges[0][0] = true
        
        var _plants = [
            plants_id.PEASHOOTER,
            plants_id.SNOWPEA,
            plants_id.BOWLINGBULB,
            plants_id.SCAREDYSHROOM,
            plants_id.SUNFLOWER,
            plants_id.ICEBERG_LETTUCE,
            plants_id.FUMESHROOM,
            plants_id.TWINSUNFLOWER,
            plants_id.SUN_BEAN
        ]
        
	    p1 = _plants[irandom_range(0, array_length(_plants) - 1)];//choose(peashooter_obj,bowlingbulb_obj,setamiedica_obj,sunflower_obj,patatomine2_obj,icelettuce_obj,fumeshroom_obj)
	    p2 = _plants[irandom_range(0, array_length(_plants) - 1)];//choose(peashooter_obj,bowlingbulb_obj,setamiedica_obj,sunflower_obj,patatomine2_obj,icelettuce_obj,fumeshroom_obj)
	}

	for(var i = 1; i<array_length(challenges); i++){
	    odds = irandom(100); 
    
	    if (odds<15) challenges[i][0] = true
	}
}

function survival_set_modifiers(){
    
    var _max_modifiers = floor(dificultad / 2)
    var _am_modifiers = 0;
    
    
    show_debug_message("DIFICULTAD: " + string(dificultad));
    
    for(var i = 1; i<array_length(control_obj.gameplay_modifier); i++){
	    
        control_obj.gameplay_modifier[i] = 0;
        
        if (_am_modifiers >= _max_modifiers) break;
        
        var _result = choose(0, 1);
        
        if (_result){
            show_debug_message("ENABLED MODIFIER: " + string(i));
            control_obj.gameplay_modifier[i] = 1;
            _am_modifiers++;
            
        }
	}
}


function survival_next_game() {
    
    //Progress and difficulty
    survprogress++;
	if (record < survprogress) record++;
    
    survival_reset_level();
    
        
    dificultad += 1
    if (dificultad > 7) dificultad = irandom_range(3, 7);
        
     // TODO:   Pool needs special lawnmower treatment.
    if (dificultad <= 4){
        
        //Lawnmowers
        control_obj.mowers = [0, 0, 0, 0, 0];
    }else{
        
        control_obj.mowers = [-1, -1, 1];
    }
    
    set_lawnmowers(control_obj.mowers);
    
    //set_background_endless();
    
	//Reset challenges
	for(var i = 0; i < array_length(challenges); i++){
        
	    challenges[i][0] = false;
	}
    
    survival_set_challenges();
    survival_set_modifiers();
    
    //Create level;
    
	zombie_list = generate_zombies(lst_zombies, floor(dificultad));
	create_level(zombie_list, floor(dificultad));
}
