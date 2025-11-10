event_inherited();

if sprite_index=imgshot
{img=0.24+(0.02*cadencia)}else{img=0.16}

if time<=0
and sprite_index=imgidle{
    if global.gameover=false and global.nivelterminado=false and global.iniciogame=true{
        if object_index=tripitidora_obj{
            if collision_line(x+40, top, maxdistance, y-100,parentattack_obj, false, false)
            or collision_line(x+10, y, maxdistance, y,parentattack_obj, false, false)
            or collision_line(x+40, bottom, maxdistance, y+80,parentattack_obj, false, false){
                sprite_index=imgshot
                image_index=0
                if variable_instance_exists(id, "shooting"){shooting = true;}
            }
        }else if object_index=rotinabo_obj{
            if collision_line(x+20, y-50, x+20 + 800 * dcos(45), y-50 - 800 * dsin(45), parentattack_obj, true, false)
            or collision_line(x-20, y-50, x-20 + 800 * dcos(135), y-50 - 800 * dsin(135), parentattack_obj, true, false)
            or collision_line(x-20, y-30, x-20 + 800 * dcos(225), y-30 - 800 * dsin(225), parentattack_obj, true, false)
            or collision_line(x+20, y-30, x+20 + 800 * dcos(315), y-30 - 800 * dsin(315), parentattack_obj, true, false){
                sprite_index=imgshot
                image_index=0
                if variable_instance_exists(id, "shooting"){shooting = true;}
            }
        }else if object_index=electripear_obj{
            if collision_rectangle(x-15,y,x+15,y+196, parentattack_obj, true, false)
            or collision_rectangle(x-15,y,x+15,y-236, parentattack_obj, true, false){
                sprite_index=imgshot
                image_index=0
                if variable_instance_exists(id, "shooting"){shooting = true;}
            }
        }else if object_index==melon_obj{
            if collision_rectangle(x-200,y-120,x+200,y+80,parentattack_obj,true,false){
                sprite_index=imgshot
                image_index=0
                if variable_instance_exists(id, "shooting"){shooting = true;}
            }
        }else if object_index==cattail_obj{
            if collision_rectangle(0,0,1100,640,gravedetect_obj,false,false){
                sprite_index=imgshot
                image_index=0
            }
            if instance_exists(eatfather_obj){
                with(eatfather_obj){
                    if (collision_rectangle(0,0,1100,640,self,false,false) and mask_index!=nocol_spr and mask_index!=ghostnohit_spr) and other.sprite_index=other.imgidle{
                        other.sprite_index=other.imgshot
                        other.image_index=0
                    }
                }
            }
        }else{
            if collision_line(x + (10*xmod), y-10, maxdistance, y,parentattack_obj, false, false){
                sprite_index=imgshot
                image_index=0
                if variable_instance_exists(id, "shooting"){shooting = true;}
            }
        }
    }
    time=60*random_range(1.5,2)
}else{
    time-=cadencia/(freeze+1)
}

