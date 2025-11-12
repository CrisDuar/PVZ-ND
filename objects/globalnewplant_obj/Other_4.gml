/// @description Sprites y descripciones

//ERROR MESSAGE
titleES="ERROR"
titleEN="ERROR"
textEN="Hey there, this is an error message, so if you're seeing this, report it!"
textES="Hola, este es un mensaje de error, así que si lo ves, reportalo!"
sprite_index=randomlocked_spr
siguientenivel_obj.rm=level1_sl_rm

//ERROR MESSAGE
if global.lang="en"{
t="Hey there, this is an error message, so if you're seeing this, report it!"
f="Sincerely.#The developer"
}

if global.lang="es"{
t="Hola, este es un mensaje de error, así que si lo ves, reportalo!"
f="Atentamente.#El desarrollador"
}


if global.price=="niveles"{
    switch(global.niveles){
        case 2:
            titleES="Girasol"
            titleEN="Sunflower"
            textEN="Sunflowers are essential for you to produce extra sun."
            textES="Los girasoles son esenciales para producir sol extra."
            sprite_index=sunflower_spr
            siguientenivel_obj.rm=nivel2_rm
        break

        case 3:
            titleES="Patatapum"
            titleEN="Potato Mine"
            textEN="Potato Mines explode on contact, but they take time to arm."
            textES="Patatapum explota al contacto, pero le toma un tiempo armarse."
            sprite_index=potatomine3_spr
            siguientenivel_obj.rm=nivel3_rm
        break
        
        case 4:
            titleES="Nuez"
            titleEN="Wall-Nut"
            textEN="Wall-Nuts have hard shells which you can use to protect your other plants."
            textES="Nuez tiene una cascara resistente que puedes usar para proteger otras plantas."
            sprite_index=nut1_spr
            siguientenivel_obj.rm=nivel4_rm_
        break
        
        case 6:
            titleES="Petacereza"
            titleEN="Cherry Bomb"
            textEN="Cherry Bomb can blow up all zombies in an 3x3 area."
            textES="Petacereza explota a todos los zombis en un área de 3x3."
            sprite_index=newplantcherry_spr
            siguientenivel_obj.rm=nivel6_rm
        break

        case 7:
            titleES="Hielaguisantes"
            titleEN="Snow Pea"
            textEN="Snow Pea fires frozen peas which slows down zombie speed."
            textES="Hielaguisantes dispara guisantes congelados que ralentizan a los zombis."
            sprite_index=snowpea_spr
            siguientenivel_obj.rm=nivel7_rm
        break

        case 8:
            titleES="Dronajo"
            titleEN="Garlic Drone"
            textEN="Garlic Drone shoots garlic cloves and can be planted on other plants."
            textES="Dronajo dispara dientes de ajo y puede ser plantado sobre otras plantas."
            sprite_index=garlicdrone_spr
            siguientenivel_obj.rm=nivel8_rm
        break

        case 10:
            titleES="Bulbo de Bolera"
            titleEN="Bowling Bulb"
            textEN="Bowling Bulb rolls shots that can bounce into multiple zombies."
            textES="Bulbo de Bolera dispara proyectiles que rebotan en múltiples zombis."
            sprite_index=bowlbulb_spr
            siguientenivel_obj.rm=nivel10_rm
        break

        case 11:
        case 62:
            prizeES="¡Conseguiste una MEJORA!"
            prizeEN="You got an UPGRADE!"
            titleES="Espacio extra"
            titleEN="Extra slot"
            textEN="Lets you choose another plant type every level!"
            textES="¡Te permite escoger una planta más en cada nivel!"
            sprite_index=moreslot_spr

            
            if global.niveles=62{
                siguientenivel_obj.rm=nivel62_rm
                clima=2
            }else{
                siguientenivel_obj.rm=nivel11_rm
                clima=0
            }
        break

        case 12:
            prizeES="¡Conseguiste un DISFRAZ!"
            prizeEN="You got a COSTUME!"
            titleES="Disfraz de Sombra verde"
            titleEN="Green Shadow costume"
            textEN="Makes your Peashooter more powerful, but also slower."
            textES="Hace a tu Lanzaguisantes más poderoso, pero también más lento."
            sprite_index=peadis1_spr
            siguientenivel_obj.rm=nivel12_rm
        break
        
        case 13:
            titleES="Repetidora"
            titleEN="Repeater"
            textEN="Repeater fires two peas at a time."
            textES="Repetidora dispara dos guisantes a la vez."
            sprite_index=repeater_spr
            siguientenivel_obj.rm=nivel13_rm
        break

        case 14:
            titleES="Almanaque Suburbano"
            titleEN="Suburban almanac"
            textEN="Keeps track of all plants, costumes and zombies you encounter. Check it from the main menu."
            textES="Realiza un seguimiento de todas las plantas, disfraces y zombis que encuentres. Revísalo desde el menú principal."
            sprite_index=newalmanac_spr
            siguientenivel_obj.rm=nivel14_rm
        break

        case 16:
            titleES="Seta Desesporada"
            titleEN="Puff-Shroom"
            textEN="Puff-Shrooms are short-range shooters that last for a limited time.#But they're free!"
            textES="Seta desesporada es un tirador de corto alcance y vida limitada.#¡Pero es gratis!"
            sprite_index=puffshroomsleep_spr
            siguientenivel_obj.rm=level2_sl_rm
            clima=1
        break

        case 17:
            titleES="Seta Solar"
            titleEN="Sun-Shroom"
            textEN="Sun-Shrooms give small sun at first and bigger sun later."
            textES="Seta Solar da poco sol al principio, luego producirá más."
            sprite_index=setasolar1_spr
            siguientenivel_obj.rm=nivel17_rm
            clima=2
        break

        case 18:
            titleES="Seta Miedica"
            titleEN="Scaredy-Shroom"
            textEN="Scaredy-Shrooms are long-ranged shooters that hide when enemies get near them."
            textES="Seta Miedica es un tirador de largo alcance. Se esconde si tiene enemigos cerca."
            sprite_index=setamiedica1_spr
            siguientenivel_obj.rm=nivel18_rm
            clima=2
        break

        case 19:
            titleES="Comepiedras"
            titleEN="Grave Buster"
            textEN="Plant Grave buster on graves to eliminate them."
            textES="Planta a Comepiedras sobre las lápidas para eliminarlas."
            sprite_index=comepiedras1_spr
            siguientenivel_obj.rm=nivel19_rm
            clima=2
        break
        

        case 20:
            prizeES="¡Conseguiste la TIENDA!"
            prizeEN="You got the SHOP!"
            titleES="La Tienda"
            titleEN="The Shop"
            textEN="Take a look to see if you like something."
            textES="Echa un vistazo a ver si algo te gusta."
            sprite_index=newshop_spr
            siguientenivel_obj.rm=level2_sl_rm
            clima=2
        break


        case 21:
            titleES="Humoseta"
            titleEN="Fume-Shroom"
            textEN="Fume-Shrooms shoot fumes that damage all zombies in an area."
            textES="Humoseta dispara humos que dañan a todos los zombis en un área."
            sprite_index=fumeshroom1_spr
            siguientenivel_obj.rm=nivel21_rm
            clima=2
        break
        
        case 23:
            titleES="Lechuga Iceberg"
            titleEN="Iceberg Lettuce"
            textEN="Iceberg Lettuces freeze a zombie when stepped on."
            textES="Lechuga Iceberg congela a un zombi cuando es pisada."
            sprite_index=icelettuce1_spr
            siguientenivel_obj.rm=nivel23_rm
            clima=2
        break

        case 24:
            titleES="Cacahuate"
            titleEN="Pea-Nut"
            textEN="Pea-Nuts can shoot peas and block zombies."
            textES="Cacahuate puede disparar guisantes y bloquear a los zombis."
            sprite_index=peanut1_spr
            siguientenivel_obj.rm=nivel24_rm
            clima=2
        break
        
        case 26:
            prizeES="¡Conseguiste un DISFRAZ!"
            prizeEN="You got a COSTUME!"
            titleES="Disfraz de Dronajo Oscuro"
            titleEN="Dark Garlic Drone costume"
            textEN="Garlic Drone will shoot 3 garlic cloves, but its cost will be higher."
            textES="Dronajo disparará 3 dientes de ajo, pero su costo será mayor."
            sprite_index=garlicds_spr
            siguientenivel_obj.rm=nivel26_rm
            clima=2
        break
        
        
        case 28://more sun #1 (night)
        case 48://more sun #2 (pool)
            prizeES="¡Conseguiste una MEJORA!"
            prizeEN="You got an UPGRADE!"
            titleES="Sol extra"
            titleEN="Extra sun"
            textEN="Start with 25 extra sun in the bank!"
            textES="¡Empieza con 25 de sol extra!"
            sprite_index=moresun_spr
            
            if global.niveles=28{
                siguientenivel_obj.rm=nivel28_rm
                clima=2
            }else{
                siguientenivel_obj.rm=nivel48_rm
                clima=1
            }
        break

        case 29:
            titleES="Grano de Café"
            titleEN="Coffee Bean"
            textEN="Wakes up the sleeping plants."
            textES="Despierta a las plantas que duermen."
            sprite_index=cafe1_spr
            siguientenivel_obj.rm=nivel29_rm
            clima=2
        break

        case 31:
            prizeES="¡FELICIDADES!"
            prizeEN="CONGRATULATIONS!"
            titleES="¡Has superado la primera casa!"
            titleEN="You have passed the first house!"
            textES="Con Skeletarius derrotado y la victoria sobre la mano, puedes continuar defendiendo la siguiente casa."
            textEN="With Skeletarius defeated and victory in hand, you can continue to defend the next house."
            sprite_index=trophy1_spr
            siguientenivel_obj.rm=level3_sl_rm
            clima=2
        break
        
        case 32:
            titleES="Nenúfar"
            titleEN="Lily Pad"
            textEN="Lily Pads let you plant non-aquatic plants on top of them."
            textES="Los Nenúfares te permiten plantar sobre el agua."
            sprite_index=nenufar_spr
            siguientenivel_obj.rm=nivel32_rm
            clima=3
        break
        
        case 34:
            titleES="Zampalga"
            titleEN="Tangle Kelp"
            textEN="Tangle Kelp are aquatic plants that pull the first zombie that nears them underwater."
            textES="Zampalga es una planta acuática que arrastra bajo el agua al primer zombie que encuentre."
            sprite_index=tanglekelp_spr
            siguientenivel_obj.rm=nivel34_rm
            clima=3
        break

        case 36:
            titleES="Narciso"
            titleEN="Narcissus"
            textEN="Narcissus shoots bubbles that stun the zombies. It can be planted on water and grass."
            textES="Narciso dispara burbujas que aturden a los zombis. Puede ser platando en agua y pasto."
            sprite_index=narciso1_spr
            siguientenivel_obj.rm=nivel36_rm
        break
        
        case 37:
            titleES="Rotinabo"
            titleEN="Rotobaga"
            textEN="Rotobagas shoot projectiles along the four diagonals."
            textES="Rotinabo dispara proyectiles hacia sus cuatro diagonales."
            sprite_index=rotinabo1_spr
            siguientenivel_obj.rm=nivel37_rm
        break
        
        case 39:
            titleES="Tripitidora"
            titleEN="Threepeater"
            textEN="Threepeaters shoot peas in three lanes if there are zombies in them."
            textES="Tripitidora dispara guisantes en tres carriles si hay zombis en ellos."
            sprite_index=tripitidora_spr
            siguientenivel_obj.rm=nivel39_rm
        break
        
        case 40:
            titleES="Hierba Lupa"
            titleEN="Magnifying Grass"
            textEN="Magnifying Grass turns sun into a bolt of colorful damage. Must be tapped to activate."
            textES="Hierba Lupa convierte el sol en un rayo dañino y colorido. Debe ser pulsada para accionarse."
            sprite_index=hierbalupa1_spr
            siguientenivel_obj.rm=nivel40_rm
        break

        case 42:
            titleES="Nuez Cáscara-rabias"
            titleEN="Tall-Nut"
            textEN="Tall-Nuts are heavy-duty wall plants that can't be vaulted or jumped over."
            textES="La Nuez Cáscara-rabias es muy dura de tratar e imposible de saltar."
            sprite_index=tallnut1_spr
            siguientenivel_obj.rm=nivel42_rm
        break
        
        case 43:
            titleES="Guacodrilo"
            titleEN="Guacodile"
            textEN="Guacodiles fire seeds from a distance. When attacked, they are able to rush off the lawn, biting any zombies they encounter."
            textES="Guacodrilo dispara semillas desde lejos. Podrá arrasar con los zombis que encuentre cuando lo atacan."
            sprite_index=guacodrilo1_spr
            siguientenivel_obj.rm=nivel43_rm
        break
        
        case 44:
            titleES="Sandía Seria"
            titleEN="Serious Watermelon"
            textEN="Serious Watermelon will deal more damage and be more likely to stun zombies that are closer to it."
            textES="La Sandía Seria hará daño y aturdirá a un zombi cuanto más se le acerque."
            sprite_index=melon1_spr
            siguientenivel_obj.rm=nivel44_rm
        break
        
        case 47:
            titleES="Jalapeño"
            titleEN="Jalapeno"
            textEN="Jalapenos destroy an entire row of zombies."
            textES="Jalapeño destruye una fila entera de zombis."
            sprite_index=jalapeno1_spr
            siguientenivel_obj.rm=nivel47_rm
            clima=1
        break
        
        case 52:
            prizeES="¡FELICIDADES!"
            prizeEN="CONGRATULATIONS!"
            titleES="¡Has superado la segunda casa!"
            titleEN="You have passed the second house!"
            textES="Sesos Húmedos se ha ahogado en su propio juego, ¿entiendes? ¿No? Como sea, puedes continuar defendiendo la próxima casa."
            textEN="Wet Brains has drowned in his own game, get it? No? Anyway, you can continue to defend the next house."
            sprite_index=trophy1_spr
            siguientenivel_obj.rm=level4_sl_rm
            clima=1
        break
        
        case 53:
            titleES="Junco Elétrico"
            titleEN="Lightning Reed"
            textEN="Lightning Reeds shoot lightning at the nearest zombie, up to one lane away. The bolt will then arc and hit other zombies."
            textES="Junco Eléctrico dispara rayos a los zombis cercanos en líneas adyacentes. La electricidad puede conducirse a otros zombis, dañándolos."
            sprite_index=junco1_spr
            siguientenivel_obj.rm=nivel53_rm
            clima=2
        break
        
        case 54:
            titleES="Seta Tóxica"
            titleEN="Toxic-Shroom"
            textEN="Toxic-Shrooms can poison all zombies in an 3x3 area."
            textES="Seta Tóxica envenena a todos los zombis en un área de 3x3."
            sprite_index=setatoxica_spr
            siguientenivel_obj.rm=nivel54_rm
            clima=2
        break
        
        case 55:
            prizeES="¡Conseguiste un DISFRAZ!"
            prizeEN="You got a COSTUME!"
            titleES="Marseta"
            titleEN="Sea-Shroom"
            textEN="Allows Puff-Shrooms to be planted in water, but it will disappear faster."
            textES="Permite plantar en el agua a Seta Desesporada, pero esta desaparecerá más rápido."
            sprite_index=marseta1_spr
            siguientenivel_obj.rm=nivel55_rm
            clima=2
        break
        
        case 56:
            titleES="Flotalgodón"
            titleEN="Levicotton"
            textEN="Levicottons shoot cottons that can knock back zombies."
            textES="Flotalgodón lanza algodones que empujan a los zombis."
            sprite_index=levicotton1_spr
            siguientenivel_obj.rm=nivel56_rm
            clima=2
        break
        
        case 57:
            titleES="Planterna"
            titleEN="Plantern"
            textEN="Planterns light up an area, letting you see through fog, darkness, and boxes."
            textES="Planterna ilumina el área, dejándote ver a través de la niebla, la oscuridad y las cajas."
            sprite_index=plantern_spr
            siguientenivel_obj.rm=nivel57_rm
            clima=2
        break
        
        case 58:
            titleES="Ajo"
            titleEN="Garlic"
            textEN="Garlic diverts zombies into other lanes."
            textES="Ajo desvía zombis a otras líneas."
            sprite_index=garlic1_spr
            siguientenivel_obj.rm=nivel58_rm
            clima=2
        break
        
        case 60:
            titleES="Ojo Frondoso"
            titleEN="Oakular"
            textEN="Oakulars create floating eyes to attack zombies in their lane. Then, these eyes can still attack zombies nearby."
            textES="Ojo Frondoso crea ojos voladores que atacan a los zombis en su línea. Luego, estos ojos pueden atacar otros zombis cercanos."
            sprite_index=oculartree1_spr
            siguientenivel_obj.rm=nivel60_rm
            clima=2
        break
        
        case 61:
            titleES="Peraléctrica"
            titleEN="Zapear"
            textEN="Zapears shoot piercing lightnings at zombies vertically."
            textES="Peraléctrica dispara rayos perforantes a los zombis verticalmente."
            sprite_index=electripear0_spr
            siguientenivel_obj.rm=nivel61_rm
            clima=2
        break
        
        case 64:
            titleES="Morfoseta"
            titleEN="Morpho-Shroom"
            textEN="Morpho-Shrooms shoot magic spells that create powerful mushrooms out of defeated zombies which disappear after some time."
            textES="Morfoseta dispara hechizos mágicos que crean poderosas setas de los zombis derrotados las cuales desaparecen después de un tiempo."
            sprite_index=morfoseta1_spr
            siguientenivel_obj.rm=nivel64_rm
            clima=2
        break
        
        case 65:
            titleES="Trebolador"
            titleEN="Blover"
            textEN="Blovers clear fog and push all zombies away."
            textES="Trebolador elimina la niebla y empuja a todos los zombis."
            sprite_index=blover1_spr
            siguientenivel_obj.rm=nivel65_rm
            clima=2
        break
        
        case 66:
            titleES="Magnetoseta"
            titleEN="Magnet-Shroom"
            textEN="Magnet-Shrooms remove metal objects from zombies."
            textES="Magnetoseta atrae los objetos metálicos de los zombis, quitándoselos."
            sprite_index=magnet1_spr
            siguientenivel_obj.rm=nivel66_rm
            clima=2
        break
        
        case 68:
            titleES="Chile Fantasma"
            titleEN="Ghost Pepper"
            textEN="Ghost Peppers haunt zombies that pass by and explode after a limited time."
            textES="Chile Fantasma atormenta a los zombis que pasan y explota después de un tiempo."
            sprite_index=ghostpepper1_spr
            siguientenivel_obj.rm=nivel68_rm
            clima=2
        break
        
        case 74:
            prizeES="¡FELICIDADES!"
            prizeEN="CONGRATULATIONS!"
            titleES="¡Has superado la tercera casa!"
            titleEN="You have passed the third house!"
            textES="¡La oscuridad ha cedido ante tus tropas vegetales! Puedes continuar defendiendo la próxima casa."
            textEN="The darkness has given in to your plant troops! You can continue to defend the next house."
            sprite_index=trophy1_spr
            siguientenivel_obj.rm=level4_sl_rm
            clima=2
        break
    }
}

