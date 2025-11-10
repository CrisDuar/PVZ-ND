event_inherited();
timer--

if timer<=0 and sprite_index!=potatomine2_spr{
    sprite_index=potatomine2_spr
    image_speed=0.14
    image_index=0
    vida=100
    audio_play_sound(potatomineup_snd,1,false)
}

if sprite_index==potatomine2_spr{

    if image_index>=4{
        with(instance_create(x,y,patatomine2_obj)){
            vida=other.vida;
            poison=other.poison;
            plant_cost = other.plant_cost;
            sprite_index = potatomine2_spr;
            image_index = other.image_index;
            
            tilexx=other.tilexx
            tileyy=other.tileyy
        }
        instance_destroy();
    }
}



