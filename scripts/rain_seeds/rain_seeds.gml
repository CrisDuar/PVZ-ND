/// @description  rain_seeds()
function rain_seeds() {
	if global.nivelterminado=false{
	var packet=choose(
	menupea_obj,
	menusnpea_obj,
	menusingcherry_obj,
	menunut_obj,
	potatommenu_obj,
	menurepea_obj,
	menubulb_obj,
	menupuff_obj,
	menumiedica_obj,
	menufume_obj,
	menuicelettuce_obj,
	menupeanut_obj,
	melonslot_obj,
	guacodileslot_obj,
	rotinaboslot_obj,
	juncoslot_obj,
	setatoxicaslot_obj,
	levicottonslot_obj,
	oculartreeslot_obj
	)
	with(instance_create(random_range(350,980),random_range(90,200),packet)){type=3; alpha=1}
	}




}
