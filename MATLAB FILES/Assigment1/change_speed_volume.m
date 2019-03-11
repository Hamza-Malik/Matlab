function change_speed_volume(app)
global snd2 FS2 liste player1 speed_snd2 snd_value2 vol_var reverse;
if vol_var==1
              
     value = app.listbox_playlist.Value;
               snd_value2= get(app.VolumeSlider,'value');
         
elseif vol_var==2
     
                snd_value2= 0;
end

  
           speed_snd2=get(app.SpeedSlider,'value');
          pause(player1);
          NewStart=get(player1,'CurrentSample')-1;
         stop(player1);
          [snd2,FS2]=audioread(liste);
          snd2=snd2(NewStart:end,:);  
          if reverse==2
              snd2= flipud(snd2);
          end
          
          
           player1=audioplayer(snd2*snd_value2,speed_snd2*FS2);
           play(player1);
           plot(app.img,snd2,'b');
           
end