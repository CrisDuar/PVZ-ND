if pila=false{
    if sans=false{
        with(instance_create(x,y,quemado_obj)){
            sprite_index=skeletonquemado_spr
            water=other.water
        }
    }else{
        with(instance_create(x,y,quemado_obj)){
            sprite_index=sansquemado_spr
            water=other.water
        }
    }
}else{
with(instance_create(x,y,burnedplant_obj))
{sprite_index=skeletonquemado2_spr; water=other.water}
}
zombiedrop(false)
if (sans) logros_obj.sans = true;

instance_destroy();

