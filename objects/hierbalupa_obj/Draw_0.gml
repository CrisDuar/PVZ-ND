var candraw = false
var cost = 25 + (50 * control_obj.multijugador)

if global.iniciogame==true and global.gameover=false{

    if control_obj.multijugador=false{
    
        if point_in_rectangle(mouse_x,mouse_y,x-29,y-60,x+29,y)
        and control_obj.seleccionado==0
        and control_obj.soles>=25
        and control_obj.pala==false{
            candraw=true
        }
    }else{
        
        if place_meeting(x,y,plantmulti_obj) and control_obj.soles>=50 and (control_obj.seleccionado != 12 or distance_to_object(garlicdrone_obj)>10) {
                candraw=true
            }
    }

    if candraw{
        draw_sprite_outlined(sprite_index,image_index,x+irandom_range(-shake, shake),y+yy,image_xscale*xmod,image_yscale,image_angle,c_white,c_white)
    }
}

event_inherited();
draw_sprite_ext(hierbalupa2_spr,image_index,x+irandom_range(-shake, shake),y+yy,image_xscale*xmod,image_yscale,image_angle,image_blend, a)

