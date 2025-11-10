var generador=0
var sunchance=irandom_range(0,100)

if control_obj.multijugador=false
and global.nivelterminado=false{
generador=random(100)

if generador>=30{
//nada
generador=-1
}
    
if generador<31 and generador>=11{
generador=-1
instance_create(x,y,silvercoin_obj)
}

if generador<11 and generador>=6{
generador=-1
instance_create(x,y,goldencoin_obj)
}

if generador<6 and generador>=2{
instance_create(x,y,billete_obj)
generador=-1
}

if generador<2 and generador>=1{
generador=-1
instance_create(x,y,diamond_obj)
}

if string_delete(string(room),10, 6) == "levelhard"{
if generador<1 and generador>=0{
generador=-1
instance_create(x,y,ruby_obj)
}
}
}

if room==nivel24_rm{
if sunchance<=2.5{
with(instance_create(x,y,sol_flower_obj))
    {costo=choose(15,25) ; scale=0.7 ; hspeed=-1}
    with(instance_create(x-40,y-55,sol_flower_obj))
    {costo=choose(15,25) ; scale=1 ; hspeed=-1}
}}

instance_destroy();

