draw_set_font(points_fnt)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

var _c2=make_colour_rgb(184, 97, 34);
var _c3=make_colour_rgb(113, 70, 40);
var _c=make_colour_rgb(220, 211, 177)
var _c1=make_colour_rgb(200, 185, 145)

if drawname=true{
    /*if global.lang="en"{
        var _w=(string_width(name_eng)/2)+5
        var _h=(string_height(name_eng)/2)+1
        
        draw_rectangle_colour(x-_w-4,yy-_h-4,x+_w+4,yy+_h+4,_c3,_c3,_c3,_c3,false)
        draw_rectangle_colour(x-_w-2,yy-_h-2,x+_w+2,yy+_h+2,_c2,_c2,_c2,_c2,false)
        draw_rectangle_colour(x-_w,yy-_h,x+_w,yy+_h,_c,_c,_c1,_c1,false)
        draw_text_colour(x,yy,name_eng,c_black,c_black,c_black,c_black,1)
    }else if global.lang="es"{
        var _w=(string_width(name_esp)/2)+5
        var _h=(string_height(name_esp)/2)+1
        
        draw_rectangle_colour(x-_w-4,yy-_h-4,x+_w+4,yy+_h+4,_c3,_c3,_c3,_c3,false)
        draw_rectangle_colour(x-_w-2,yy-_h-2,x+_w+2,yy+_h+2,_c2,_c2,_c2,_c2,false)
        draw_rectangle_colour(x-_w,yy-_h,x+_w,yy+_h,_c,_c,_c1,_c1,false)
        draw_text_colour(x,yy,name_esp,c_black,c_black,c_black,c_black,1)
    }*/
    var namecheck = ""
    
    if global.lang="en"{
        namecheck=name_eng
    }else if global.lang="es"{
        namecheck=name_esp
    }
    
    var _w=(string_width(string_hash_to_newline(namecheck))/2)+5
    var _h=(string_height(string_hash_to_newline(namecheck))/2)+1
    
    draw_rectangle_colour(xx-_w-4,yy-_h-4,xx+_w+4,yy+_h+4,_c3,_c3,_c3,_c3,false)
    draw_rectangle_colour(xx-_w-2,yy-_h-2,xx+_w+2,yy+_h+2,_c2,_c2,_c2,_c2,false)
    draw_rectangle_colour(xx-_w,yy-_h,xx+_w,yy+_h,_c,_c,_c1,_c1,false)
    draw_text_colour(xx,yy,string_hash_to_newline(namecheck),c_black,c_black,c_black,c_black,1)
    
}


/* */
/*  */
