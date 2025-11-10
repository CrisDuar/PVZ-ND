audio_stop_all();
instance_create(x,y,compcamara1_obj);
global.gameready=2
global.camexists=false
control_obj.vx=__view_get( e__VW.XView, 0 )
control_obj.vy=__view_get( e__VW.YView, 0 )
__view_set( e__VW.Object, 0, noone )
__view_set( e__VW.XView, 0, control_obj.vx )
__view_set( e__VW.YView, 0, control_obj.vy )
instance_destroy();
/*audio_play_sound(readyplant_snd,1,false)
instance_create(x,y,readysetplant_obj)
//y+=200

/* */
/*  */
