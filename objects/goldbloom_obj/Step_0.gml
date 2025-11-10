event_inherited();

if global.iniciogame=true
and global.nivelterminado=false
and global.gameover=false
and sprite_index=goldbloom1_spr{
image_index=0
sprite_index=goldbloom2_spr
}

if sprite_index=goldbloom2_spr and soles=false and image_index>=9{
    soles=true
    audio_play_sound(goldbloomsun_snd,1,false)
    
    with(instance_create(x-20,y-45,sol_flower_obj)){costo=25 ; scale=1 ; hspeed=0.1}
    with(instance_create(x,y-20,sol_flower_obj)){costo=25 ; scale=1 ; hspeed=-0.5}
    with(instance_create(x+20,y-70,sol_flower_obj)){costo=25 ; scale=1 ; hspeed=0.5}
    
    with(eatfather_obj){
        if collision_rectangle(other.x-110,other.y-140,other.x+110,other.y+90,self,false,false)
        and object_index!=trashcan_obj
        and object_index!=beachballdrop_obj
        and object_index!=caja_obj{
            with(instance_create(x,y-20,sol_flower_obj)){costo=25 ; scale=1 ; hspeed=choose(-0.5,0.5)}
            instance_create(x,y-60+30*water,destroygrave_obj)
        }
    }
}

if sprite_index=goldbloom2_spr and image_index>=17{
    image_speed=0
    image_alpha-=0.1
}

if (image_alpha<=0) vida=0;

