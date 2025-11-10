//event_inherited();
if global.gameover=false and global.nivelterminado=false and global.iniciogame=true{
    if collision_line(x+50, y+40, 1120, y+40,parentattack_obj, false, false){
    image_speed=imagspdisparo
    sprite_index=garlicshoot_spr
    }
}
alarm[0]=room_speed*random_range(1.9,2.3)

