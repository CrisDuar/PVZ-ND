if !surface_exists(shadow_surf){
    shadow_surf=surface_create(room_width,room_height);
}
surface_set_target(shadow_surf)
draw_clear_alpha(c_black,0)
d3d_set_fog(true,c_black,0,1)

if instance_exists(typeplant2_obj){
    with(typeplant2_obj){
        //draw shadow
        if visible==true{
            if object_index==garlicdrone_obj{
                draw_sprite_ext(shadow_spr,0,x,y+40,sprite_width*0.8/83,(sprite_width*0.8*(30/83))/30,0,c_white,image_alpha)
            }else if object_index==chomper_obj{
                draw_sprite_ext(shadow_spr,0,x,y,sprite_width*0.7/83,(sprite_width*0.5*(30/83))/30,0,c_white,image_alpha)
            }else if object_index==apisonaflor_obj{
                draw_sprite_ext(shadow_spr,0,x,ystart,sprite_width/83,(sprite_width*0.7*(30/83))/30,0,c_white,image_alpha)
            }else if object_index==cherry_obj or object_index==singlecherry_obj{
                draw_sprite_ext(shadow_spr,0,x,y+40,sprite_width/83,(sprite_width*(30/83))/30,0,c_white,image_alpha)
            }else if object_index==jalapeno_obj{
                draw_sprite_ext(shadow_spr,0,x,y+20,sprite_width/83,(sprite_width*(30/83))/30,0,c_white,image_alpha)
            }else if object_index==fumeshroom_obj or object_index==cattail_obj or object_index==ghostpepper_obj{
                draw_sprite_ext(shadow_spr,0,x,y,sprite_width*0.7/83,(sprite_width*0.7*(30/83))/30,0,c_white,image_alpha)
            }else if object_index==bowlingbulb_obj{
                draw_sprite_ext(shadow_spr,0,x,y+10,sprite_width/83,(sprite_width*(30/83))/30,0,c_white,image_alpha)
            }else if object_index!=granocafe_obj and object_index!=gravebuster_obj{
                draw_sprite_ext(shadow_spr,0,x,y,sprite_width/83,(sprite_width*(30/83))/30,0,c_white,image_alpha)
            }
        }
    }
}

if instance_exists(eatfather_obj){
    with(eatfather_obj){
        //draw shadow
        if object_index==beachballdrop_obj{
            draw_sprite_ext(shadow_spr,0,x,point+40,sprite_width/83,(sprite_width*(30/83))/30,0,c_white,image_alpha)
        }else if object_index==z_polevaulter_obj{
            if state==1 and image_index>8{ 
                if image_index>8 and image_index<=18{
                draw_sprite_ext(shadow_spr,0,x-(image_index-8)*16,y+2,(119*(83/119))/83,(119*(30/119))/30,0,c_white,image_alpha)
                }else{
                draw_sprite_ext(shadow_spr,0,x-160,y+2,(119*(83/119))/83,(119*(30/119))/30,0,c_white,image_alpha)
                }
            }else{
            draw_sprite_ext(shadow_spr,0,x,y+2,(119*(83/119))/83,(119*(30/119))/30,0,c_white,image_alpha)
            }
        }else{
            draw_sprite_ext(shadow_spr,0,x,y+2,(sprite_width*(83/119))/83,(sprite_width*(30/119))/30,0,c_white,image_alpha)
        }
    }
}

if instance_exists(bush_obj){
    with(bush_obj){
        //draw shadow
        draw_sprite_ext(shadow_spr,0,x,y+2,(sprite_width*(83/119))/83,(sprite_width*(30/119))/30,0,c_white,image_alpha)
    }
}


if instance_exists(vase_obj){
    with(vase_obj){
        //draw shadow
        draw_sprite_ext(shadow_spr,0,x,y,(sprite_width)/83,(sprite_width*(30/83))/30,0,c_white,image_alpha)
    }
}

if instance_exists(animgrave_obj){
    with(animgrave_obj){
        //draw shadow
        if sprite_index==drhealsanim_spr{
        draw_sprite_ext(shadow_spr,0,x,y,(sprite_width*(90/119))/83,(sprite_width*(30/83))/30,0,c_white,image_alpha)
        }else{
        draw_sprite_ext(shadow_spr,0,x+10,y-15,(sprite_width*(90/119))/83,(sprite_width*(30/83))/30,0,c_white,image_alpha)
        }
    }
}

if instance_exists(gravedetect_obj){
    with(gravedetect_obj){
        //draw shadow
        if object_index==drheals_obj{
        draw_sprite_ext(shadow_spr,0,x,y,(sprite_width*(90/119))/83,(sprite_width*(30/83))/30,0,c_white,image_alpha)
        }else{
        draw_sprite_ext(shadow_spr,0,x+10,y-15,(sprite_width*(90/119))/83,(sprite_width*(30/83))/30,0,c_white,image_alpha)
        }    }
}

if instance_exists(zombieprev_obj){
    with(zombieprev_obj){
        //draw shadow
        draw_sprite_ext(shadow_spr,0,x,y+2,(sprite_width*(83/119))/83,(sprite_width*(30/119))/30,0,c_white,image_alpha)
    }
}

if instance_exists(zombieded_obj){
    with(zombieded_obj){
        //draw shadow
        draw_sprite_ext(shadow_spr,0,x,y+2,(sprite_width*(83/119))/83,(sprite_width*(30/119))/30,0,c_white,image_alpha)
    }
}

if instance_exists(quemado_obj){
    with(quemado_obj){
        //draw shadow
        draw_sprite_ext(shadow_spr,0,x,y,(sprite_width*(83/119))/83,(sprite_width*(30/119))/30,0,c_white,image_alpha)
    }
}

if instance_exists(parentproj_obj){
    with(parentproj_obj){
        //draw shadow
        if object_index!=electro_obj{
            draw_sprite_ext(shadow_spr,0,x,y+50,sprite_width/50,(sprite_width*(30/50))/30,0,c_white,image_alpha)
        }
    }
}

if instance_exists(parabolproj_obj){
    with(parabolproj_obj){
        //draw shadow
        if rule_shadow=true draw_sprite_ext(shadow_spr,0,x,(1-t)*y1 + t*y3,sprite_width/83,(sprite_width*(30/83))/30,0,c_white,image_alpha)
    }
}

if instance_exists(popdrop_obj){
    with(popdrop_obj){
        //draw shadow
        if sprite_index==zombiehead_spr{
        draw_sprite_ext(shadow_spr,0,x,point+10,sprite_width/83,(sprite_width*(30/83))/30,0,c_white,image_alpha)
        }else{
        draw_sprite_ext(shadow_spr,0,x,point+5,sprite_width/83,(sprite_width*(30/83))/30,0,c_white,image_alpha)
        }
    }
}

if instance_exists(globalpod_obj){
    with(globalpod_obj){
        //draw shadow
        draw_sprite_ext(shadow_spr,0,x,y,sprite_width/80,(sprite_width*(30/83))/30,0,c_white,image_alpha)
    }
}
d3d_set_fog(false,c_white,0,0)
//texture_set_interpolation(true);
surface_reset_target();

draw_set_alpha(0.1)
draw_surface(shadow_surf,0,0)
draw_set_alpha(1)

