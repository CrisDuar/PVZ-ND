draw_self();

draw_text(x,y,string_hash_to_newline(state))
draw_text(x,y-20,string_hash_to_newline(collision_rectangle_list(282,134,995,595,eatfather_obj,false,false,ds_list_create(),false)))
draw_text(x,y-40,string_hash_to_newline(object_get_name(p2)))
draw_text(x,y-60,string_hash_to_newline(object_get_name(p3)))
draw_text(x,y-80,string_hash_to_newline(object_get_name(p4)))
draw_text(x,y-100,string_hash_to_newline(object_get_name(p5)))
draw_text(x,y-120,string_hash_to_newline(object_get_name(p6)))

if col1!=0 {draw_line(282,150,995,150)}
if col2!=0 {draw_line(282,260,995,260)}
if col3!=0 {draw_line(282,360,995,360)}
if col4!=0 {draw_line(282,465,995,465)}
if col5!=0 {draw_line(282,570,995,570)}

