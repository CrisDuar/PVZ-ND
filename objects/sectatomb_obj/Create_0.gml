event_inherited();
rule_linear=true
tp=0.01

tries = 0;

if (global.videoq > 1){ 
    with(instance_create(x,y,particlesecta1_obj)){
        direction = other.direction*-1
        obj = other.id
    }
}

