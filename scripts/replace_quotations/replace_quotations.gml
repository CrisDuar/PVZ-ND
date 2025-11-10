/// @description replace_quotations(string)
/// @param string
function replace_quotations(argument0) {

	var new_str = string_replace_all(argument0, "”", "\"")
	new_str= string_replace_all(new_str, "“", "\"")

	new_str= string_replace_all(new_str, "‘", "'")
	new_str= string_replace_all(new_str, "’", "'")

	return new_str



}
