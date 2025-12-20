///@ desc Draw event

draw_set_halign(fa_left)
draw_set_valign(fa_center)
draw_set_font(fnt)
	
var _c1 = c1;
	
if (selected) _c1 = c1_sel;

draw_rectangle_colour(x-wth,y-hth,x+wth,y+hth,_c1,_c1,_c1,_c1,false)
draw_line_width_colour(x-wth,y+hth,x+wth,y+hth,2,c2,c2)

if string_length(str)<=0{
	if global.lang=="es"{
	    draw_text_colour(x-wth+3,y,string_hash_to_newline(txt_es),c3,c3,c3,c3,0.5)
	}else{
	    draw_text_colour(x-wth+3,y,string_hash_to_newline(txt_en),c3,c3,c3,c3,0.5)
	}
}else{
	draw_text_colour(x-wth+3,y,string_hash_to_newline(init_char + str + line),c3,c3,c3,c3,1)
}