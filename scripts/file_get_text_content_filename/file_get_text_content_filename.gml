/// @description file_get_text_content(filename)
/// @param filename
function file_get_text_content_filename(argument0) {
	//script by FrostyCat!

	var f = file_text_open_read(argument0),
	str = "";
	while (!file_text_eof(f)) {
	  str += file_text_read_string(f) + chr(10);
	  file_text_readln(f);
	}
	file_text_close(f);
	return str;




}
