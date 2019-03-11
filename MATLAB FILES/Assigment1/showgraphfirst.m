function showgraphfirst(app,snd,index)
if index==1
plot(app.first_sound_graph,snd);

elseif index==2
     plot(app.second_sound_graph,snd,'b');   
    
     
    else
        
        plot(app.mix_sound_graph,snd)
        
end
end