if global.price=="levelhard1"{
    switch(global.levelhard1){
        case 3:
            titleES="Birasol"
            titleEN="Twin Sunflower"
            textEN="Twin Sunflowers give more sun as a regular sunflower."
            textES="Birasol da más sol que un girasol común."
            sprite_index=birasol1_spr
            siguientenivel_obj.rm=levelhard1_4_rm
            clima=1
        break
        
        case 6:
            titleES="Explotonuez"
            titleEN="Explode-O-Nut"
            textEN="Explode-O-Nuts provide protection, and when their shells are eaten, they explode."
            textES="Explotonuez provee protección. Cuando es comida, explota."
            sprite_index=explodenut1_spr
            siguientenivel_obj.rm=hardmode_day_rm
            clima=1
        break
    }
}

if global.price=="levelhard2"{
    switch(global.levelhard2){
        case 3:
            titleES="Seta plasmática"
            titleEN="Plasma-Shroom"
            textEN="Shoots plasma balls in eight directions. Must be tapped to activate."
            textES="Dispara bolas de plasma en ocho direcciones. Debe ser pulsada para accionarse."
            sprite_index=setaplasma1_spr
            siguientenivel_obj.rm=levelhard2_4_rm
            clima=2
        break
            
        case 6:
            titleES="Florecimiento Dorado"
            titleEN="Gold Bloom"
            textEN="Gold Blooms produce a small burst of sun all at once, causing each zombie in a 3x3 area to drop extra sun."
            textES="Florecimiento Dorado produce una pequeña ráfaga de sol al plantarse, pero cada zombi en un área de 3x3 soltará sol extra."
            sprite_index=goldbloom1_spr
            siguientenivel_obj.rm=hardmode_night_rm
            clima=2
        break
    }
}

