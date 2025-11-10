if soltarbrazo=false{
with(instance_create(x,y,quemado_obj)){
water=other.water
}
}else{
with(instance_create(x,y,quemado_obj)){
sprite_index=zombiequemado2_spr
water=other.water
}
}

zombiedrop(false);
instance_destroy();

