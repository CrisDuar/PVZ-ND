if vida <= 0
or global.nivelterminado=true{
    with(instance_create(x-66,y-66+30*water,popdrop_obj)){
        w=other.water
        image_blend=other.image_blend;
        sprite_index=sign_spr
        point=other.y
        depth=other.depth-10
    }
}

event_inherited();
if vida>30{if comiendo=false{sprite_index=protestantwalk3_spr}else{sprite_index=protestanteat3_spr}}
if vida<=30{if comiendo=false{sprite_index=protestantwalk2_spr}else{sprite_index=protestanteat2_spr}}

