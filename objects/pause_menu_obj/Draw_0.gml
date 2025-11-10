//DARK BACKGROUND
draw_set_alpha(0.35)
draw_rectangle_colour(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)

draw_self();
draw_set_valign(fa_middle)
draw_set_halign(fa_center)

//TEXT
if global.lang="es"{
    draw_set_font(yougotaprize_fnt)
    draw_text_ext_colour(x,y-164,string_hash_to_newline("Opciones"),32,440,c_dkgray,c_dkgray,c_dkgray,c_dkgray, 1)
    draw_text_ext_colour(x,y-160,string_hash_to_newline("Opciones"),32,440,c_white,c_white,c_white,c_white, 1)
    
    draw_set_font(plants_fnt)
    draw_text_ext_colour(x,y-100,string_hash_to_newline("Idioma"),32,440,c_dkgray,c_dkgray,c_dkgray,c_dkgray, 1)
    draw_text_ext_colour(x,y-20,string_hash_to_newline("Volumen general"),32,440,c_dkgray,c_dkgray,c_dkgray,c_dkgray, 1)
    draw_text_ext_colour(x-80,y+50,string_hash_to_newline("SFX"),32,440,c_dkgray,c_dkgray,c_dkgray,c_dkgray,1)
    draw_text_ext_colour(x+80,y+50,string_hash_to_newline("Música"),32,440,c_dkgray,c_dkgray,c_dkgray,c_dkgray,1)
    
    draw_set_colour(c_dkgray)
    if os_type!=os_android draw_text_ext_transformed(x,y+135,string_hash_to_newline("Pantalla completa"),16,440,0.75,0.75,0)
    draw_set_colour(c_white)
    
    draw_sprite(langen1_spr,0,x-62,y-67)
    draw_sprite(langes1_spr,1,x+62,y-67)
}else{
    draw_set_font(yougotaprize_fnt)
    draw_text_ext_colour(x,y-164,string_hash_to_newline("Options"),32,440,c_dkgray,c_dkgray,c_dkgray,c_dkgray,1)
    draw_text_ext_colour(x,y-160,string_hash_to_newline("Options"),32,440,c_white,c_white,c_white,c_white,1)
    
    draw_set_font(plants_fnt)
    draw_text_ext_colour(x,y-100,string_hash_to_newline("Language"),32,440,c_dkgray,c_dkgray,c_dkgray,c_dkgray,1)
    draw_text_ext_colour(x,y-20,string_hash_to_newline("Master volume"),32,440,c_dkgray,c_dkgray,c_dkgray,c_dkgray,1)
    draw_text_ext_colour(x-80,y+50,string_hash_to_newline("SFX"),32,440,c_dkgray,c_dkgray,c_dkgray,c_dkgray,1)
    draw_text_ext_colour(x+80,y+50,string_hash_to_newline("Music"),32,440,c_dkgray,c_dkgray,c_dkgray,c_dkgray,1)
    
    if os_type!=os_android draw_text_ext_colour(x,y+135,string_hash_to_newline("Fullscreen"),32,440,c_dkgray,c_dkgray,c_dkgray,c_dkgray,1)
    
    draw_sprite(langen1_spr,1,x-62,y-67)
    draw_sprite(langes1_spr,0,x+62,y-67)
}
//VOLUMEN
var c_l = make_colour_rgb(149,232,69)
var c_d = make_colour_rgb(114,214,51)

//draw_rectangle_colour(x-78,y+35-12,x+78,y+35+12,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false)

//GENERAL
draw_rectangle_colour(btn[6,0]-2,btn[6,1]-2,btn[6,2]+2,btn[6,3]+2,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false)

draw_healthbar(btn[6,0],btn[6,1],btn[6,2],btn[6,3],controlmenu_obj.volevel,c_dkgray,c_l,c_l,0,true,false)
draw_healthbar(btn[6,0],btn[6,1]+9,btn[6,2],btn[6,3],controlmenu_obj.volevel,c_dkgray,c_d,c_d,0,true,false)

draw_sprite(cabecitazombie_spr,0,x+(controlmenu_obj.volevel*(150/100))-75,btn[6,1]+9)

//SFX
draw_rectangle_colour(btn[7,0]-2,btn[7,1]-2,btn[7,2]+2,btn[7,3]+2,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false)

draw_healthbar(btn[7,0],btn[7,1],btn[7,2],btn[7,3],controlmenu_obj.sfxvol,c_dkgray,c_l,c_l,0,true,false)
draw_healthbar(btn[7,0],btn[7,1]+9,btn[7,2],btn[7,3],controlmenu_obj.sfxvol,c_dkgray,c_d,c_d,0,true,false)

draw_sprite(cabecitazombie_spr,0,x+controlmenu_obj.sfxvol-123,btn[7,1]+9)

//MUSIC
draw_rectangle_colour(btn[8,0]-2,btn[8,1]-2,btn[8,2]+2,btn[8,3]+2,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false)

