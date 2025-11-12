/// @description ELECTROCUTADO
audio_play_sound(icelettuce_snd,1,false)

with(typeplant2_obj){
    if collision_rectangle(other.x-100,other.y-120,other.x+100,other.y+120,self,false,false){
        if (timefreeze<room_speed*15) timefreeze=room_speed*15
        with(instance_create(x,y-60,luzcafe_obj)){sprite_index=luzicelettuce_spr}
        instance_create(x,y-60,destroygrave_obj)
    }
}
with(instance_create(x,y-90,luzcafe_obj)){sprite_index=luzicelettuce_spr}
instance_create(x,y-90,destroygrave_obj)
part_particles_create(control_obj.part, x, y-70, control_obj.p20, 40);

event_inherited();

