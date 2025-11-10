if point_in_rectangle(mouse_x,mouse_y,minlimit-15,y-20,maxlimit+15,y+20){
controlmenu_obj.volevel = clamp(round(((mouse_x-minlimit)/(minlimit-maxlimit))*100)*-1,0,100)
}

//draw_sprite(cabecitazombie_spr,0,444+(music*2),370)

