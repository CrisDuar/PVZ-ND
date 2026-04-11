var _prg = string(global.nota)//string(read_progress(global.price))
var _key = _prg + global.price;

if (ds_map_exists(global.notes, _key)){

	var _data = global.notes[? _key];
	show_debug_message(string(_data))

	t_en = _data[notes_data.TEXT_EN];
	f_en = _data[notes_data.SIGN_EN];
	
	t_es = _data[notes_data.TEXT_ES];
	f_es = _data[notes_data.SIGN_ES];

	bg = _data[notes_data.BG];
	
	font = asset_get_index(_data[notes_data.FONT]);

	if (_data[notes_data.LVL_ROUTE] != "<room>"){
		global.load_level = _data[notes_data.LVL_ID];
		global.load_route = _data[notes_data.LVL_ROUTE];
	    siguientenivel_obj.rm = generic_level_rm;
	}else{
		siguientenivel_obj.rm = asset_get_index(_data[notes_data.LVL_ID]);
	}
}

var lay_id = layer_get_id("BG_Background");
var back_id = layer_background_get_id(lay_id);

switch(bg){
	default:
		layer_background_sprite(back_id, pastonotadia_bg);
	break;
	
	case 1:
		layer_background_sprite(back_id, pastonotanoche_bg);
	break;
}
/*
if global.price=="niveles"{
    switch(global.nota){
        case 15:
            if global.lang="en"{
                t="Hallo, we are about to launch an all-out attack on your houze."
                f="Sincerely.#the Zombies"
            }

            if global.lang="es"{
                t="Estimado sesudo, vamos a asaltar su kasa esta tarde. Disculpe las molestiaz."
                f="Atentamente.#Los Zombis"
            }
            siguientenivel_obj.rm=nivel15_rm
        break

        case 22:
            if global.lang="en"{
                t="Good nigth, Is Dave around? Boss asks for his braiz. Thank you."
                f="Sincerely.#the Zombies"
            }
        
            if global.lang="es"{
                t="Buena noche, Esta un tal Dave? El jefe pregunta por su sesera. Grasias."
                f="Atentamente.#Los Zombis"
            }
            __background_set( e__BG.Index, 0, pastonotanoche_bg )
            siguientenivel_obj.rm=nivel22_rm
        break
        
        case 30:
            font=letter2_fnt
            if global.lang="en"{
                t="What a calm night, Don't you want to have a deathmatch with magic involved?"
                f="Sincerely.#Skeletarius"
            }
        
            if global.lang="es"{
                t="Que calmada noche, ¿No te gustaría tener un combate a muerte con magia involucrada?"
                f="Atentamente.#Skeletarius"
            }
            __background_set( e__BG.Index, 0, pastonotanoche_bg )
            siguientenivel_obj.rm=nivel30_rm
        break
        
        case 33:
            font=letter1_fnt
            if global.lang="en"{
                t="Dear alive, we cant fidn the bearded man in your house, so we will atack the whole neighborhod."
                f="Sincerely.#the Zombies :)"
            }
        
            if global.lang="es"{
                t="Estimado vivo, no encontramos al barbudo en su kasa, asi que atacaremos todo el vesindario."
                f="Atentamente.#Los zombies :)"
            }
            siguientenivel_obj.rm=nivel33_rm
        break
        
        case 51:
            font=letter3_fnt
            if global.lang="en"{
                t="Do you dare resist Dr. Zomboss's requests? Go prepare the water and the brains that I will pierce with my trident."
                f="I warn you.#Wet Brains"
            }
        
            if global.lang="es"{
                t="¿Osas resistirte a las peticiones del Dr. Zomboss? Ve preparando las aguas y los sesos que atravesaré con mi tridente."
                f="Te avierto.#Sesos Húmedos"
            }
            siguientenivel_obj.rm=nivel51_rm
        break
        
        case 59:
            font=letter1_fnt
            if global.lang="en"{
                t="We would like to sell these Z-CORP brand umbrellas in exchange of zome brainz. It'z a good deal, isn't it?"
                f="Sincerely.#the Zombies"
            }
        
            if global.lang="es"{
                t="Nos enkantaria venderte estos paraguas de marca Z-CORP a cambio de unos zerebros. Un buen trato, no?"
                f="Atentamente.#Los zombies"
            }
            __background_set( e__BG.Index, 0, pastonotanoche_bg )
            siguientenivel_obj.rm=nivel59_rm
        break
        
        case 70:
            font=letter4_fnt
            if global.lang="en"{
                t="The darkness is the way out."
                f="Sincerely.#---"
            }
        
            if global.lang="es"{
                t="La oscuridad es la salida."
                f="Sincerely.#---"
            }
            __background_set( e__BG.Index, 0, pastonotanoche_bg )
            siguientenivel_obj.rm=nivel70_rm
        break
        
        case 71:
            font=letter4_fnt
            if global.lang="en"{
                t="Join the dark side. We have cookies."
                f="Sincerely.#---"
            }
        
            if global.lang="es"{
                t="Únete al lado oscuro. Tenemos galletas."
                f="Atentamente.#---"
            }
            __background_set( e__BG.Index, 0, pastonotanoche_bg )
            siguientenivel_obj.rm=nivel71_rm
        break
        
        case 72:
            font=letter4_fnt
            if global.lang="en"{
                t="The Darkness is close. Do you by any chance like the theater?"
                f="Sincerely.#---"
            }
        
            if global.lang="es"{
                t="La Oscuridad se acerca. ¿De casualidad te gusta el teatro?"
                f="Atentamente.#---"
            }
            __background_set( e__BG.Index, 0, pastonotanoche_bg )
            siguientenivel_obj.rm=nivel72_rm
        break
        
        case 73:
            font=letter4_fnt
            if global.lang="en"{
                t="This is the end. It is here."
                f="Sincerely.#The Darkness"
            }
        
            if global.lang="es"{
                t="Este es el fin. Está aqui."
                f="Atentamente.#La Oscuridad"
            }
            __background_set( e__BG.Index, 0, pastonotanoche_bg )
            siguientenivel_obj.rm=nivel73_rm
        break
    }
}

