event_inherited();
image_index=0
audio_play_sound(explocharging_snd,1,false)
timer=60
explo=false
vida=1000
maxhp=1000
poison=false
poisontime=0
particle=0
/*
part=part_system_create()
part_system_depth(part, -y+21);
p1=part_type_create()

part_type_shape(p1,pt_shape_disk)
//part_type_sprite(p1,firepart_spr,0,0,1);
part_type_size(p1,1.75,3,-0.05,0);
part_type_orientation(p1,0,360,0,0,0);
part_type_color2(p1,c_orange,c_red);
part_type_alpha3(p1,1,1,0);
part_type_blend(p1,1);
part_type_direction(p1,0,360,0,1);
part_type_speed(p1,1.5,3,-0.005,0);
part_type_life(p1,40,60);

/* */
/*  */
