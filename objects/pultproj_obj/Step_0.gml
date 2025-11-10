depth=-y-1

t+=0.0125

if instance_exists(obj){
objx = obj.x
objy = obj.y
}

x2= (objx + x1)/2 //punto2
y2= objy-500

x = (power((1-t),2) * x1) + (2*(1-t)*t*x2) + (power(t,2) * objx)
y = (power((1-t),2) * y1) + (2*(1-t)*t*y2) + (power(t,2) * objy)

if t == 1{
with(obj){
if vida > 0
{
if soltarproteccion=false
{audio_play_sound(choose(hurtsnd,hurt2snd),1,false);}
image_alpha=0.5
vida -= 10}
}
instance_destroy();
}

