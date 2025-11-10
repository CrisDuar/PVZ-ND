if instance_exists(zombispawn_obj){
    lvl_es=zombispawn_obj.lvl_es
    lvl_en=zombispawn_obj.lvl_en
}

if global.iniciogame=true{
    if instance_exists(obj){
        bar=(obj.vida*100)/obj.maxhp
        hp = obj.vida
    }
}

