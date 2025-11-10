if (!load){
    load = true
    load_almanac(yy, units_id);
}


audio_play_sound(selectstone1_snd,1,false)
instance_create(x,y,fadeout_obj)
image_yscale=0.98
image_xscale=0.98
__view_set( e__VW.YView, 0, 640*page )

instance_activate_all()
//instance_activate_region(view_xview[0], view_yview[0], view_wview[0], view_hview[0], true)

