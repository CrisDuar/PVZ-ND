if instance_exists(quitwindow_obj)
{
instance_destroy(quitwindow_obj);
instance_destroy(yesquit_obj);
instance_destroy();
}

if instance_exists(deletewindow_obj)
{
instance_destroy(deletewindow_obj);
instance_destroy(yesdel_obj);
instance_destroy();
}

