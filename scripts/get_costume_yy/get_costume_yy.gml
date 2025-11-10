/// @description get_costume_yy(gets the position of the global.plant)
/// @param gets the position of the global.plant
function get_costume_yy() {
	var _yy = -1

	if ds_grid_value_exists(global.costumes, 0, 0, 0, ds_grid_height(global.costumes)-1, menuselectplan_obj.plant){
	    _yy = ds_grid_value_y(global.costumes, 0, 0, 0, ds_grid_height(global.costumes)-1, menuselectplan_obj.plant);    
	}

	return _yy;



}
