switch(image_index){
    default:
        part_particles_create(control_obj.part, x, y, control_obj.p12, 1);
    break

    case 1:
        part_particles_create(control_obj.part, x, y+random_range(-10,10), control_obj.p12, 1)
        part_particles_create(control_obj.part, x+83, y+random_range(-10,10), control_obj.p12, 1)
        part_particles_create(control_obj.part, x+166, y+random_range(-10,10), control_obj.p12, 1)
        with(eatfather_obj){
            if collision_rectangle(other.x,other.y-30,other.x+166,other.y+30,self,false,false){
                cotton_dmg(20);
            }
        }
    break

    case 2:
        part_particles_create(control_obj.part, x, y, control_obj.p16, 1)
        with(eatfather_obj){
            if collision_rectangle(other.x-100,other.y-130,other.x+100,other.y+120,self,false,false){
                cotton_dmg(20);
            }
        }
    break
}

audio_sound_pitch(audio_play_sound(cotton_snd,1,false),random_range(0.8,1.2))
if sprite_index = cotton2_spr audio_sound_pitch(audio_play_sound(cottonsheep_snd,1,false),random_range(1,1.3))
instance_destroy();

