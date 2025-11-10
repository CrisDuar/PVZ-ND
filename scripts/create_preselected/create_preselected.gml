function create_preselected() {
	if !instance_exists(ctrlcinta1_obj) and !instance_exists(rainseed_obj) and !instance_exists(vasectrl_obj){
		instance_create(129,35,menusol_obj)
		if control_obj.multijugador==true instance_create(x+626,35,menuzom_obj)
	}
	/*
	switch(room){
	case nivel1_rm:
	manual_preselected(0,menupea_obj)
	break

	case nivel2_rm:
	manual_preselected(0,menusun_obj,menupea_obj)
	break

	case nivel3_rm:
	manual_preselected(0,menusun_obj,menupea_obj,potatommenu_obj)
	break

	case nivel5_rm:
	manual_preselected(0,menusun_obj,menupea_obj,potatommenu_obj,menunut_obj)
	break

	case nivel6_rm:
	manual_preselected(0,menusun_obj,menupea_obj,potatommenu_obj,menunut_obj,cherrymenu_obj)
	break

	case levelhard1_3_rm:
	manual_preselected(0,garlicdroneslot_obj,menunut_obj,menupea_obj,cherrymenu_obj)
	break

	case levelhard1_5_rm:
	manual_preselected(0,menupea_obj,garlicdroneslot_obj,potatommenu_obj,menusingcherry_obj,menunut_obj)
	break

	case nivel18_rm:
	manual_preselected(0,menumiedica_obj,menumiedica_obj,menumiedica_obj,garlicdroneslot_obj,menunut_obj,menusnpea_obj)
	break

	case nivel24_rm:
	manual_preselected(0,menusingcherry_obj,menusetahielo_obj,menugravebuster_obj)
	break

	case nivel31_rm:
	manual_preselected(0,menusun_obj,menupea_obj,potatommenu_obj,garlicdroneslot_obj,menunut_obj,lilyslot_obj)
	break

	case nivel44_rm:
	manual_preselected(0,menusun_obj, melonslot_obj, tallnutslot_obj, potatommenu_obj, kelpslot_obj, lilyslot_obj)
	break

	case nivel49_rm:
	manual_preselected(0,gw_gatling_obj,gw_explo_obj,gw_threepea_obj,menupea_obj,plantorchaslot_obj,menunut_obj)
	break

	case nivel56_rm:
	manual_preselected(0,menupuff_obj,menumiedica_obj,levicottonslot_obj,menupeanut_obj,setatoxicaslot_obj,potatommenu_obj)
	break

	case nivel63_rm:
	manual_preselected(0,menunut_obj)
	break

	case testroom_rm:
	manual_preselected(0,menusun_obj,menufume_obj,menucafe_obj,potatommenu_obj,cabbageslot_obj,menunut_obj,guacodileslot_obj, kernelslot_obj)
	break

	case levelhard4_5_rm:
	manual_preselected(0,menusetasolar_obj,menupuff_obj,oculartreeslot_obj,garlicdroneslot_obj,bloverslot_obj)
	break

	case levelhard4_6_rm:
	manual_preselected(0,menusetasolar_obj, menupuff_obj, morfosetaslot_obj, lilyslot_obj, bloverslot_obj, petasetaslot_obj, menucafe_obj)
	break
	}
*/

}
