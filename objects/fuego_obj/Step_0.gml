if sfx==true{audio_play_sound(firestart_snd,1,false); sfx=false}
if image_index>11{instance_destroy()}

if image_index<8{
part_particles_create(part, x-random_range(-45,45), y-random(15), p1, 5);
}

