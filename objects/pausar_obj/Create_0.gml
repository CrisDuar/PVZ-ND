if control_obj.multijugador=false{x=1040}
else{x=__view_get( e__VW.XView, 0 )+420}
x2=x
y2=y
xdraw=1040
ydraw=48
if control_obj.multijugador=true{
xdraw=544
ydraw=40
}
audio_stop_sound(music_levelselection_snd)

