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

//Sun bean
var _hp = vida + puertavida;
var _sun = sunmode * (_hp/10);
var _am = ceil(_sun / 50);
		
for (var i = 0; i < _am; i++){
			
	var _cost = (_sun - 50 < 0) ? _sun % 50 : 50;
	_sun -= 50;
			
	create_sun(x + 10*i, y - 30, sol_flower_obj, _cost, 0.25 + 0.75 * (_cost / 50));
}


zombiedrop(false);
instance_destroy();

