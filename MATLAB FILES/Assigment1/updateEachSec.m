function updateEachSec(app,len,t)
global snd1 sec player1 FS1 N;
sec=sec+1;
N = length(snd1);
slider_val=app.Slider.Value;
if slider_val==len
    stop(player1)
stop(t);
repeat_playlist(app);
else
    app.Slider.Value=sec;   
 plot(app.img,snd1((FS1*(sec-1))+1:(FS1*sec),:),'g');
    disp(length(snd1((FS1*(sec-1))+1:(FS1*sec),:)));
end

end
