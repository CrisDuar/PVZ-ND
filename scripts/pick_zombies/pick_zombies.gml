/// @description pick_zombies(min points, points, ds list zombies)
/// @param min points
/// @param  points
/// @param  ds list zombies
function pick_zombies(argument0, argument1, argument2) {

	var min_pts = argument0
	var points = argument1
	var _lst = argument2

	var rtrn_list = ds_list_create();

	for (var i = 0; i<ds_list_size(_lst); i++){
	    var zom = _lst[| i];
	    var diff = get_zombie_diff(zom);
	    var zodds = get_zombie_odds(get_zombie_type(zom));    
    
	    var odds = irandom(90)
    
	    if (diff >= min_pts and zodds >= odds){
	        if (diff <= points){
	            ds_list_add(rtrn_list, zom)
	            points -= diff
	        }
	    }
    
	    if (points <= 0){
	        break;
	    }
	}

	return rtrn_list;




}
