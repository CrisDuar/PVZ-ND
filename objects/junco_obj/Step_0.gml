event_inherited();

if a>0 a-=0.05
if image_yscale>1 image_yscale-=0.05

if time>0{
    if global.gameover=false
    and global.nivelterminado=false
    and global.iniciogame=true{
    time-=cadencia/(freeze+1)
    }
}else{
    if collision_rectangle(255, get_closest_row(y-90)-5,1115,get_closest_row(y+90)+5,parentattack_obj,false,false){
        junco_attack(reed_dmg);
    }
    time=room_speed*random_range(1.5,2)
}


