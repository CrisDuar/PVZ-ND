level = {
	//CONTROL
	
	control:{
		daytime: 0,
		stage: 0,
		
		//lawnmowers (-1: no lm, 0: lawnmower, 1: blue lawnmower, 2: pool cleaner)
		mowers: [-1, -1, 1, -1, -1],
		
		//Weather
		rain: false,
		windy: false
	},
	
	//fog
	fog: -1,
	smog: -1,
	
	//Music
	loop: false,
	idle_sng: music_grasswalk_snd,
	horde_sng: music_finalwaveday_snd,
	
	//can you choose your seeds?
	cys: true,
	//Array of pre selected plants
	preplants: [],
	
	//Conveyor
	is_conveyor: false,
	conv_code: 0,
	conv_t1: 4,
	conv_t2: 6,
	
	//surprise attack is enabled
	surprise_enabled: true,
	
	//grace time
	pt: 12,
	
	//number of waves
	fn: 8,
	
	//Is an infinite level? Wave where the level loops
	infinite: false,
	infinite_loop: 3,
	
	//show progress bar? show only the level name?
	progressbar: true,
	onlyname: false,
	
	//Level name
	lvl_es: "Nivel",
	lvl_en: "Level",
	lvl_zh: "关卡",
	
	//Rows array
	rw: [
		166,
		267,
		370,
		472,
		578,
		578
	],
	
	arr_row: [
	],
	
	//PRIZE
	
	//sprite, level type, number, money, reward song, load level
	sprite: menusun1_spr,
	prizevar: "niveles",
	lvl: 1,
	money: 100,
	snd: newplant_snd,
	plantroom: level1_sl_rm_,
	
	/*
		to add the zombies to the preview, while loading them, typ will be stored
		in a ds_map, using the zombie object's name as they key.
		
		map:{
			total: 7
			
			zombie1: 5
			conehead: 2
		}
		
		if they show up more than 50% of time, then 3-4 zombies will be in preview
		25% 2-3 zombies
		<25% 1-2 zombie
		
		you don't count flag zombies.
	*/
	
	//waves with flags
	wf: [
	],
	
	//Actual level
	waves: [
		[{typ: zombie1_obj, row: 0, num: 1}],
		[{typ: zombie1_obj, row: 0, num: 1}],
		[{typ: zombie1_obj, row: 0, num: 1}, {typ: zombiecarecono_obj, row: 0, num: 1}],
		[{typ: zombie1_obj, row: 0, num: 1}, {typ: zombiecarecono_obj, row: 0, num: 1}],
		[{typ: zombie1_obj, row: 0, num: 1}, {typ: zabanderado_obj, row: 0, num: 1}],
	]
}

level.arr_row[0] = [level.rw[0], level.rw[1], level.rw[2], level.rw[3], level.rw[4]] //a
level.wf[0] = [level.fn - 1, 2]

var _ruta = get_open_filename("", "");
var _txt = "";

var _file = file_text_open_read(_ruta);
//Read the json
while (!file_text_eof(_file)) {
    _txt += file_text_read_string(_file);
    file_text_readln(_file);
}
file_text_close(_file);

// Json to struct
var _json = json_parse(_txt);

//Read the struct
load_level_struct(_json)
/*
level_json = json_stringify(level, true);

var _file = file_text_open_write("level1.json");
file_text_write_string(_file, level_json);

file_text_close(_file);
*/
objects = {
	/*obj: {
		obj_index: gamepadtest_obj,
		
		pos: [
			{x: 300, y: 39},
			{x: 350, y: 39},
			{x: 400, y: 39}
		],

		vars: {
			image_index: 1,
			image_xscale: 1,
			image_blend: c_blue,
			t: 1
		}
	}*/
}


// Get the keys of the structs
var _obj_keys = variable_struct_get_names(objects);

