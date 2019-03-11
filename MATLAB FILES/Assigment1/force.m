function force(app,x)

 global snd1 FS1 liste player1 value;
 value = app.listbox_playlist.Value;
             liste = strcat(cd,'\playlist\',value);
              snd_value= get(app.VolumeSlider,'value');
           speed_snd=get(app.SpeedSlider,'value');
           [snd1,FS1]=audioread(liste);
          pause(player1);
         NewStart=get(player1,'CurrentSample')+1;
         stop(player1);
            disp(audioinfo(liste)); 
            %disp(snd1.length);
            snd1=snd1(NewStart:end,:);
            left=snd1(:,1);
            right=snd1(:,2);
            if x==1
            force=[left,zeros(size(left))];
             player1 = audioplayer(force*snd_value,speed_snd*FS1);
              play(player1);
              plot(app.img,snd1,'g');
            elseif x==2
             %force=[right,zeros(size(right))];
              player1 = audioplayer(right*snd_value,speed_snd*FS1);
              play(player1);
              plot(app.img,snd1,'g');
            end
             
             

end