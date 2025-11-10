event_inherited();
img=0.18

if sprite_index=imgshot{
if image_index>=2 and disparando=false{
audio_sound_pitch(audio_play_sound(scream_snd, 1, false),random_range(0.8,1.2))

with(eatfather_obj){
    if collision_rectangle(other.x-200,other.y-120,other.x+200,other.y+80,self,false,false){
        audio_play_sound(choose(pea_impact_snd,pea_impact2_snd),1,false)
        var b;
        b=distance_to_object(other)*0.75
        if b==0 b=1
        var c;
        c=random(100)
        image_alpha=0.5
        melon=round(clamp(power(2,225/max(b,1)),1,30))
        
        vida-=round(clamp(power(2,225/max(b,1)),1,30))
        if b<=c{
            if timestop<room_speed{timestop=room_speed*0.75}
            with(instance_create(x,y-60,damage_obj)){
                if global.lang="en" value="STUNNED!!!"
                if global.lang="es" value="ATONTAO!!!"
            }
        }
        with(instance_create(x,y-90,damage_obj)){
            value="-"+string(other.melon)+" HP!!!"
        }
       // event_perform(ev_collision,melonevent_obj)
    }
}

with(gravedetect_obj){
    if collision_rectangle(other.x-200,other.y-120,other.x+200,other.y+80,self,false,false){
        audio_play_sound(choose(pea_impact_snd,pea_impact2_snd),1,false)
        var b;
        b=distance_to_object(other)*0.75
        image_alpha=0.5
        
        vida-=round(clamp(power(2,225/max(b,1)),1,30))
        melon=round(clamp(power(2,225/max(b,1)),1,30))
        
        with(instance_create(x,y-90,damage_obj)){
            value="-"+string(other.melon)+" HP!!!"
        }
       // event_perform(ev_collision,melonevent_obj)
    }
}


disparando=true
}

if image_index>=image_number-0.5
{
sprite_index=imgidle
image_index=0
image_speed=0.16
disparando=false
}
}


