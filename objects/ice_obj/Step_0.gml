if instance_exists(obj) and ext==true{
xx=xstart-(obj.x+40)
image_xscale=xx/90
image_alpha=1
if obj.water==true then ext=false
}else{
timer--
}

if timer<=0 {image_alpha-=0.25; timer=room_speed*15}

if image_alpha<=0 instance_destroy();

