if variable_global_exists(cond){
    if variable_global_get(cond)==true{
        image_index=1
        confirm=false
        color2=c_dkgray
    }else{
        if global.dinero<cost{color2=c_red}else{color2=c_green}
        image_index=0
    }
}

if timer>0{timer--}else{confirm=false}
if alpha<1{confirm=false}

if global.lang="en"{
    text=entext
    cotext="Press again#to confirm"
    lock="Not available"
    desc = desc_en
    text_lock = entext_lock
}

if global.lang="es"{
    text=estext
    cotext="Pulse de nuevo#para confirmar"
    lock="No disponible"
    desc = desc_es
    text_lock = estext_lock
}

//
if x>=992 or x<=96{
    alpha=clamp(alpha-0.05,0.5,1)
}else{
    alpha=clamp(alpha+0.05,0.5,1)
}

if instance_exists(fadeout_obj){
    x=xstart
}

switch(type){
    default:
        limit=0
    break
    
    case 1:
        limit=600
    break
    
    case 2:
        limit=200
    break
}

if point_in_rectangle(mouse_x,mouse_y,0,640+640*type,1088,1280+640*type){
if (mouse_check_button_pressed(mb_left)){
    dx = mouse_x
    drag=scroll
    draggin=true
}
//scroll with mouse

if mouse_wheel_up() scroll=clamp(scroll-15,0,limit) x=xstart-scroll;
if mouse_wheel_down() scroll=clamp(scroll+15,0,limit) x=xstart-scroll;
}

if (mouse_check_button_released(mb_left)) {draggin=false}

if (mouse_check_button(mb_left)) and draggin=true{
    scroll = dx-(mouse_x-drag)
    scroll=clamp(scroll,0,limit)
    x=xstart-scroll
}

