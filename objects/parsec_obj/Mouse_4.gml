audio_play_sound(selectstone1_snd,1,false)
image_yscale=0.98
image_xscale=0.98

if os_type!=os_android{
execute_shell_simple("https://parsec.app");
}else{
url_open("https://parsec.app");
/*clipboard_set_text("https://parsec.app");

if global.lang="en"{
with(instance_create(view_xview+view_xview/2,view_yview+500,damage_obj)){value="LINK COPIED TO CLIPBOARD!!!"}
}
if global.lang="es"{
with(instance_create(view_xview+view_xview/2,view_yview+500,damage_obj)){value="¡¡LINK COPIADO AL PORTAPAPELES!!"}
}*/
}

/* */
/*  */
