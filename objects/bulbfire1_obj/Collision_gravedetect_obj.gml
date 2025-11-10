with(instance_create(x,y,powie_obj)){sprite_index=strike_spr}
//part_system_depth(control_obj.part, -y+21);
//part_type_direction(control_obj.p1,0,360,0,1);
part_particles_create(control_obj.part, x-random_range(-10,12), y, control_obj.p1, 40);
create_explosion(x,y+10,0,3,3,bulboexplota_snd)
instance_destroy();