draw_healthbar(btn[8,0],btn[8,1],btn[8,2],btn[8,3],controlmenu_obj.musicvol,c_dkgray,c_l,c_l,0,true,false)
draw_healthbar(btn[8,0],btn[8,1]+9,btn[8,2],btn[8,3],controlmenu_obj.musicvol,c_dkgray,c_d,c_d,0,true,false)

draw_sprite(cabecitazombie_spr,0,x+controlmenu_obj.musicvol+23,btn[8,1]+9)


//Pantalla completa
if os_type!=os_android{
    var fs_sz = 1
    
    if point_in_rectangle(mouse_x,mouse_y,btn[2,0],btn[2,1],btn[2,2],btn[2,3]){
        if mouse_check_button(mb_left) fs_sz=0.95 else fs_sz=1.05;
    }
    draw_sprite_ext(buttoncheck_spr,window_get_fullscreen(),x,y+182,fs_sz,fs_sz,0,c_white,1)
}

//RESUME BUTTON
var frm = 0;
if point_in_rectangle(mouse_x,mouse_y,btn[3,0],btn[3,1],btn[3,2],btn[3,3]){
    if mouse_check_button(mb_left) frm = 2 else frm = 1;//{draw_sprite(okbutton_spr,2,x,y+200)}else{draw_sprite(okbutton_spr,1,x,y+200)}
}

draw_sprite(okbutton_spr,frm,x,y+250)

//EXIT
var sz = 1
var h_ext = false//hold
if point_in_rectangle(mouse_x,mouse_y,btn[4,0],btn[4,1],btn[4,2],btn[4,3]){
    if mouse_check_button(mb_left){
        sz = 1
        var h_ext = true//hold
    }else{
        sz=1.05;
    }
}

draw_sprite_ext(volverniveles_spr,0,x-112,y+146,sz,sz,0,c_white,1)
if h_ext and prss_ext draw_sprite_ext(hold_spr,hold_ext,x-112,y+146,sz,sz,0,c_white,1)

//RESTART
sz = 1
h_ext = false//hold
if point_in_rectangle(mouse_x,mouse_y,btn[5,0],btn[5,1],btn[5,2],btn[5,3]){
    if mouse_check_button(mb_left){
        sz = 1
        var h_ext = true//hold
    }else{
        sz=1.05;
    }
}

draw_sprite_ext(reiniciar_spr,0,x+112,y+146,sz,sz,0,c_white,1)
if h_ext and prss_rst draw_sprite_ext(hold_spr,hold_rst,x+112,y+146,sz,sz,0,c_white,1)
/*
if ((room!=survival1_rm and room!=survival2_rm) or global.iniciogame=false or survcontrol_obj.current_progress<=0){
if point_in_rectangle(mouse_x,mouse_y,x-110-31,y+90-30,x-110+31,y+90+30){
if mouse_check_button(mb_left){draw_sprite_ext(volverniveles_spr,0,x-110,y+90,0.975,0.975,0,c_white,1)}
else{draw_sprite_ext(volverniveles_spr,0,x-110,y+90,1.025,1.025,0,c_white,1)}
}else{
draw_sprite_ext(volverniveles_spr,0,x-110,y+90,1,1,0,c_white,1)
}
}

if room!=survival1_rm and room!=survival2_rm{
if point_in_rectangle(mouse_x,mouse_y,x+110-31,y+90-30,x+110+31,y+90+30){
if mouse_check_button(mb_left){draw_sprite_ext(reiniciar_spr,0,x+110,y+90,0.975,0.975,0,c_white,1)}
else{draw_sprite_ext(reiniciar_spr,0,x+110,y+90,1.025,1.025,0,c_white,1)}
}else{
draw_sprite_ext(reiniciar_spr,0,x+110,y+90,1,1,0,c_white,1)
}
}
*//*
for(var i=0; i<array_height_2d(btn); i++){
    draw_rectangle(btn[i,0],btn[i,1],btn[i,2],btn[i,3],true)
}

286

237

*/
var _ext_txt = "Hold to exit"
var _rst_txt = "Hold to restart"

if global.lang = "es"{
    _ext_txt = "Mantén pulsado para salir"
    _rst_txt = "Mantén pulsado para reiniciar"
}

draw_set_font(plants_fnt)
draw_set_valign(fa_middle)
draw_set_halign(fa_right)
draw_text_colour(x - 190, y + 148, string_hash_to_newline(_ext_txt), c_dkgray, c_dkgray, c_dkgray, c_dkgray, ext_lph);
draw_text_colour(x - 190, y + 146, string_hash_to_newline(_ext_txt), c_white, c_white, c_white, c_white, ext_lph);
draw_set_halign(fa_left)
draw_text_colour(x + 190, y + 148, string_hash_to_newline(_rst_txt), c_dkgray, c_dkgray, c_dkgray, c_dkgray, rst_lph);
draw_text_colour(x + 190, y + 146, string_hash_to_newline(_rst_txt), c_white, c_white, c_white, c_white, rst_lph);


/* */
/*  */
