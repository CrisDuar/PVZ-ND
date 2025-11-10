event_inherited();
soltarproteccion=true
waitsprite=dog0_spr
owner = noone
dpth = 11
eat_dmg = 35
vida = 150
maxhp = 150

canhand=false
tradie=false
imagespeed1=0.25

enum states{
    walk,
    up,
    down,
    idle,
    run,
    poison,
    dig
}

state = states.walk;
behavior = choose(0, 1, 2)
swap = irandom(100)

crater = noone
dig_t = 0
start_dig_t = 60 * irandom_range(6,9)

