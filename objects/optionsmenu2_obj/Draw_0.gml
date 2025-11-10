draw_self();
draw_set_font(pixelfont_fnt)
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text_ext_transformed_colour(x,y-64, string_hash_to_newline(controlmenu_obj.volevel), x, 1000, 0.8, 0.8, 0, cverdeoscuro, cverdeoscuro, cverdeoscuro, cverdeoscuro, 1);
draw_text_ext_transformed_colour(x,y-70, string_hash_to_newline(controlmenu_obj.volevel), x, 1000, 0.8, 0.8, 0, cverdeclaro, cverdeclaro, cverdeclaro, cverdeclaro, 1);

