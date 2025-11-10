if texttodraw!=3{
size+=0.001
}


timer-=dlt
if timer<=0{
texttodraw++
if texttodraw<=3 {timer=room_speed/1.5338}else{timer=room_speed*3.5}
if texttodraw>=4{
global.iniciogame=true
global.iniciomusica=true
despareciendo=true
}
}


if despareciendo=true{
transparencia -= 0.2
}

if transparencia <=0{
instance_destroy();
}

