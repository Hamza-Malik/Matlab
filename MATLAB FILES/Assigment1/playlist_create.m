function playlist_create(app)
  global new_path snd FS filename pathname full_path_playlist player;
             [filename, pathname]=uigetfile({'*.wav'},'File Selector');
         full_path_playlist=strcat(pathname,filename);
     
            [snd,FS]=audioread(full_path_playlist);
            cd ./playlist;
            disp(cd);
              new_path=strcat(cd,'\',filename);
                 audiowrite(new_path,snd,FS);
                 cd ../;
                 
end

