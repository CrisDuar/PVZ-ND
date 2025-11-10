/// @description survival_newgame(file_name)
/// @param file_name
function survival_newgame(argument0) {
	var file=argument0
	var record_surv=0

	if file_exists(file){
	    ini_open(file)
	    record_surv=ini_read_real("Spawn", "record", 0 );
	    ini_close();
	file_delete(file);
	}

	ini_open(file)
	ini_write_real("Spawn","record",record_surv)
	ini_write_real("Game","version", global.survival_ver)
	ini_close();



}
