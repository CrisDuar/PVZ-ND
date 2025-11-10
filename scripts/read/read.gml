/// @description read(value)
/// @param value
function read(argument0) {
	var t = base64_decode(argument0)
	var tt = ""
	var tr = ""
	for (var i=1; i<=string_length(t); i++){var char = string_char_at(t,i);
	if ord(char) < 97 or ord(char) > 122{tt+=char}else{tr += chr(real(tt)-22); tt = ""}}
	return tr



}
