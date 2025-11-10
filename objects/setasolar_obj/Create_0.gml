event_inherited();
cancoffee=true

t_sun=30*60
spr_idle=setasolar1_spr
spr_prod1=setasolarsun1_spr
spr_prod2=setasolarsun1_spr
spr_sleep=setasolarsleep_spr

//spr_idle=setasolar2_spr
//spr_prod=setasolarsun2_spr

if control_obj.night=false sleep=true;

t_grow=60*120
d_grow=false
done=false

with(logros_obj){
    no_fungus = false
    low_budget = false;
}

