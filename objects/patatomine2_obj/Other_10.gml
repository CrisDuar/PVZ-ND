if explo==false{
    explo=true
    instance_create(x+5,y-50,spudow_obj)
    repeat(4) {instance_create(x,y,particulapotato1_obj)}
    with(instance_create(x,y+50,explopotato_obj)){sprite_index=explopotato1_spr; speedlimit=1}
    with(instance_create(x,y+50,explopotato_obj)){sprite_index=explopotato2_spr; speedlimit=6.5}
    ///
    with(instance_create(x,y+50,parexplopotato_obj)){sprite_index=parexplosion2_spr; speedlimit=6.5}
    ///
    with(instance_create(x,y+50,explopotato_obj)){sprite_index=explopotato3_spr; speedlimit=22.5}
    ///
    with(instance_create(x,y+50,parexplopotato_obj)){sprite_index=parexplosion3_spr;speedlimit=22.5}
    create_explosion(x,y-20,0,1.7,0.4,potatomineexplo_snd)
}

vida = 0;

