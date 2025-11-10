event_inherited();
soltarproteccion=true
headspr=5
handspr=14

waitsprite=zombiedog0_spr
bodyspr=zombiedogded_spr

dog = instance_create(x,y, dog_obj)

with(dog){
    owner = other.id
}

