image_alpha+=0.2

if global.pag > 0
{
if enter=false{
image_index=0}else{
image_index=1}
ready=true
}else{
image_index=2
ready=false
}

if global.playerReady=true{vspeed+=0.5}

if vspeed>=25{
instance_destroy();
}

