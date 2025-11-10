//to edit
show=false
estxt[0]=""//textos en español[]
entxt[0]=""//textos en inglés[]
img[0]=0//img index
font=splashtext_fnt
close=0//num to close text

song=music_mainmenu_snd
playsong[0]=true
//---------------------------------
tml[0]=-1
timeline=-1
num=0
yy=room_height*2
sinyy=0
yy2=1
cut_t = 30

ysc=1
xsc=1

//MOTION STATES
mot_st[0,0]=-1//type
mot_st[0,1]=-1//value
//pendulum
mot[0]=0
angle=0
angle_sin=0
//shakes
mot[1]=0

spr = character_spr
/*
if room!=testroom_rm{
    audio_play_sound(music_chooseseeds_snd,1,true)
    instance_destroy();
}

//dialog

/* */
/*  */
