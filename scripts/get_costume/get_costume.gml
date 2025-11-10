/// @description get_costume(check if there are costumes available)
/// @param check if there are costumes available
function get_costume() {
	var _yy = -1

	if ds_grid_value_exists(global.costumes, 0, 0, 0, ds_grid_height(global.costumes)-1, menuselectplan_obj.plant){
	    _yy = ds_grid_value_y(global.costumes, 0, 0, 0, ds_grid_height(global.costumes)-1, menuselectplan_obj.plant);    
	}

	return ds_grid_get_max(global.costumes, 4, _yy, ds_grid_width(global.costumes)-1, _yy);



}
