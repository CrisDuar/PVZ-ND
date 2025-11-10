with(instance_create(x,y+50,explopotato_obj))
{
sprite_index=explopotato1_spr
speedlimit=1
}

with(instance_create(x,y+50,explopotato_obj))
{
sprite_index=explopotato2_spr
speedlimit=6.5
}
////
with(instance_create(x,y+50,parexplopotato_obj))
{
sprite_index=parexplosion2_spr
speedlimit=6.5
}
//////

with(instance_create(x,y+50,explopotato_obj))
{
sprite_index=explopotato3_spr
speedlimit=22.5
}

/////
with(instance_create(x,y+50,parexplopotato_obj))
{
sprite_index=parexplosion3_spr
speedlimit=22.5
}
//////////
instance_destroy();

