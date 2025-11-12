
function save_level_struct(){
	
	var _fog = -1;
	var _smog = -1;
	
	var _loop = false;
	var _idle_sng = audio_get_name(grasswalk_sng);
	var _horde_sng = audio_get_name(grasswalk_fw_sng);
	
	var _t1 = 0;
	var _t2 = 0;
	var _num = 0;
	var _conv = false;
	
	var _limit = 1600;
	
	if (instance_exists(trazo_obj)){
		_limit = trazo_obj.x;	
	}
	
	//Get the fog or smog
	if (instance_exists(fogctrl_obj)) _fog = fogctrl_obj.xfinal;
	
	if (instance_exists(pollutionctrl_obj)) _smog = pollutionctrl_obj.xfinal;
	
	//Get the music
	if (instance_exists(musicloop_obj)){
		_idle_sng = audio_get_name(musicloop_obj.snd);
		_loop = true;
	}else{
		_idle_sng = audio_get_name(musicglobalhorde_obj.idlesong);
		_horde_sng = audio_get_name(musicglobalhorde_obj.hordesong);
	}
	
	//Get if it is a conveyor belt level.
	if (instance_exists(ctrlcinta1_obj)){
		_conv = true;
		_t1 = ctrlcinta1_obj.t1;
		_t2 = ctrlcinta1_obj.t2;
		_num = ctrlcinta1_obj.num;
	}
	
	var _level = {
		//CONTROL
	
		control:{
			daytime: control_obj.daytime,
			stage: control_obj.stage,
		
			//lawnmowers (-1: no lm, 0: lawnmower, 1: blue lawnmower, 2: pool cleaner)
			mowers: [0, 0, 0, 0, 0],
		
			//Weather
			rain: control_obj.rain,
			windy: control_obj.windy,
			limit: _limit
		},
		
		//fog
		fog: _fog,
		smog: _smog,
	
		//Music
		loop: _loop,
		idle_sng: _idle_sng,
		horde_sng: _horde_sng,
	
		//can you choose your seeds?
		cys: camaractrl_obj.levelallowed,
		//Array of pre selected plants
		preplants: [],
	
		//Conveyor
		is_conveyor: _conv,
		conv_code: _num,
		conv_t1: _t1,
		conv_t2: _t2,
	
		//surprise attack is enabled
		surprise_enabled: zombispawn_obj.surprise_enabled,
		
		//%50 rule
		horde_prcnt: zombispawn_obj.horde_prcnt,
		
		//grace time
		pt: zombispawn_obj.pt,
	
		//number of waves
		fn: zombispawn_obj.fn,
	
		//Is an infinite level? Wave where the level loops
		infinite: zombispawn_obj.infinite,
		infinite_loop: zombispawn_obj.infinite_loop,
	
		//show progress bar? show only the level name?
		progressbar: zombispawn_obj.progressbar,
		onlyname: zombispawn_obj.onlyname,
	
		//Level name
		lvl_es: zombispawn_obj.lvl_es,
		lvl_en: zombispawn_obj.lvl_en,
		lvl_zh: zombispawn_obj.lvl_zh,
	
		//Rows array
		rw: [
			zombispawn_obj.f1,
			zombispawn_obj.f2,
			zombispawn_obj.f3,
			zombispawn_obj.f4,
			zombispawn_obj.f5,
			zombispawn_obj.f6
		],
	
		arr_row: [
			[0, 1, 2, 3, 4]
		],
	
		//PRIZE
	
		//sprite, level type, number, money, reward song, load level
		sprite: sprite_get_name(zombispawn_obj.sprite),
		prizevar: zombispawn_obj.prizevar,
		lvl: zombispawn_obj.lvl,
		money: zombispawn_obj.money,
		snd: audio_get_name(zombispawn_obj.snd),
		plantroom: room_get_name(zombispawn_obj.plantroom),
	
		waves: array_create(zombispawn_obj.fn),
	
		wf: [
	
		]
	}

	var _waves = _level.waves;
	var _nflags = 0;

	//f[wave][zombie]
		
	for (var i = 0; i < array_length(zombispawn_obj.f); i++){
	
		//Array with the zombies
		var _arr_z = array_create(array_length(zombispawn_obj.f[i]));
	
		if (zombispawn_obj.wf[i] > 0){
			_level.wf[_nflags] = [i, zombispawn_obj.wf[i]];
		
			_nflags++;
		}
	
		for (var j = 0; j < array_length(zombispawn_obj.f[i]); j++){
		
			_arr_z[j] = {
				typ: object_get_name(zombispawn_obj.f[i][j][0]),
				row: 0,
				num: zombispawn_obj.f[i][j][2]
			}
		
			var _data = _arr_z[j];
				
			show_debug_message($"{_data.typ}: {_data.row}: {_data.num}");
		}
	
		_level.waves[i] = _arr_z;
	}
	
	return _level;
}