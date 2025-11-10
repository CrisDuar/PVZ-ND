event_inherited();
global.nivelterminado=true
image_alpha=0
rule_shadow=false

h=100

tp = 0.016

x3 = x+60
y3 = y

if x3>1060 x3=1060
if x3<300 x3=300

if y3>590 or y3<=10 {y1=336; y3=396}

prizevar="niveles"
lvl=0
money=0
snd=newplant_snd
plantroom=price_rm
replay=false

