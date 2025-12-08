event_inherited();
image_alpha+=0.08

if (update_progress){
	if (read_progress(prizevar) >= lvl and replay==false){
		replay=true
		sprite_index=bolsa_monedas_spr
		money=round(money/2)
		plantroom=global.selectionRoom
	}
}