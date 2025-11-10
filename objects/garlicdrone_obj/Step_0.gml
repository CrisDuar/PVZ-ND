event_inherited();
depth=-y-60

//Subir y bajar
if up<360 up++ else up=0
yy = 10*sin(degtorad(up))

if sprite_index=garlicfly1_spr{
    if image_index>=11.5{
        sprite_index=garlicdrone_spr
        img=0.2
    }
}

if sprite_index=garlicshoot_spr{
if image_index>=18 and ready=false{
if shooted=false
and global.gameover=false
{
ready=true
shooted=true
if shooted=true{
    if disfraz=0{
        with(instance_create(x+12,y-24,garlicclove_obj)){vspd=4}
    }
    
    if disfraz=1{
        with(instance_create(x+12,y-24,garlicclove_obj)){vspd=choose(10.75,-9.75)}
        with(instance_create(x+12,y-24,garlicclove_obj)){vspd=4}
        with(instance_create(x+12,y-24,garlicclove_obj)){hspd=20; vspd=4}
    }
    shooted=false
}

}
}
    if image_index>23.5{
        img=0.2
        image_index=0
        sprite_index=garlicdrone_spr
        ready=false
    }
}

