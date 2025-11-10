/// @description load_achievements()
function load_achievements() {
	var _logros_data = csv_to_grid("achievements.csv", true)

	//load_almanac
	/*
	n achievement ID
	[# 0, n] achievement status
	[# 1, n] achievement name EN
	[# 2, n] achievement name ES
	[# 3, n] achievement desc EN
	[# 4, n] achievement desc ES
	[# 5, n] achievement icon
	[# 6, n] achievement type 
	    [0] normal
	    [1] Hard
	    [2] secret
	    [3] just notification
	*/

	for (var i = 1; i <= global.num_logros; i++){

	    var _name_en = _logros_data[# 0, i]
	    var _name_es = _logros_data[# 1, i]
	    var _desc_en = _logros_data[# 2, i]
	    var _desc_es = _logros_data[# 3, i]
	    var _type = real(_logros_data[# 4, i])
	    var _icon = real(_logros_data[# 5, i])


	    add_achievement(i - 1, _name_en, _name_es, _desc_en, _desc_es, _icon, _type)

	}

	update_logros = true;




}
