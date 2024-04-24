function onEvent(name, value1, value2)
    if name == "Change Playback Speed" then
        setProperty('playbackRate', value1)
    end
end


 