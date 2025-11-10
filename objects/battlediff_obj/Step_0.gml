image_index=global.battle_diff

if global.lang="en"{
switch(image_index){
case 0: text="Easy" break
case 1: text="Normal" break
case 2: text="Hard" break
}}

if global.lang="es"{
switch(image_index){
case 0: text="Fácil" break
case 1: text="Normal" break
case 2: text="Difícil" break
}
}

if point_in_rectangle(mouse_x,mouse_y,x-80-25,y-23,x-80+25,y+23){
    s1=1.1
}else{
    s1=1
}

if point_in_rectangle(mouse_x,mouse_y,x+80-25,y-23,x+80+25,y+23){
    s2=1.1
}else{
    s2=1
}

