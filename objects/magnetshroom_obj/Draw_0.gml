event_inherited();

with(depth_control){
    if other.state==1 or other.state==2{
        draw_sprite(other.sprite_shield,sprite_get_number(other.sprite_shield)-1,other.objxx,other.objyy+other.yy)
    }
}

