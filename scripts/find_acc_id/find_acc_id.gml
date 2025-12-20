function find_acc_id(_free){
	
	for (var i = 0; i <= ds_map_size(global.acc_ls); i++){
		
		if (ds_map_exists(global.acc_ls, i) == _free){
			
			return i;
		}
	}
	
	return -1;
	
}