// Loop through each key (object)
for (var i = 0; i < array_length(_obj_keys); i++) {
	
    var _obj_k = _obj_keys[i];
    var _obj_struct = objects[$ _obj_k]; // Access the struct
	
	
	//For duplicateds
	var _len = array_length(_obj_struct.pos);
	
	//For each position
	for (var k = 0; k < _len; k++){
		
		//Creates the object
	    var _inst = instance_create_depth(_obj_struct.pos[k].x, _obj_struct.pos[k].y, - 90, _obj_struct.obj_index);
	
	
		var _inst_vars = _obj_struct.vars;
		var _vars_keys = variable_struct_get_names(_inst_vars);
	
		for (var j = 0; j < array_length(_vars_keys); j++) {
		
			var _name = _vars_keys[j]; // Access the keys, which are the variable names
			var _value = _inst_vars[$ _name]; // Access the struct of variables, which has the values
		
			show_debug_message($"{_inst}: {_name}: {_value}");
		
			if (variable_instance_exists(_inst, string(_name))){
			
				variable_instance_set(_inst, string(_name), _value);
			}
		}
	}
}


/*
	para el código de los objetos que se van a crear
	
	var _inventory = {apples: 17, bananas: 261, oranges: 2, lemons: 5};
	struct_foreach(_inventory, function(_name, _value)
	{
	    show_debug_message($"{_name}: {_value}");
	});
	
	
	Cada nivel debería contar con tres archivos
	
	//Contains waves
	level_n.json
	
	//Contains create instructions for random objects that the level may need.
	level_n_objs.json
	
	
	obj{
		obj_index: obj
		tiled: boolean
		
		pos: [
			[0,0], [0,1]...
		]
		
		var: {
			image_index:
			image_xscale:
			t:
			...
		}
	}
	
	Para los parámetros del objeto control_obj, como tal vez se agreguen más en el futuro
	se van a leer así
	
	var my_value;
	
    if (variable_struct_exists(json_data, "my_key")) {
        my_value = json_data.my_key;
    } else {
        my_value = "default_value"; // Provide your default here
    }
	
	se podría hacer una función que lo haga así
	
	my_value = func("my_key", default_value);

*/

/*
//Gameplay
surprise_attack=false
surprise_timer=3*60
surprise_enabled=true
//To edit level

survival=false//is this a survival spawner?
surv_type = -1
pt=12//Grace time
fn=8//number of waves
infinite=false//Is an infinite level?
infinite_loop = 3 //Wave where the level loops
progressbar=true//show progress bar? 
onlyname=false//show only the level name?
lvl_es="Nivel"
lvl_en="Level"

//To edit prize
sprite=menusun1_spr//prize sprite
prizevar="niveles"//prize variable to modify
lvl=1//level number
money=100//player gets money for passing the level
snd=newplant_snd//reward song
plantroom=level1_sl_rm_//what room go to after passing the level

//---------------------------------------------
wf=array_create(fn)//Huge wave of zombies alert (0=No alert, 1=Common; 2=Final wave)
global.hordafinal=false//is final wave? (it changes the music)
h=0//waves in-game
f=0//waves info(array)
t=60//timer
t2=0//suspense_snd timer
checkt2=false//check to play suspense_snd
started=false//If level has started
bar=h//bar in-game
xx=0
yy=0//prize position

//WAVE HEALTH
horde_hp=0
horde_ttl_hp=0
horde_update=60
horde_canupdate=false
horde_wait=0
horde_prcnt = 0.4
horde_canfifty = true
zom_amt = 0

//Rows
f1=166
f2=267
f3=370
f4=472
f5=578
f6=578//choose(f1,f2,f3,f4,f5)
lf=0 //last row?
f_list = ds_list_create(); //last row list?
ref_list = array(f1,f2,f3,f4,f5)
a=array(f1,f2,f3,f4,f5)


//for bushes
bush_zombies = array(imp_obj,zombie1_obj,zombieheadbox_obj,zombiecarecono_obj,zombiedoor_obj)

/*Example
wf[fn-1]=2

a=array(f3)

f[0,0] = array(zombie1_obj,a,1)
f[0,1] = array(zombiecarecono_obj,a,1)

f[1,0] = array(zombie1_obj,a,1)

f[2,0] = array(zombie1_obj,a,2)

f[3,0] = array(zombie1_obj,a,3)

//final wave
f[4,0] = array(zombie1_obj,a,4)
f[4,1] = array(zabanderado_obj,a,1)