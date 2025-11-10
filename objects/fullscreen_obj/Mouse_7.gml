   if window_get_fullscreen()
      {
      //display_set_windows_alternate_sync(false)
      audio_play_sound(aceptoption_snd,1,false);
      window_set_fullscreen(false);
      }
   else
      {
      //display_set_windows_alternate_sync(false)
      audio_play_sound(aceptoption_snd,1,false);
      window_set_fullscreen(true);
      }

