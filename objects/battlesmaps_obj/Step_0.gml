image_index=global.battle_map

if global.lang="en"{
switch(image_index){
case 0: text="Day" break
case 1: text="Sunset" break
case 2: text="Night" break
case 3: text="Pool" break
case 4: text="Rain" break
case 5: text="Fog" break
}}

if global.lang="es"{
switch(image_index){
case 0: text="Día" break
case 1: text="Atardecer" break
case 2: text="Noche" break
case 3: text="Piscina" break
case 4: text="Lluvia" break
case 5: text="Niebla" break
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

