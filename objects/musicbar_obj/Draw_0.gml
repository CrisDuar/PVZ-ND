draw_set_font(plants_fnt)
draw_set_valign(fa_middle)
draw_set_halign(fa_left)

draw_text_ext_colour(x,y-35,string_hash_to_newline(text),32,440,c_1,c_1,c_1,c_1,image_alpha)//texto
draw_rectangle_colour(minlimit-6,y-16,maxlimit+6,y+16,c_4,c_4,c_4,c_4,false)//borde3
draw_rectangle_colour(minlimit-4,y-14,maxlimit+4,y+14,c_3,c_3,c_3,c_3,false)//borde2
draw_rectangle_colour(minlimit-2,y-12,maxlimit+2,y+12,c_4,c_4,c_4,c_4,false)//borde1
draw_healthbar(minlimit,y-10,maxlimit,y+10,controlmenu_obj.musicvol,c_2,c_5,c_5,0,true,false)

draw_sprite(zombiehead_spr,0,x+controlmenu_obj.musicvol*(barlong/100),y)

//draw_text(x,y+50,controlmenu_obj.sfxvol)

