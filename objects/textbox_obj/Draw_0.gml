draw_set_halign(fa_left)
draw_set_valign(fa_center)
draw_set_font(plants_fnt)

var c1 = make_colour_rgb(200, 182, 137); //box
var c2 =make_colour_rgb(131, 90, 71); //line
var c3 = make_colour_rgb(73, 53, 33); //text

if selected==true c1=make_colour_rgb(234, 223, 196);
draw_rectangle_colour(x-wth,y-hth,x+wth,y+hth,c1,c1,c1,c1,false)
//draw_rectangle_colour(x-wth-1,y-hth-1,x+wth+1,y+hth+1,c2,c2,c2,c2,true)
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

