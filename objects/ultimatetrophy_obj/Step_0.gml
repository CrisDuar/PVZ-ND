image_alpha+=0.08

if room==levelhard1_6_rm{
if global.levelhard1>=6
and sprite_index!=invisible3_spr{instance_create(x,y,bolsamonedas_obj) ; instance_destroy()}

if global.levelhard1<6
and flecha=false{flecha=true
with(instance_create(x,y-60,flecha_obj))
{hspeed=other.hspeed ; vspeed=other.vspeed}}
}

if room==levelhard2_6_rm{
if global.levelhard2>=6
and sprite_index!=invisible3_spr{instance_create(x,y,bolsamonedas_obj) ; instance_destroy()}

if global.levelhard2<6
and flecha=false{flecha=true
with(instance_create(x,y-60,flecha_obj))
{hspeed=other.hspeed ; vspeed=other.vspeed}}
}

if room==nivel30_rm{
if global.niveles>=31
and sprite_index!=invisible3_spr{instance_create(x,y,bolsamonedas_obj) ; instance_destroy()}

if global.niveles<31
and flecha=false{flecha=true
with(instance_create(x,y-60,flecha_obj))
{hspeed=other.hspeed ; vspeed=other.vspeed}}
}


if animacion=true
{
if vspeed<=3
{vspeed+=0.1}
else
{
if animacion=true{audio_play_sound(coindrop_snd,1,false)}
animacion=false
vspeed=0
hspeed=0
}
}