if global.price=="levelhard3"{
    switch(global.levelhard3){
        case 3:
            titleES="Planta Carnívora"
            titleEN="Chomper"
            textEN="Chompers can devour a zombie whole, or shoot goop at them. They are vulnerable while chewing."
            textES="Planta Carnívora puede comerse a un zombi entero, o dispararles pringue. Es vulnerable mientras mastica."
            sprite_index=chomper1_spr
            siguientenivel_obj.rm=levelhard3_4_rm
            clima=2
        break    
    
        case 6:
            titleES="Rabo de Gato"
            titleEN="Cattail"
            textEN="Cattails can attack any lane and shoot down balloon zombies."
            textES="Rabo de Gato puede atacar a cualquier línea y derribar a los zombis con globo."
            sprite_index=cattail1_spr
            siguientenivel_obj.rm=hardmode_pool_rm
            clima=2
        break
    }
}

if global.price=="levelhard4"{
    switch(global.levelhard4){
        case 3:
            titleES="Belladona"
            titleEN="Deadly Nightshade"
            textEN="Deadly Nightshade shoots two poisonous projectiles at the first and last zombie in its row."
            textES="Belladona dispara dos proyectiles venenosos dirigidos al primer y último zombi en su fila."
            sprite_index=nightshade1_spr
            siguientenivel_obj.rm=levelhard4_4_rm
            clima=2
        break    
    
        case 6:
            titleES="Petaseta"
            titleEN="Doom-Shroom"
            textEN="Doom-Shrooms destroy everything in a large area and leave a crater that can't be planted on. Coffee Bean is required."
            textES="Petaseta destruye todo una gran área y deja un cráter en el que no podrás plantar. Necesita Grano de Café."
            sprite_index=petaseta1_spr
            siguientenivel_obj.rm=hardmode_claire_rm
            clima=2
        break
    }
}

