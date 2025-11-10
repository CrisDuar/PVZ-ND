/// @description read_stats(string)
/// @param string
function read_stats(argument0) {

	/*
	format:

	stat1:text|stat2:text

	*/


	var str = argument0
	var new_str = ""
	var tmp_str = "";

	for(var i = 1; i <= string_length(str); i++){
    
	    switch(string_char_at(str, i)){
	        default:
	            tmp_str += string_char_at(str, i)
            
	            if i = string_length(str){
	                new_str += "<c2>" + tmp_str;
	                tmp_str = "";
	            }
	        break;
        
	        case ":":
	            new_str += "<as><c1>" + tmp_str + ": ";
	            tmp_str = "";
            
	        break
        
	        case "|":
	            new_str += "<c2>" + tmp_str + " ";
	            tmp_str = "";
	        break
	    }

	}

	return new_str;




}
