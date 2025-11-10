if (vida < 200) {image_index = 2}
else if (vida < 400) {image_index = 1}
else {image_index = 0}

if vida<=0 and explo == false{
    part_particles_create(control_obj.part, x-random_range(-10,12), y-30, control_obj.p1, 40);
    create_explosion(x-3,y-30,2,3,2.7,explocherry_snd)
    audio_play_sound(zombie_eatend_snd,1,false)
    explo = true
}

event_inherited();

