image_xscale=0.98
image_yscale=0.98
audio_play_sound(selectstone1_snd,1,false)

if os_type!=os_android{
execute_shell_simple("https://gamejolt.com/join")
}else{
url_open("https://gamejolt.com/join")
}

