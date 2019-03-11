function audioremove_playlist(app)
      global listboxItems f liste p;
          % f=app.listbox_playlist.Value;
          f=listboxItems{app.listbox_playlist.Value};
       disp(f);
            cd ./playlist;
            delete(f);            
            cd ../;
            clear p;
            for p = 1 : numel(liste)   
        if strcmp(listboxItems{p},f)
      % if listboxItems{p}==f
            listboxItems(p)=[];
            app.listbox_playlist.Items=listboxItems;
    app.listbox_playlist.ItemsData=1:numel(app.listbox_playlist.Items);
            liste = dir(strcat(cd,'\playlist\*.wav'));
   
        end
            end
end

