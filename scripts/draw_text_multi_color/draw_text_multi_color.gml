/// @description draw_text_multi_color(x, y, string, char_width, w, sep, default color)
/// @param x
/// @param  y
/// @param  string
/// @param  char_width
/// @param  w
/// @param  sep
/// @param  default color
function draw_text_multi_color(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {

	draw_set_halign(fa_left)

	var xx = argument0
	var yy = argument1
	var str = argument2
	var char_w = argument3

	var w = argument4
	var sep = argument5

	var ww = 0;
	var hh = 0;
	var color = argument6

	for(var i = 1; i <= string_length(str); i++){
	    var tag = noone
    
	    //Go to next lane when the word is too long
    
    
	    if (string_char_at(str, i) == " "){
	        var ii = i + 1
	        var len = 0
        
	        while(string_char_at(str, ii) != " "  and ii <= string_length(str)){
	            ii++
	            if string_char_at(str, ii) != "<" len++ else len-=4
	        }
        
	        if (ww + (len*char_w) >= w){
	            ww = 0
	            hh += sep
	            i++
	        }
	    }
    
    
	    if string_char_at(str, i) == "<"{
	        tag = string_char_at(str, i) + string_char_at(str, i+1) + string_char_at(str, i+2) + string_char_at(str, i + 3);
	        switch(tag){
	            case "<sl>":
	                ww = 0 
	                hh += sep
	            break
            
	            case "<as>":
	                if ww>0{
	                    ww = 0 
	                    hh += sep
	                }
	            break;
            
	            case "<c0>":
	                color = argument6
	            break
            
	            case "<c1>":
	                color = make_colour_rgb(77,76,79)//gray
	            break
            
	            case "<c2>":
	                color = make_colour_rgb(222,18,0)//red
	            break
            
	            case "<c3>":
	                color = make_colour_rgb(195,0,255)//purple
	            break
            
	            case "<c4>":
	                color = make_colour_rgb(48,25,194)//blue
	            break
	        }
	    }
    
	    draw_set_color(color)
    
	    if tag == noone{
	        //skip line
        
	        ww += char_w 
	        /*
	        if (ww > w and string_char_at(str, i) == " "){
	            ww = 0
	            hh += sep
	        }else{
	            ww += char_w 
	        }*/
        
	        draw_text(xx + ww, yy + hh, string_hash_to_newline(string_char_at(str, i)))
	    }else{
	        i += 3
	    }
    
	    draw_set_color(c_white)
	}



}
