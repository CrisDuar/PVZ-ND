if audio_is_playing(credits_sng){
yy-=0.3
if _a>0 _a-=0.005
}else{
if _a<2 {_a+=0.05}else{instance_create(544,320,spacebearlogo_obj); room_goto(menu_rm_)}
}

if global.lang="en"{
t1=@"Plants Vs Zombies creators: 
Popcap games & Electronic arts 

PVZ ND Creator: 
Crisdevelop 

Coding (Game Maker Studio 1.4): 
Crisdevelop 

Art (Aseprite): 
Crisdevelop & Zevicke

SFX (Audacity): 
freesound.org
Soundsnap.com
PVZ sfx

Music: 
Frederi2000, Rossiter, Marineblue & Laura Shigihara

Beta testing (older versions):
P0ra, F3L1P3 LV
Local Plant Dealer, Longfanz
Poison, pou azul & Ralsei

Beta testing:
Ethantime, Koshak
Plovazo, Harbinger
Gray, Buckethead Gaming
Esqueleto-On-line, L1GHTN1NGF1GHT
Martinguy3000 & Purple guy (Kris)

Almanac collaborators:
Ethantime
Static
L1GHTN1NGF1GHT

Costume contests winners!
Snow King - Electro Bruh
Shepherd Levicotton - Milk chocolate cookie
Medic-Shroom - Raems

Special thanks to:
Wordeworl
Ethantime
Koshak
SpeedingGames44
Plovazo
George Fan
Yoyo games
Game maker Community
People from CrisDevlog discord server



And thank you very much for playing!"
}

if global.lang="es"{
t1=@"Creadores de Plantas Vs Zombis:
Popcap games y Electronic arts 

Creador de PVZ ND:
Crisdevelop

Código (Game Maker Studio 1.4):
Crisdevelop 

Arte (Aseprite): 
Crisdevelop y Zevicke

Efectos de sonido (Audacity): 
freesound.org
Soundsnap.com
PVZ sfx

Música: 
Frederi2000, Rossiter, Marineblue y Laura Shigihara

Beta testeo (versiones antiguas):
P0ra, F3L1P3 LV
Local Plant Dealer, Longfanz
Poison, pou azul & Ralsei

Beta testeo:
Ethantime, Koshak
Plovazo, Harbinger
Gray, Buckethead Gaming
Esqueleto-On-line, L1GHTN1NGF1GHT
Martinguy3000 & Purple guy (Kris)

Colaboradores con el almanaque:
Ethantime
Static
L1GHTN1NGF1GHT

¡Ganadores del concurso de disfraces!
Rey nevado - Electro Bruh
Pastor de algodón- Milk chocolate cookie
Seta médica - Raems

Gracias especiales a:
Wordeworl
Ethantime
Koshak
SpeedingGames44
Plovazo
George Fan
Yoyo games
La comunidad de Game maker
Las personas del servidor de discord CrisDevlog



¡Y muchas gracias a ti por jugar!"
}

