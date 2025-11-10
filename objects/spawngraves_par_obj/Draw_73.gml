draw_set_font(f3_fnt)
draw_set_halign(fa_center)

draw_text(x,y-100, string_hash_to_newline("t: " + string(floor(time/60))))
draw_text(x,y-120, string_hash_to_newline("mT: " + string(floor(maxtime/60))))
draw_text(x,y-140, string_hash_to_newline("gH: " + string(horde) + "/" + string(zombispawn_obj.h)))
draw_text(x,y-160, string_hash_to_newline("cN: " + string(can_necro)))
draw_text(x,y-180, string_hash_to_newline("Dg: " + string(distance_to_object(gravedetect_obj))))

