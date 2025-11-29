/// @description read_stats(string)
/// @param string
function read_stats(argument0) {

	/*
	format:

	stat1:text|stat2:text

	*/
	
	var _rechar = "";
	
	if (global.lang = "es"){
		_rechar = "Recarga:"
	}else{
		_rechar = "Recharge:"
	}

	var str = argument0
	var new_str = ""
	var tmp_str = "";
	
	_r = "16";

	str = string_insert(r, str, string_pos("recarga:", str) + string_length("recarga:"));
	
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
