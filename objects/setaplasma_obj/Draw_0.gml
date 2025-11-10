if ((point_in_rectangle(mouse_x,mouse_y,x-29,y-60,x+29,y) and control_obj.multijugador=false) 
or (place_meeting(x,y,plantmulti_obj) and control_obj.multijugador=true and (control_obj.seleccionado!=12 or distance_to_object(garlicdrone_obj)<10)))
and timer<=0
and sleep==false
and sprite_index==imgidle
and global.gameover=false{
    draw_sprite_outlined(sprite_index,image_index,x+irandom_range(-shake, shake),y+yy,image_xscale*xmod,image_yscale,image_angle,c_white,c_white)
}
event_inherited();
draw_sprite_ext(sprite_index,image_index,x+irandom_range(-shake, shake),y+yy,image_xscale*xmod,image_yscale,image_angle,c_black,_alpha)

