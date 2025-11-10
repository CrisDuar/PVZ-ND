dialog_load(4)
/*///text1
song=robert_sng
close=6//num to close text

dialog("Buenas!",
"Hey there!",0,1,0)

dialog("Se nos ha hecho de tarde, ¿eh?",
"It's getting late, huh?",0,1,1)

dialog("El sol ya se está escondiendo, parece no pudo aguantar ver nuestra excelencia.",
"The sun is already hiding, it seems that he couldn't deal with our excellency.",0,1,2)

dialog("Creo que eso podría influir tus tropas",
"I think that could influence your troops",0,1,3)

if global.levelhard1>0{
dialog("Aunque creo que eso ya lo sabes.",
"Although I think you already know that.",0,1,4)
}else{
dialog("Sólo para tu información, con esta escasa luz solar apenas podrás poner plantas, pero no me agradezcas por avisarte.",
"Just for your info, with this little sunlight you will hardly be able to put plants, but don't thank me for warning you.",0,1,4)
}
dialog("Bueno, tengo cosas que hacer, como relajarme mientras tú tienes una guerra en frente de mi casa.",
"Well, I have things to do, like relax while you have a war in front of my house.",0,1,5)

dialog("Nos vemos'",
"See ya'",0,1,6)

dialog_end()