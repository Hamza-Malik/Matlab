function audio_setting(app)
 global snd1 FS1 full_path_sound1 player1;
             
              if isempty(full_path_sound1)
              message = sprintf('File hazard! Sound 1 Path Is Empty.');
              uialert(app.UIFigure  ,message,'Error',...
                'Icon','error');
              else
              [snd1,FS1]=audioread(full_path_sound1);
              player1 = audioplayer(snd1, FS1);
              play(player1);
               showgraphfirst(app,snd1,1);
              end
end