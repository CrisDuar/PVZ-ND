event_inherited();
//audio_play_sound(trashcan1_snd,1,false)
peso=1000
waitsprite=pileleaves_spr

canfreeze=false
canpoison=false
c_frost=c_white

vida=100
maxhp=100

x = instance_nearest(x, y, pastoinv_obj).x
y = get_closest_row(y)
//hurtsnd=baldehurt1_snd
//hurt2snd=baldehurt2_snd
/*image_alpha=0.5
depth=-y-25;
image_yscale=0.6
image_xscale=1.4
*/
hspeed=0
image_speed=0

n_imps = irandom_range(1, 3)

/* */
/*  */
