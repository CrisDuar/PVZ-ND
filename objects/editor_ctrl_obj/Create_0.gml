level = {
	control: {
		windy: false,
		rain: false,
		stage: 2.0,
		daytime: 1.0,
		mowers: [],
		limit: 1600
	},
	//Seeds
	cys: true,
	//Waves system
	waves: [],
	wf: [],
	lvl_en: "New level",
	lvl_es: "New level",
	rw: [
	    166,
	    267,
	    370,
	    472,
	    578,
	    578
	],
	arr_row: [
		[0, 1, 2, 3, 4]
	],
	loop: true,
	idle_sng: "music_loonbon_snd",
	horde_sng: "grasswalk_fw_sng"
}

wf = ds_map_create();

add_wave = function(){
	
	array_push(level.waves, []);
}

delete_wave = function(_wave){
	
	array_delete(level.waves, _wave, _wave);
}

set_flag = function(_wave, _flag_type){
	
	if (_wave < 0 || _wave >= array_length(level.waves)) return;
	
	if (_flag_type == 0){
		
		if (ds_map_exists(wf,_wave)) ds_map_delete(wf, _wave)	
	}else{
		
		wf[? _wave] = _flag_type
	}
}

add_zombie = function(_pos, _zom , _am, _wave){
		
	var _new_zombie = {
		row: _pos,
		typ: _zom,
		num: _am
	}
	
	array_push(level.waves[_wave], _new_zombie);
}

switch_zombie = function(_dir, _wave, _zom){
	if (_wave >= array_length(level.waves)) return;
	if (_zom >= array_length(level.waves[_wave])) return;
	var _num_zom = array_length(global.zombies_packets)
	
	var _type = level.waves[_wave][_zom].typ
	
	if (_type + _dir < 1 || _type + _dir >= _num_zom) return;
	
	level.waves[_wave][_zom].typ += _dir
}

add_wave();
add_zombie(0, zombies_id.ZOMBIE, 1, 0);
switch_zombie(1, 0, 0)
