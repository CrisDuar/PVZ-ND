part_particles_create(control_obj.part, x+random_range(-3,3), y+random_range(-3,3), control_obj.p4, 3);
audio_play_sound(fireimpact_snd,1,false)
instance_destroy();

