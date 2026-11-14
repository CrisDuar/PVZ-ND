/// @description survival_save(file_name)
/// @param file_name
function survival_save(
    _file_name,
    _record,
    _progress,
    _difficulty,
    _zombies,
    _challenges,
    _modifiers,
    _danger_plants
    
) {
    
    var _challenge_status = array_create(array_length(_challenges), false)
    
    for(var i = 0; i < array_length(_challenges); i++){
        
        _challenge_status[i] = _challenges[i][0]
	}
    
    
    var _data = {
        version: global.survival_ver,
        record: _record,
        current_progress: _progress,
        difficulty: _difficulty,
        zombies: _zombies,
        challenges: _challenge_status,
        modifiers: control_obj.gameplay_modifier,
        danger_plants: _danger_plants
    }
    
    var _data_json = json_stringify(_data, true);
    
    var _acfolder = "ac" + string(global.acc_id);
	var _route = _acfolder + "/survival/" + _file_name + ".json";
    
    var _file = file_text_open_write(_route);
    file_text_write_string(_file, _data_json);
    file_text_close(_file);
    
    
    //var _acfolder = "ac" + string(global.acc_id);
	//var _route = _acfolder + "/survival/" + _file_name;
    /*
	var back=0
	var spawner=0
	var inst_num,n0,n1,inst

	if spawner==zombiespawnsurv2_obj{
	    back=1
	}

	if file_exists(_route){file_delete(_route);}


	ini_open(_route)
	//game values
	ini_write_real("Game","version", global.survival_ver)

	ini_write_real("Spawn","record",record)
	ini_write_real("Spawn","current_progress",survprogress)

	ini_write_real("Spawn","dificultad",zombispawn_obj.dificultad)
	ini_write_real("Spawn","survtimecalc",zombispawn_obj.survtimecalc)

	//retos
	for(var i = 0; i < array_height_2d(challenges); i++){
	    ini_write_real("Gimmicks","challenges" + string(i),zombispawn_obj.challenges[i, 0])
	}

	ini_write_string("Gimmicks","p1",object_get_name(zombispawn_obj.p1))
	ini_write_string("Gimmicks","p2",object_get_name(zombispawn_obj.p2))


	//zombies
	for(var i = 0; i < ds_list_size(zombie_list); i++){
    
	    var _zom = get_zombie_type(zombie_list[| i])
	    var _zom_name = object_get_name(_zom)
    
	    ini_write_string("Zombies","zom_" + string(i), _zom_name)
	}

	//zombi básico
	/*ini_write_string("Zombies","basic",object_get_name(get_zombie_type(zombispawn_obj.basic, zombispawn_obj.lst_data)))

	ini_write_string("Zombies","armor1",object_get_name(get_zombie_type(zombispawn_obj.armor1, zombispawn_obj.lst_data)))
	ini_write_string("Zombies","armor2",object_get_name(get_zombie_type(zombispawn_obj.armor2, zombispawn_obj.lst_data)))

	ini_write_string("Zombies","trick1",object_get_name(get_zombie_type(zombispawn_obj.trick1, zombispawn_obj.lst_data)))
	ini_write_string("Zombies","trick2",object_get_name(get_zombie_type(zombispawn_obj.trick2, zombispawn_obj.lst_data)))
	
	//save graves anims
	inst_num=instance_number(animgrave_obj)
	n0=0;
	n1=0;
	while inst_num>0{
	inst=instance_find(animgrave_obj,inst_num-1)
	ini_write_string("AnimGraves",string(n0)+string(n1),object_get_name(inst.object_index));
	n1+=1;
	ini_write_real("AnimGraves",string(n0)+string(n1),inst.x);
	n1+=1;
	ini_write_real("AnimGraves",string(n0)+string(n1),inst.y);
	n1+=1;
	ini_write_real("AnimGraves",string(n0)+string(n1),inst.image_index);
	n1+=1;
	ini_write_real("AnimGraves",string(n0)+string(n1),real(inst.sprite_index));
	n1+=1;
	ini_write_real("AnimGraves",string(n0)+string(n1),real(inst.gravetype));
	inst_num-=1;
	n0+=1;
	n1=0;
	}

	//save graves shields
	inst_num=instance_number(gravedetect_obj)
	n0=0;
	n1=0;
	while inst_num>0{
	inst=instance_find(gravedetect_obj,inst_num-1)
	ini_write_string("Graves",string(n0)+string(n1),object_get_name(inst.object_index));
	n1+=1;
	ini_write_real("Graves",string(n0)+string(n1),inst.x);
	n1+=1;
	ini_write_real("Graves",string(n0)+string(n1),inst.y);
	n1+=1;
	ini_write_real("Graves",string(n0)+string(n1),inst.vida);
	inst_num-=1;
	n0+=1;
	n1=0;
	}

	//save deleted lawnmowers
	inst_num=instance_number(delpodadora_obj)
	n0=0;
	n1=0;
	while inst_num>0{
	inst=instance_find(delpodadora_obj,inst_num-1)
	ini_write_string("Lawnmowers",string(n0)+string(n1),object_get_name(inst.object_index));
	n1+=1;
	ini_write_real("Lawnmowers",string(n0)+string(n1),inst.x);
	n1+=1;
	ini_write_real("Lawnmowers",string(n0)+string(n1),inst.y);
	inst_num-=1;
	n0+=1;
	n1=0;
	}

	ini_close();


*/
}