if global.price=="vasebreaker"{
    switch(global.vasebreaker){
        case 6:
            titleEN="Cotton Shepherd"
            titleES="Pastor del Algodón"
            textEN="Levicotton will throw cotton sheeps twice. Large cotton will be more common."
            textES="Flotalgodón lanzará ovejas de algodón dos veces. El algodón grande será más común."
            sprite_index=levicottonc1_spr
            siguientenivel_obj.rm=vase_sl_rm
            clima=2
        break
    }
}

///FONDOS
switch(clima){
    default://DÍA
        __background_set( e__BG.Index, 0, cielo_bg )
        __background_set( e__BG.Index, 1, nubes_bg )
        __background_set( e__BG.Index, 2, pastodia_bg )
    break
    
    case 1://TARDE
        __background_set( e__BG.Index, 0, cielo3_bg )
        __background_set( e__BG.Index, 1, nubes2_bg )
        __background_set( e__BG.Index, 2, pastodia_bg )
    break
    
    case 2://NOCHE
        __background_set( e__BG.Index, 0, cielo4_bg )
        __background_set( e__BG.Index, 1, estrellas_bg )
        __background_set( e__BG.Index, 2, pastonoche_bg )
    break
    
    case 3://PISCINA
        __background_set( e__BG.Index, 0, cielo_bg )
        __background_set( e__BG.Index, 1, nubes_bg )
        __background_set( e__BG.Index, 2, pastoaguadia_bg )
    break
}

