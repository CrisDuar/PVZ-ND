if other.object_index!=z_balloon_obj{
    with(instance_create(x,y,powie_obj)){sprite_index=strike_spr}
    part_particles_create(control_obj.part, x-random_range(-10,12), y, control_obj.p1, 40);
    create_explosion(x,y+10,0,3,3,bulboexplota_snd)
    instance_destroy();
}

