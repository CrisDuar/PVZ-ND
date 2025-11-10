control_obj.soles=995
if global.iniciogame=false
{image_alpha=0}
else
{
if image_alpha==0{
state=1
//instance_create(x,y,cursoriplant_obj)
//instance_create(-500,128,y1)
//instance_create(-500,128,p1)
//instance_create(-500,200,p2)
//instance_create(-500,272,p3)
//instance_create(-500,344,p4)
//instance_create(-500,416,p5)
//instance_create(-500,488,p6)
}

image_alpha=1
}

x=282+(90*(xcount))+41
y=84+(104*(ycount))+49

//IA
if (instance_number(eatfather_obj)-instance_number(zombiediana_obj)-instance_number(boss1_obj) > 0){
state=2
}
else{
state=1
}


if timer<=0{
    switch(state){
        default:
            timer=60*irandom_range(2,5)
        break
    
        case 1:
            ycount=irandom(5)
            var a = random(100)
            if a<20 izombie_setplant(p1)
            timer=60*irandom_range(2,5)
        break
        
        case 2:
            f1=collision_line_first(282,150,995,150,eatfather_obj,false,true)
            f2=collision_line_first(282,260,995,260,eatfather_obj,false,true)
            f3=collision_line_first(282,360,995,360,eatfather_obj,false,true)
            f4=collision_line_first(282,465,995,465,eatfather_obj,false,true)
            f5=collision_line_first(282,570,995,570,eatfather_obj,false,true)
            
            if f1!=noone{col1=f1.x}else{col1=0}
            if f2!=noone{col2=f2.x}else{col2=0}
            if f3!=noone{col3=f3.x}else{col3=0}
            if f4!=noone{col4=f4.x}else{col4=0}
            if f5!=noone{col5=f5.x}else{col5=0}
            var a = min(col1,col2,col3,col4,col5)
            
            if a=col1 and col1!=0{ycount=0}
            else if a=col2 and col2!=0{ycount=1}
            else if a=col3 and col3!=0{ycount=2}
            else if a=col4 and col4!=0{ycount=3}
            else if a=col5 and col5!=0{ycount=4}
            else{ycount=irandom(5)}
        
            
            xcount=irandom(4)
            if x>a and xcount>0{xcount--}
            var a = random(100)
            if a<25 izombie_setplant(choose(p2,p3))
            timer=60*irandom_range(1,3)
        break
    }
    
}else{
    timer--
}

/*if global.nivelterminado=false
and global.gameover=false{

if image_alpha=1{
if collision_rectangle(282,134,995,595,eatfather_obj,false,false)
{
if instance_number(eatfather_obj)<4+5
{state="small atack"}
/*
if instance_number(eatfather_obj)>=2+5
and instance_number(eatfather_obj)<5+5
{
if instance_exists(cargpaquete_obj){
    if point_distance(y1.x,416,cargpaquete_obj.x,cargpaquete_obj.y)<2{
    state="big atack"
    }
    else{state="defense"}
}
else{state="defense"}
}*/
/*if instance_number(eatfather_obj)>=4+5
and instance_number(eatfather_obj)<10+5
or instance_number(gravedetect_obj)>10
or instance_exists(futbolzombi_obj)
or instance_exists(zombielector_obj)
{
state="defense"
//with (p5){
//if distance_to_object(cargpaquete_obj)>0.1{
//other.state="defense"
//}
//else{
///other.state="big atack"
///}
//}

/*}
if instance_number(eatfather_obj)>=10+5
{
if p6==cherrymenu_obj{
if (collision_rectangle_list(x+160,y+160,x-80,y-80,eatfather_obj,false,false,ds_list_create(),false)>=3
or collision_rectangle(0,0,430,600,eatfather_obj,false,false)){
state="instant"}else{state="big atack"}}

if p6==menusetahielo_obj{
if collision_rectangle_list(282,134,995,595,eatfather_obj,false,false,ds_list_create(),false)>=2{
state="instant"}else{state="big atack"}}
*/

