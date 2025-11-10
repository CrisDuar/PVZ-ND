image_xscale=0.98
image_yscale=0.98
instance_create(x,y,fadeout_obj)
audio_play_sound(selectstone1_snd,1,false)
if global.version<1.1 global.version=ver
if file_exists("survival.ini"){
global.survprogress=0
file_delete("survival.ini")
}
//room_goto(survival1_rm)

