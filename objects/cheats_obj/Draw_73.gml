draw_set_font(f3_fnt)
draw_set_halign(fa_right)
draw_set_valign(fa_top)
if toggle==true{
    var txt = "Cheats:#Adventure mode progress (M)#Hard mode progress (N, B, V, L)# Vasebreaker progress(Z)# Infinite sun (C)#No recharge time (X)#Kill all the zombies (Shift)#Skip a wave (Space bar)#Restart the game (F5)#Go to testroom(F6)#Change the language(F7)#Show hitboxes (f8)#get an achievement(f9)#restart achievements(f12)#Show graves debug(P)#Add 5000 money(K)#Create any object(J)#Change graphics(o)#Disable cheats(F10)"
}else{
    //var txt = "Enable cheats(F10)"
    var txt = ""
}

draw_text_colour_outline(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 ),txt,c_white,c_white,1,c_black,c_black,1,1,10,1,1,0)