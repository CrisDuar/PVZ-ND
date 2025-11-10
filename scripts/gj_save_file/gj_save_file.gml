/// @description gj_save_file(file, key)
/// @param file
/// @param  key
function gj_save_file(argument0, argument1) {
	var file = argument0
	var key = argument1

	if file_exists(file){
	    //gj_datastore_remove_user(key);

	    var str_save = file_get_text_content_filename(file)
	    gj_datastore_set_user(key, str_save);
	}



}
