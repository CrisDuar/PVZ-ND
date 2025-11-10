draw_set_font(plants_fnt)
draw_set_valign(fa_middle)
draw_set_halign(fa_left)

var vol = variable_instance_get(ctrlmenu_id,volname)

draw_text_ext_colour(x,y-35,string_hash_to_newline(text + " (" + string(vol) + "%)"),32,440,c_1,c_1,c_1,c_1,1)//texto
draw_rectangle_colour(minlimit-6,y-16,maxlimit+6,y+16,c_4,c_4,c_4,c_4,false)//borde3
draw_rectangle_colour(minlimit-4,y-14,maxlimit+4,y+14,c_3,c_3,c_3,c_3,false)//borde2
draw_rectangle_colour(minlimit-2,y-12,maxlimit+2,y+12,c_4,c_4,c_4,c_4,false)//borde1
draw_healthbar(minlimit,y-10,maxlimit,y,vol,c_2,c_5,c_5,0,true,false)
draw_healthbar(minlimit,y,maxlimit,y+10,vol,c_2,c_6,c_6,0,true,false)

draw_sprite(zombiehead_spr,0,x+vol*(barlong/100),y)



//draw_text(x,y+50,controlmenu_obj.sfxvol)

