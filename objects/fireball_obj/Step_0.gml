event_inherited();
part_particles_create(part, x+random_range(-3,3), y+random_range(-3,3)+yy, p1, 3);

if control_obj.rain==true{
    event_perform(ev_collision,freeze_obj)
}

