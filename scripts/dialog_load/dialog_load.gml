/// @description dialog_load(ID)
/// @param ID
function dialog_load(argument0) {

	var ID = string(argument0)
	var found = false
	//var dialog_data = csv_to_grid("dialog.csv", true)

	var n = 0

	for (var i = 1; i < ds_grid_height(global.dialog_data); i++){ 

	    if global.dialog_data[# 0, i] == ID {
    
	        found = true
	        if (global.dialog_data[# 8, i] != "") spr = asset_get_index(global.dialog_data[# 8, i]);
        
	    }else if global.dialog_data[# 0, i] != ""{
    
	        if (found){
	            break;
	        }
	    }
    
    
	    if (global.dialog_data[# 0, i] == "" or global.dialog_data[# 0, i] == ID) and (found){
	        var sng;
        
	        var txt_es = replace_quotations(global.dialog_data[# 1, i])
        
	        var txt_en = replace_quotations(global.dialog_data[# 2, i])
        
        
	        if (global.dialog_data[# 4, i] == "") sng = -1 else sng = asset_get_index(global.dialog_data[# 4, i])
        
	        dialog(txt_es, txt_en, real(global.dialog_data[# 3, i]), sng, n)
        
	        if (global.dialog_data[# 5, i] != "") dialog_motion(n, real(global.dialog_data[# 5, i]), real(global.dialog_data[# 6, i]))
			
	        if (global.dialog_data[# 7, i] != "") dialog_set_timeline(n, real(asset_get_index(global.dialog_data[# 7, i])));
        
	        n++
	    }
	}

	if (found) dialog_end();



}
