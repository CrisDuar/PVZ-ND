//dibujar variables
if (multijugador==false) or (global.vstouch==true and os_type!=os_android and mouse_x<trazo_obj.x){
    if pala=true and room!=izombie_rm{
        draw_sprite(pala_spr,0,mouse_x,mouse_y)
    }
}

//Chile fantasma
if instance_exists(ghostpepper_obj){
    with(ghostpepper_obj){
        if state == 2{
            with(eatfather_obj){
                if point_in_rectangle(x,y,other.x-other.area,other.y-20,other.x+other.area,other.y+20){
                    draw_sprite(ghosteffect_spr,other.gimg,x,y)
                }
            }
        }
    }
}

if instance_exists(typeplant2_obj){
    with(typeplant2_obj){
        if in_danger{
            if (room==nivel63_rm or in_danger) and global.gameover==false and !instance_exists(dialogctrl_obj){
                draw_set_halign(fa_center)
                draw_set_valign(fa_middle)
                draw_set_font(levelname_fnt)
                var txt;
            
                if global.lang=="es" txt="Protege aquí" else txt="Protect here"; 
                
                draw_sprite_ext(heart_spr,0,x-25,y-3, 1, 1, 0, c_white, 1-lph_dngr)
                draw_text_colour_outline(x,y,txt,c_white,c_white,lph_dngr*0.85,c_dkgray,c_dkgray,lph_dngr,2,20,1,1,0)
                draw_set_halign(fa_left)
                draw_text_colour_outline(x-5,y,vida,c_white,c_white,max(0.85-lph_dngr,0),c_dkgray,c_dkgray,1-lph_dngr,2,20,1,1,0)
            }
        }
    }
}

if global.gameover==true{
    draw_set_alpha(gmov_a)
    draw_rectangle_colour(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
    draw_set_alpha(1)
}

