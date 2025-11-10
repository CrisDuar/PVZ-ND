delete_costumes();

//Press here button
cont=false
cont_txt = ""
cont_len = 0
image_alpha=0

if instance_exists(boss1_obj)
or instance_exists(boss2_obj)
or instance_exists(boss3_obj)
or instance_exists(vasectrl_obj){
    cont=true
}

if control_obj.multijugador=false{
    x=579
    y=16
}else{
    x=700
    y=16
}

reverse=0

if control_obj.multijugador==true cont=true
spawnselect=false
levelallowed=false
global.camexists=0
global.gameready=false
global.iniciogame=false
global.iniciomusica=false

if room != nivel1_rm
and room != nivel2_rm
and room != nivel4_rm_
and room != nivel9_rm_
and room != nivel15_rm
and room != nivel18_rm
and room != multiplayer1_rm
and room != levelhard1_3_rm
and room != levelhard1_5_rm
and room != nivel24_rm
and room != nivel26_rm
and room != nivel30_rm
and room != levelhard2_6_rm
and room != nivel31_rm
and room != nivel37_rm
and room != nivel40_rm
and room != nivel44_rm
and room != nivel48_rm
and room != nivel49_rm
and room != nivel51_rm
and room != nivel56_rm
and room != nivel59_rm
and room != nivel63_rm
and room != nivel67_rm
and room != nivel72_rm
and room != nivel73_rm
//and room != testroom_rm
and room != levelhard3_3_rm
and room != levelhard3_6_rm
//and room != levelhard4_5_rm
and room != levelhard4_6_rm
and !instance_exists(vasectrl_obj)
{levelallowed=true}
create_preselected()

if control_obj.multijugador=true{
if global.vsgamemode=1{levelallowed=true}}

if global.niveles>=6 and levelallowed==true{
spawnselect=true
}

