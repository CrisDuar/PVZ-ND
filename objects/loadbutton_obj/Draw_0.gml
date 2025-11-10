draw_self();

draw_set_font(plants_fnt)
draw_set_valign(fa_middle)
draw_set_halign(fa_right)

var c = make_colour_rgb(135, 83, 39);

if global.lang=="es"{
    draw_text_ext_colour(4296,128,string_hash_to_newline("Estado de archivos:"),32,440,c,c,c,c,image_alpha)
    var txt = "N/A"
    if http_data[0,1]!= "0" txt = "Cargado"
    draw_text_ext_colour(4296,128+50,string_hash_to_newline("Archivo de guardado: " + txt),32,500,c,c,c,c,image_alpha)
    
    txt = "N/A"
    if http_data[1,1]!= "0" txt = "Cargado"
    draw_text_ext_colour(4296,128+100,string_hash_to_newline("Archivo de Supervivencia 1: " + txt),32,500,c,c,c,c,image_alpha)
    
    txt = "N/A"
    if http_data[2,1]!= "0" txt = "Cargado"
    draw_text_ext_colour(4296,128+150,string_hash_to_newline("Archivo de Supervivencia 2: " + txt),32,500,c,c,c,c,image_alpha)
    
    txt = "N/A"
    if http_data[3,1]!= "0" txt = "Cargado"
    draw_text_ext_colour(4296,128+200,string_hash_to_newline("Archivo de Supervivencia 3: " + txt),32,500,c,c,c,c,image_alpha)
}else{
    draw_text_ext_colour(4296,128,string_hash_to_newline("File status:"),32,440,c,c,c,c,image_alpha)
    var txt = "N/A"
    if http_data[0,1]!= "0" txt = "Loaded"
    draw_text_ext_colour(4296,128+50,string_hash_to_newline("Save file: " + txt),32,500,c,c,c,c,image_alpha)
    
    txt = "N/A"
    if http_data[1,1]!= "0" txt = "Loaded"
    draw_text_ext_colour(4296,128+100,string_hash_to_newline("Survival file 1: " + txt),32,500,c,c,c,c,image_alpha)
    
    txt = "N/A"
    if http_data[2,1]!= "0" txt = "Loaded"
    draw_text_ext_colour(4296,128+150,string_hash_to_newline("Survival file 2: " + txt),32,500,c,c,c,c,image_alpha)
    
    txt = "N/A"
    if http_data[3,1]!= "0" txt = "Loaded"
    draw_text_ext_colour(4296,128+200,string_hash_to_newline("Survival file 3: " + txt),32,500,c,c,c,c,image_alpha)
}



