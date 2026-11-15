thing=0
cost=0
cond=""
lvl = 0;
estext = ""
entext = ""

estext_lock = "???"
entext_lock = "???"
text_lock="???"
confirm=false
cotext=""
timer=0
type=0; 
no=0
lock=""

locked_cond = "niveles"
locked_value = 0

text=""
image_speed=0
color = make_colour_rgb(135, 83, 39);
color2=c_green

show_desc=false

desc_en="Hey there, i'm the description of this thing"
desc_es="Buenas tardes, soy la descripción de este item"
desc=""

type=0


scroll=0
dx=0
drag=0
limit=200
draggin=false

alpha = 1


locked_msg_en = [
	function lck1() {return string("Beat level {0} to unlock this item.", lvl)},
	"You may have to buy another item to unlock this."
]

locked_msg_es = [
	function lck2() {return string("Supera el nivel {0} para desbloquear este objeto", lvl)},
	"Quizás tengas que comprar otro objeto para desbloquear este."
]
