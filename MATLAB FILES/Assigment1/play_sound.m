function play_sound(app)
 global snd1 FS1 liste player1 value t sec len l repeat_var v listboxItems reverse;
            sec=0;
            app.PAUSEButton.Enable = 'on';
            app.STOPButton.Enable = 'on';
             app.PLAYButton.Enable = 'off';          
           if repeat_var==2
               value = listboxItems{v+1};
               app.listbox_playlist.Value = v+1;
           else
               value = listboxItems{v};
               disp(value);
           end           
           disp(get(app.listbox_playlist, 'Value')); 
             liste = strcat(cd,'\playlist\',value);
            disp( audioinfo(liste));
            app.Slider.Value=0;     
            [snd1,FS1]=audioread(liste);
            if reverse==2
                snd1=flipud(snd1);
                disp("Reverse");               
            end
              player1 = audioplayer(snd1, FS1);
              disp(1/FS1);
              play(player1);
            
           l=  length(snd1);
           disp(l);
           len=fix(l/FS1);
           app.Slider.Limits = [0 len];          
             t = timer;
             t.TimerFcn = @(~,~)updateEachSec(app,len,t);
             t.Period = 1;
            t.TasksToExecute = 1000;
            t.ExecutionMode = 'fixedRate';
               start(t);
              I = imread('background.jpg');        
               imshow(I, 'Parent', app.image_xs_2);
         
end

