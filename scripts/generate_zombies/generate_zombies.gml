function generate_zombies() {
	var temp_list;
	var pts;
	var diff = floor(dificultad)
	var _list = ds_list_create();

	///BASIC

	pts = choose(1, floor(1 + diff/2))

	temp_list = pick_zombies(0, min(pts, 2), lst_armor)

	for(var i = 0; i < ds_list_size(temp_list); i++){
	    ds_list_add(_list, temp_list[| i])
	    show_debug_message(get_zombie_type(_list[| i]))
	}

	///ARMOR

	pts = round(4 + diff)
	temp_list = pick_zombies(/*clamp(pts/4, 2 , 3)*/2, pts, lst_armor)

	for(var i = 0; i < ds_list_size(temp_list); i++){
	    ds_list_add(_list, temp_list[| i])
	    show_debug_message(get_zombie_type(_list[| i]))
	}

	///TRICK
	pts = round(4 + diff)
	//irandom_range(floor(pts/2), round(pts*2))
	temp_list = pick_zombies(clamp(random_range(0, pts/5), 0 , 3), pts, lst_trick)

	for(var i = 0; i < ds_list_size(temp_list); i++){
	    ds_list_add(_list, temp_list[| i])
	    show_debug_message(get_zombie_type(_list[| i]))
	}

	show_debug_message("generating zombies:")

	for(var i = 0; i < ds_list_size(_list); i++){
	    show_debug_message(get_zombie_type(_list[| i]))
	}

	return _list;

	/*var top;
	var zom;
	var avoid;

	//zombi básico
	var _basic;

	//zombi armadura
	var _armor1;
	var _armor2;

	//zombi truco
	var _trick1;
	var _trick2;

	top = ds_list_size(lst_armor)-1

	//basic
	zom = min(floor(dificultad/2), top)
	_basic = lst_basic[| zom]

	//armor 1
	zom = min(floor(dificultad/2), top)
	_armor1= lst_armor[| zom]

	avoid = 0
	//armor 2
	do{
	    zom = min(floor(dificultad/2)+irandom_range(1,3), top)
	    _armor2 = lst_armor[| zom]
	    avoid++;
	}until(armor1 != armor2 or avoid>10)

	//trick 1
	zom = irandom_range(0, clamp((dificultad/2),0, top))
	_trick1 = lst_trick[| zom]

	avoid = 0

	do{
	    zom = irandom_range(0, clamp((dificultad/2)+irandom_range(1,3),0, top))
	    _trick2 = lst_trick[| zom]
    
	    avoid++
	}until(trick1 != trick2 or avoid>10)
	*/





}
