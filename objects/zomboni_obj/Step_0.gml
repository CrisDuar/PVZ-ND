if (vida<=0 or global.nivelterminado){
    event_perform(ev_collision,globalexplosions_obj)
}

event_inherited();
timecongelado=0
timestop=0

if vida<=1000{sprite_index=zomboni1_spr}
if vida<=850{sprite_index=zomboni2_spr}
if vida<=450{sprite_index=zomboni3_spr}
if vida<=200{
    part_particles_create(part, x-random_range(60,70), y-30, p1, irandom_range(0,3));
}

if vida<=70{
    shake=1
}

if (sound==false){
    sound=true
    audio_play_sound(zomboni_snd,1,false)
    with(instance_create(x+50,y-50,ice_obj)){obj=other.id}
}

if (water){
    vida--;
    if (walkspeed<0){
        walkspeed+=0.001
    }
}

