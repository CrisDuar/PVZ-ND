if os_type==os_android{
android=" (Android)"
}
else{
android=""
}

if beta==true{
betanum=" Beta 4"
}
else{
betanum=""
}

if __view_get( e__VW.XView, 0 )=0{
instance_deactivate_region(1088, 0, 1088, 640, true, true);
}else if __view_get( e__VW.XView, 0 )>=1088{
instance_activate_region(1088, 0, 1088, 640, true);
}

if instance_exists(deletewindow_obj){
if _a<1 _a+=0.05
}else{
if _a>0 _a-=0.1
}

