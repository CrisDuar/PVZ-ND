if gui=false{
if global.iniciogame=false{
image_alpha=0
}
else{
if x!=x2 {x=x2}
image_alpha=1
}

if global.gameover=true{
image_alpha=0
}
}
else{
if image_alpha<1 image_alpha+=0.2
if global.playerReady=true{vspeed-=0.5}
if vspeed < -40{gui=false; x=x2; y=ystart; vspeed=0; image_alpha=0}
}



