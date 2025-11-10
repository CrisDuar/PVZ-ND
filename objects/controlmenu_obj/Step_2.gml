//Ajustar el volumen
volevel=floor(volevel)
sfxvol=floor(sfxvol)
musicvol=floor(musicvol)

if save_t>0{
    save_t -= 1
}else{
    save_t=5*3600
    save_game();
}

if save_lph>0 save_lph--