/*}
}
else{
if instance_number(sunflower_obj)<5
{state="sol"}else{state="small atack"}

}
}

if state=="instant"
and instance_exists(cargpaquete_obj){
    if point_distance(y1.x,488,cargpaquete_obj.x,cargpaquete_obj.y)<2{
    state="big atack"
    }
}

switch(state){
case "sol":
timer-=random_range(0.2,1)
y1.ycount=1

if timer<=0{
ycount=irandom_range(1,5)
xcount=4
if distance_to_object(typeplant_obj)<5{if distance_to_object(sunflower_obj)<5{xcount=4}else{xcount+=choose(-1,1)}}
if control_obj.seleccionado!=0{izombie_setplant(p1)}
timer=room_speed
}
break

case "small atack":
timer-=random_range(0.5,1.5)
if timer<=0{
y1.ycount=choose(2,3)
xcount=choose(1,2,3)
if col1==0 and col2==0 and col3==0 and col4==0 and col5==0{ycount=irandom_range(1,5)}else{
check=0
while(check=0){check=choose(col1,col2,col3,col4,col5)}
switch (check){
case 1: ycount=1 break
case 2: ycount=2 break
case 3: ycount=3 break
case 4: ycount=4 break
case 5: ycount=5 break
}}

if control_obj.seleccionado!=0{izombie_setplant(p1)}
timer=room_speed
}
break

case "defense":
timer-=random_range(1,2)
if timer<=0{
y1.ycount=5
if col1==0 and col2==0 and col3==0 and col4==0 and col5==0{ycount=irandom_range(1,5)}else{
check=0
while(check=0){check=choose(col1,col2,col3,col4,col5)}
switch (check){
case 1: ycount=1 break
case 2: ycount=2 break
case 3: ycount=3 break
case 4: ycount=4 break
case 5: ycount=5 break
}}
xcount=choose(5,6)
if control_obj.seleccionado!=0{izombie_setplant(p1)}
timer=room_speed
}
break

case "big atack":
timer-=random_range(1.5,2.5)
//ycount+=0.5
//if ycount>5{ycount=0}
if timer<=0{
y1.ycount=choose(2,3,4)

if col1==0 and col2==0 and col3==0 and col4==0 and col5==0{ycount=irandom_range(1,5)}else{
check=0
while(check=0){check=choose(col1,col2,col3,col4,col5)}
switch (check){
case 1: ycount=1 break
case 2: ycount=2 break
case 3: ycount=3 break
case 4: ycount=4 break
case 5: ycount=5 break
}}
xcount=irandom_range(1,6)
if control_obj.seleccionado!=0{izombie_setplant(p1)}
timer=room_speed*random_range(0.1,0.7)
}
break

case "instant":
timer-=2
if timer<=0{
y1.ycount=6
if col1==0 and col2==0 and col3==0 and col4==0 and col5==0{ycount=irandom_range(1,5)}else{
check=0
while(check=0){check=choose(col1,col2,col3,col4,col5)}
switch (check){
case 1: ycount=1 break
case 2: ycount=2 break
case 3: ycount=3 break
case 4: ycount=4 break
case 5: ycount=5 break
}}
if collision_rectangle(282,134,995,595,eatfather_obj,false,false){
if distance_to_object(eatfather_obj)>5{
if instance_nearest(0,eatfather_obj.y,eatfather_obj).x<x{xcount--}
if instance_nearest(0,eatfather_obj.y,eatfather_obj).x>x{xcount++}
}}

/*if p6==cherrymenu_obj{
if (collision_rectangle_list(x+160,y+160,x-80,y-80,eatfather_obj,false,false,ds_list_create(),false)>=3
or collision_rectangle(0,0,430,600,eatfather_obj,false,false)){
if control_obj.seleccionado!=0{izombie_setplant(p1)}}}

if p6==menusetahielo_obj{

if collision_rectangle_list(282,134,995,595,eatfather_obj,false,false,ds_list_create(),false)>=2{
if control_obj.seleccionado!=0{izombie_setplant(p1)}}}
*/
/*timer=room_speed
}
break
}

if collision_rectangle(282,134,995,595,eatfather_obj,false,false)
{
z=instance_nearest(0,eatfather_obj.y,eatfather_obj)
if z.x<x{
xcount--
}}
}


/* */
/*  */