switch(thing){
case 0:
entext="Ice-Shroom"; estext="Seta congelada"; cond="plant0"; cost=5000
desc_en="Ice-Shroom freezes all zombies on the screen."
desc_es="Seta congelada congela a todos los zombis de la pantalla."
type=0
break

case 1:
entext="Healer-Shroom"; estext="Seta curandera"; cond="plant1"; cost=5000
desc_en="Healer-Shroom heals plants around himself and removes poison."
desc_es="Seta curandera cura a las plantas de alrededor y quita el veneno."
type=0
break

case 2:
entext="Elegant costume"; estext="Traje elegante"; cond="costume0"; cost=2500
desc_en="Grave buster will destroy gravestones faster."
desc_es="Comepiedras destruirá tumbas más rápido."
type=1
break

case 3:
entext="Sun boost (1)"; estext="Mejora de sol (1)"; cond="upgrade0"; cost=5000
desc_en="Start with 25 extra sun in the bank!"
desc_es="¡Comienza con 25 soles extra!"
type=2
break

case 4:
entext="Sun boost (2)"; 
estext="Mejora de sol (2)"; 
cond="upgrade1"; 
cost=10000
desc_en="Start with 25 extra sun in the bank!"
desc_es="¡Comienza con 25 soles extra!"
if global.upgrade0==false{color2=c_dkgray; image_alpha=0; confirm=false}else{image_alpha=1}
entext_lock = "You may have to buy another upgrade to unlock this upgrade."
estext_lock = "Quizás tengas que comprar otra mejora para desbloquear esta mejora."
type=2
break

case 5:
entext="Extra slot"; estext="Casillero extra"; cond="upgrade2"; cost=15000
desc_en="Lets you choose another plant type every level!"
desc_es="¡Te permite escoger otra planta en cada nivel!"
type=2
break

case 6:
entext="Hard-Nut#costume"; estext="Traje de#constructor"; cond="costume1"; cost=3000
desc_en="Wall-nut will have a bit more health and shorter recharge."
desc_es="La Nuez tendrá un poco más de vida y una recarga más rápida."
type=1
break

case 7:
entext="Headband#costume"; estext="Accesorio#'Bandana'"; cond="costume2"; cost=7000
desc_en="Repeater will shoot one pea instead of two, but way faster."
desc_es="Repetidora disparará sólo un guisante, pero mucho más rápido."
type=1
break

case 8:
entext="Squash"; estext="Apisonaflor"; cond="plant2"; cost=7000
desc_en="Squash is a single use plant that destroys one tile of zombies."
desc_es="Apisonaflor es una planta de uso instantáneo que acaba con una casilla de zombis."
if global.niveles<31{color2=c_dkgray; image_alpha=0; confirm=false}else{image_alpha=1}
entext_lock = "Beat level 30 to unlock this plant."
estext_lock = "Supera el nivel 30 para desbloquear esta planta."
type=0
break

case 9:
entext="Torchwood"; estext="Plantorcha"; cond="plant3"; cost=7000
desc_en="Torchwood turns peas that pass through him into fireballs."
desc_es="Plantorcha transforma los guisantes que lo atraviesan en bolas de fuego."
if global.niveles<31{color2=c_dkgray; image_alpha=0; confirm=false}else{image_alpha=1}
entext_lock = "Beat level 30 to unlock this plant."
estext_lock = "Supera el nivel 30 para desbloquear esta planta."
type=0
break

case 10:
entext="Pickled Pepper#costume"; estext="Disfraz de#Pimiento"; cond="costume3"; cost=3000
desc_en="Jalapeno will destroy a column of zombies instead of row."
desc_es="Jalapeño destruirá una columna de zombis en lugar de una fila."
if global.niveles<47{color2=c_dkgray; image_alpha=0; confirm=false}else{image_alpha=1}
entext_lock = "Beat level 46 to unlock this costume."
estext_lock = "Supera el nivel 46 para desbloquear este disfraz."
type=1
break

case 12:
entext="Fire pea#costume"; estext="Disfraz de#Quemaguisantes"; cond="costume4"; cost=7000
desc_en="Peashooter will shoot fire peas."
desc_es="Lanzaguisantes disparará bolas de fuego."
if global.niveles<31{color2=c_dkgray; image_alpha=0; confirm=false}else{image_alpha=1}
entext_lock = "Beat level 30 to unlock this costume."
estext_lock = "Supera el nivel 30 para desbloquear este disfraz."
type=1
break

case 13:
entext="Wall-nut#first aid"; estext="Botiquín#de nueces"; cond="upgrade3"; cost=3000
desc_en="Fully repair damaged defensive plants by planting on top of them!"
desc_es="¡Repara completamente plantas defensivas plantando encima de ellas!"
type=2
if global.niveles<31{color2=c_dkgray; image_alpha=0; confirm=false}else{image_alpha=1}
entext_lock = "Beat level 30 to unlock this upgrade."
estext_lock = "Supera el nivel 30 para desbloquear esta mejora."
break

case 14:
entext="Shovel boost (1)"; estext="Mejora de pala (1)"; cond="upgrade4"; cost=5000
desc_en="Get an additional 20% of sun cost back when shoveling up plants!"
desc_es="¡Obten un 20% adicional de sol de vuelta cuando quites una planta!"
if global.niveles<52{color2=c_dkgray; image_alpha=0; confirm=false}else{image_alpha=1}
entext_lock = "Beat level 51 to unlock this upgrade."
estext_lock = "Supera el nivel 51 para desbloquear esta mejora."
type=2
break

case 15:
entext="Shovel boost (2)"; estext="Mejora de pala (2)"; cond="upgrade5"; cost=5500
desc_en="Get an additional 20% of sun cost back when shoveling up plants!"
desc_es="¡Obten un 20% adicional de sol de vuelta cuando quites una planta!"
if global.upgrade4==false{color2=c_dkgray; image_alpha=0; confirm=false}else{image_alpha=1}
entext_lock = "You may have to buy another upgrade to unlock this upgrade."
estext_lock = "Quizás tengas que comprar otra mejora para desbloquear esta mejora."
type=2
break

case 16:
entext="Snow king#costume"; estext="Disfraz de#Rey nevado"; cond="costume5"; cost=7000
desc_en="Snow Pea will shoot icy spikes that will pierce up to four zombies."
desc_es="Hielaguisantes disparará picos de hielo que atrevasarán hasta cuatro zombis."
if global.niveles<52{color2=c_dkgray; image_alpha=0; confirm=false}else{image_alpha=1}
entext_lock = "Beat level 51 to unlock this costume."
estext_lock = "Supera el nivel 51 para desbloquear este disfraz."
type=1
break

case 17:
entext="TF2 medic#costume"; estext="Disfraz de#médico TF2"; cond="costume6"; cost=5000
desc_en="Healer-Shroom will only heal two plants in front of it, but way faster."
desc_es="Seta Curandera sólo curará a dos plantas que tenga delante, pero mucho más rápido."
if global.plant1==0{color2=c_dkgray; image_alpha=0; confirm=false}else{image_alpha=1}
entext_lock = "You may have to buy another plant to unlock this costume."
estext_lock = "Quizás tengas que comprar otra planta para desbloquear este disfraz."
type=1
break

case 18:
entext="Golden Magnet#costume"; estext="Disfraz de#Magneto dorado"; cond="costume7"; cost=5000
desc_en="Magnet-Shroom won't need coffee bean at day and will have more range."
desc_es="Magnetoseta no necesitará grano de café en el día y tendrá más rango."
if global.niveles<66{color2=c_dkgray; image_alpha=0; confirm=false}else{image_alpha=1}
entext_lock = "Beat level 65 to unlock this costume."
estext_lock = "Supera el nivel 65 para desbloquear este disfraz."
type=1
break

case 19:
entext="Pumpkin"; estext="Calabaza"; cond="plant4"; cost=9000
desc_en="Pumpkins can be planted on top of other plants to provide a tough additional layer of armor."
desc_es="Calabaza se puede plantar sobre otras plantas para proveer una capa adicional de protección."
if global.niveles<62{color2=c_dkgray; image_alpha=0; confirm=false}else{image_alpha=1}
entext_lock = "Beat level 61 to unlock this plant."
estext_lock = "Supera el nivel 61 para desbloquear esta planta."
type=0
break
}

